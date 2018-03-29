package com.yyq.oa.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yyq.oa.pojo.BaseJson;
import com.yyq.oa.pojo.TaskInfo;
import com.yyq.oa.service.UserService;
import com.yyq.oa.utils.JsonUtils;
import com.yyq.oa.utils.Lg;
import com.yyq.oa.utils.ShiroUtils;
import com.yyq.oa.vo.DataGridResult;
import com.yyq.oa.vo.MyTask;
import org.activiti.engine.IdentityService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.activiti.engine.task.TaskQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class StartProcessController {
    
    @Autowired
    private RuntimeService runtimeService;
    
    @Autowired
    private IdentityService identityService;
    
    @Autowired
    private TaskService taskService;
    
    @Autowired
    private RepositoryService repositoryService;
    
    @Resource
    private UserService userService;
    
    @RequestMapping("/task/index")
    public ModelAndView idnex() {
//        Lg.log("(String) session.getAttribute(\"userID\")", session.getAttribute("userID"));
        ModelAndView modelAndView = new ModelAndView();
        TaskQuery taskQuery = taskService.createTaskQuery();
//        String userId = (String) session.getAttribute("userID");
        com.yyq.oa.pojo.User user = ShiroUtils.getUser();
        Lg.log("user", user);
        String userId = ShiroUtils.getUserId();
        Lg.log("userId", userId);
        //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//        userId = "admin";
        List<Task> list = taskQuery.taskAssignee(userId).list();
        Lg.log("list", list);
        modelAndView.setViewName("task/index");
        modelAndView.addObject("list", list);
        return modelAndView;
    }
    
    /**
     * 分页查询(完成)
     *
     * @param offset
     * @param limit
     * @return
     */
    @ResponseBody
    @RequestMapping("/task/list")
    public DataGridResult list(int offset, int limit) {
        PageHelper pageHelper = new PageHelper();
        pageHelper.startPage(offset, limit);//开始分页
        
        TaskQuery taskQuery = taskService.createTaskQuery();
        String userId = ShiroUtils.getUserId();
        List<Task> list = taskQuery.taskAssignee(userId).list();
        List<MyTask> list2 = new ArrayList<>();
        for (Task task : list) {
            MyTask myTask = new MyTask();
            myTask.setName(task.getName());
            myTask.setAssignee(task.getAssignee());
            myTask.setCategory(task.getCategory());
            myTask.setCreateTime(task.getCreateTime());
            myTask.setOwner(task.getOwner());
            myTask.setId(task.getId());
            list2.add(myTask);
        }
        PageInfo<MyTask> pageInfo = new PageInfo<>(list2);//获取分页信息
        
        Long total = pageInfo.getTotal();//获取总条数
        Lg.log("list", list2);
        
        DataGridResult dataGridResult = new DataGridResult(list2, total);
        return /*JsonUtils.objectToJson(list)*/ dataGridResult;
    }
    
    /**
     * 新建 task--> borrow leave
     * 整合thymeleaf
     *
     * @return
     */
    @RequestMapping(path = "/task/open", params = "leave")
    public ModelAndView leave() {
        ModelAndView modelAndView = new ModelAndView();
        List<ProcessDefinition> procdef = repositoryService.createProcessDefinitionQuery().list();
        modelAndView.addObject("procdef", procdef);
        modelAndView.addObject("key", "leave");
        modelAndView.addObject("url", "/task/doStart.action?");
        modelAndView.addObject("title", "填写请假流程: ");
        modelAndView.addObject("label_1", "请假人名字: ");
        modelAndView.addObject("label_2", "指定办理人: ");
        modelAndView.addObject("label_3", "请假时间: ");
        modelAndView.addObject("label_4", "请假原因: ");
        modelAndView.addObject("userId", ShiroUtils.getUserId());
        
        modelAndView.setViewName("user/leave");
        //TODO 用自己的service 查询用户 查询对应管理岗,查询上级
        List<String> userNameList = userService.getManagerUserNameList();
        
        modelAndView.addObject("userNameList", userNameList);
        Lg.log("StartProcessController-opentask", modelAndView);
        return modelAndView;
    }
    
    /**
     * 新建 task--> borrow leave
     * 整合thymeleaf
     *
     * @return
     */
    @RequestMapping(path = "/task/open", params = "borrow")
    public ModelAndView borrow() {
        ModelAndView modelAndView = new ModelAndView();
        List<ProcessDefinition> procdef = repositoryService.createProcessDefinitionQuery().list();
        //到时候这些文字表述,从数据库获取
        //modelAndView.addObject("procdef", procdef);
        modelAndView.addObject("key", "borrow");
        modelAndView.addObject("url", "/task/doStart.action?");
        modelAndView.addObject("title", "填写借款流程: ");
        modelAndView.addObject("label_1", "借款人名字: ");
        modelAndView.addObject("label_2", "指定办理人: ");
        modelAndView.addObject("label_3", "借款金额: ");
        modelAndView.addObject("label_4", "借款原因: ");
        modelAndView.addObject("userId", ShiroUtils.getUserId());
        modelAndView.setViewName("user/leave");
        
        List<String> userNameList = userService.getManagerUserNameList();
        modelAndView.addObject("userNameList", userNameList);
        Lg.log("StartProcessController-opentask", modelAndView);
        return modelAndView;
    }
    
    /**
     * 开启
     *
     * @param taskinfo
     * @param key
     * @param session
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/task/doStart", produces = {"text/plain;charset=utf-8"})
    public String submitTask(TaskInfo taskinfo, String key, HttpSession session) {
        /*TaskInfo taskInfo = taskService.getVariable(taskid, "var", TaskInfo.class);
        taskInfo.setAssignee(taskinfo.getAssignee());*/
        Lg.log("taskInfo", taskinfo);
        TaskQuery taskQuery = taskService.createTaskQuery();
        Map<String, Object> map = new HashMap<>();
        map.put("user", taskinfo.getAssignee());
        map.put("var", taskinfo);
        ProcessInstance startProcessInstance = runtimeService.startProcessInstanceByKey(key, map);
        String taskid = taskQuery.executionId(startProcessInstance.getId()).singleResult().getId();
        taskService.setOwner(taskid, ShiroUtils.getUserId());
        taskService.complete(taskid, map);
        return JsonUtils.objectToJson(BaseJson.setOK("申请成功"));
    }
    
    /**
     * 查看
     * 根据key 从数据库查询页面信息,写到通用模板
     *
     * @param id
     * @return
     */
    @RequestMapping("/task/view")
    public ModelAndView view(String id) {
        ModelAndView modelAndView = new ModelAndView();
        TaskInfo taskInfo = taskService.getVariable(id, "var", TaskInfo.class);
        Lg.log("taskInfo", taskInfo);
        
        modelAndView.addObject("taskInfo", taskInfo);
        modelAndView.addObject("id", id);
        modelAndView.addObject("key", taskInfo.getKey());//prodef
        //TODO 用模板引擎动态生成
        if (taskInfo.getKey().startsWith("borrow")) {
            modelAndView.addObject("name", "借款人");
            modelAndView.addObject("money", "借款金额");
            modelAndView.addObject("reason", "借款原因");
        } else {
            modelAndView.addObject("name", "请假人");
            modelAndView.addObject("money", "请假时间");
            modelAndView.addObject("reason", "请假原因");
        }
        
        // TODO 从数据库查办理人 上级
        
        List<String> userNameList = userService.getManagerUserNameList();
        modelAndView.addObject("userNameList", userNameList);
        
        modelAndView.setViewName("task/view");
        return modelAndView;
    }
    
    /**
     * 审核通过
     *
     * @param assignee
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/task/doNextTask", produces = {"text/plain;charset=utf-8"})
    public String doNextTask(String assignee, String id) {
        ModelAndView modelAndView = new ModelAndView();
        TaskInfo taskInfo = taskService.getVariable(id, "var", TaskInfo.class);
        Task task = taskService.createTaskQuery().taskId(id).singleResult();
        Map<String, Object> map = new HashMap<>();
        map.put("var", taskInfo);
        map.put("user",/* taskInfo.getAssignee()*/ assignee);
        taskService.complete(id, map);
        Lg.log(taskService.createTaskQuery().taskId(task.getId()).singleResult());
        
        if (taskService.createTaskQuery().taskId(task.getId()).singleResult() == null) {
            return JsonUtils.objectToJson(BaseJson.setOK("审核已完成"));
        }
        return JsonUtils.objectToJson(BaseJson.setOK("借款流程审批中，请耐心等待！！"));
    }
}
