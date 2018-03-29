package com.yyq.oa.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yyq.oa.pojo.BaseJson;
import com.yyq.oa.pojo.MyDeploymentEntity;
import com.yyq.oa.utils.JsonUtils;
import com.yyq.oa.utils.Lg;
import com.yyq.oa.vo.DataGridResult;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.impl.persistence.entity.DeploymentEntity;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.DeploymentQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.zip.ZipInputStream;

@Controller
public class DeploymentController {
    
    @Autowired
    private RepositoryService repositoryService;
    
    /**
     * 流程列表
     *
     * @return
     */
    @RequestMapping("/sys/activiti/index")
    public String openProcess() {
        return "sys/activiti/index";
    }
    
    @ResponseBody
    @RequestMapping(value = "/activiti/list")/*, produces = {"text/plain;charset=utf-8"})*/
    public /*String*//*BaseJson*/DataGridResult listDeploy(/*@RequestBody */int offset, int limit) {
//        ModelAndView modelAndView = new ModelAndView();
        try {
            DeploymentQuery deploymentQuery = repositoryService.createDeploymentQuery();
            PageHelper pageHelper = new PageHelper();
            pageHelper.startPage(offset, limit);//开始分页
            
            List<Deployment> list = deploymentQuery.list();
            Lg.log(list);
            List<MyDeploymentEntity> list2 = new ArrayList<>();
            
            //TODO 没有toString  getNUll
            for (Deployment deployment : list) {
                MyDeploymentEntity myDeploymentEntity = new MyDeploymentEntity();
                myDeploymentEntity.setId(deployment.getId());
                myDeploymentEntity.setCategory(deployment.getCategory());
                myDeploymentEntity.setDeploymentTime(deployment.getDeploymentTime());
                myDeploymentEntity.setName(deployment.getName());
                myDeploymentEntity.setTenantId(deployment.getTenantId());
                Lg.log("myDeploymentEntity", myDeploymentEntity);
                list2.add(myDeploymentEntity);
            }
            Lg.log(list2);
            //总共多少条
            PageInfo<MyDeploymentEntity> pageInfo = new PageInfo<>(list2);//获取分页信息
            Long total = pageInfo.getTotal();//获取总条数
            
            DataGridResult dataGridResult = new DataGridResult(list2, total);
            Lg.log(dataGridResult);
            return dataGridResult;
        } catch (Exception e) {
            e.printStackTrace();
        }
//        return /*JsonUtils.objectToJson(*/BaseJson.setError(0, "错误,请重试")/*)*/;
        return null;
    }
    
    /**
     * 发布表单
     *
     * @return
     */
    @RequestMapping("/activiti/deploy")
    public String deployForm() {
        return "sys/activiti/deploy";
    }
    
    @ResponseBody
    @RequestMapping(path = "/activiti/deploy", params = {"commit"}, method = RequestMethod.POST, produces = {"text/plain;charset=utf-8"})
    public String deployProcess(@RequestParam("profile") CommonsMultipartFile profile, String name, String type) {
        try {
            ZipInputStream zipInputStream = new ZipInputStream(profile.getInputStream());
            Deployment deployment = repositoryService.createDeployment().addZipInputStream(zipInputStream).name(name).category(type).deploy();
            if (deployment.getId() != null) {
//                return "redirect:/listdeploy";
                return JsonUtils.objectToJson(BaseJson.setOK("发布成功"));
            }
            return JsonUtils.objectToJson(BaseJson.setError(0, "发布失败,请重试"));
        } catch (IOException e) {
            e.printStackTrace();
            return JsonUtils.objectToJson(BaseJson.setError(0, "发布失败,请重试"));
        }
    }
    
    @ResponseBody
    @RequestMapping("/sys/activiti/delete")
    public String deleteDeploy(/*String id,*/@RequestBody String[] ids) {
        Lg.log("deleteDeploy", ids);
        
        try {
            for (String id : ids) {
                repositoryService.deleteDeployment(id, true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return JsonUtils.objectToJson(BaseJson.setOK("删除成功"))/*"redirect:sys/activiti/index.action"*/;
    }
}
