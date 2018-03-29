package com.yyq.oa.controller;

import com.yyq.oa.pojo.Demo;
import com.yyq.oa.utils.Lg;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;


/**
 * Created by QJY on 2017/12/8.
 */
@Controller
public class LeafDemoController {


//    @RequestMapping(path = "/demo", method = RequestMethod.GET)
//    public String showZooList() {
//        return "demo";
//    }
    
    //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    @RequestMapping(path = "/list", method = RequestMethod.GET)
    public ModelAndView showZooList2() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("demo");
        mav.addObject("animalForm", new Demo());
        return mav;
    }
    
    //    @RequestMapping(path = "/list", params = {"save"}, method = RequestMethod.POST)
//    public String doAdd(Demo form) {
//        Lg.log("动物名", form.getOname());
//        Lg.log("数量", form.getOcount());
//        Lg.log("备注", form.getMemo());
//        return "demo";
//    }

//    @RequestMapping(path = "/list", params = {"save"}, method = RequestMethod.POST)
//    public ModelAndView add(Demo form) {
//        ModelAndView mav = new ModelAndView();
//        mav.setViewName("demo");
//        mav.addObject("animalForm", new Demo());
//        Lg.log("动物名", form.getOname());
//        Lg.log("数量", form.getOcount());
//        Lg.log("备注", form.getMemo());
//        return mav;
//    }
    
    @RequestMapping(path = "/list", params = {"save"}, method = RequestMethod.POST)
    public ModelAndView doAdd(ModelAndView mav, @Valid Demo form, BindingResult result) {
        mav.setViewName("demo");
        Lg.log("动物名", form.getOname());
        Lg.log("数量", form.getOcount());
        Lg.log("备注", form.getMemo());
        Lg.log("result", result);
        
        if (result.hasErrors()) {
            mav.addObject("MSG", "出错啦！");
        } else {
            mav.addObject("MSG", "提交成功！");
        }
        mav.addObject("demo", form);
        Lg.log("mav", mav);
        return mav;
    }
}
