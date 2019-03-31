package com.accp.controller;

import com.accp.biz.AttributeDetailsBiz;
import com.accp.biz.ReceiveTargetBiz;
import com.accp.biz.UserBiz;
import com.accp.dao.ReceiveTargetDao;
import com.accp.entity.ReceiveTarget;
import com.accp.entity.Users;
import com.alibaba.fastjson.JSON;
import com.sun.source.tree.SynchronizedTree;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("user")
public class UserController {

    @Resource
    private ReceiveTargetBiz receiveTargetBiz;

    @Resource
    private AttributeDetailsBiz attributeDetailsBiz;

    public static  Map<String,String> loginUserMap=new HashMap<String,String>();
    /**
     * 跳转登录页面
     * @return
     */
    @RequestMapping("/login.to")
    public String toLogin(){
        return "login/login2";
    }

    Main main=new Main();

    /**
     * 用户登录
     * @param receiveTarget
     * @param session
     * @param model
     * @return
     */
    @RequestMapping("/login.do")
    public String doLogin(ReceiveTarget receiveTarget, HttpSession session, Model model){
        ReceiveTarget receiveTarget1 = receiveTargetBiz.selectLogin(receiveTarget);
        if(receiveTarget1!=null){
            boolean isExist = false;
            String sessionId = session.getId();
            for (String username : UserController.loginUserMap.keySet()) {
                //判断是否已经保存该登录用户的信息         或者     如果是同一个用户进行重复登录那么允许登录
                if(!username.equals(receiveTarget1.getContactPhoneNUmber()) || UserController.loginUserMap.containsValue(sessionId)){
                    continue;
                }
                isExist = true;
                break;
            }
            if(isExist){
                UserController.loginUserMap.remove(receiveTarget1.getContactPhoneNUmber());
                UserController.loginUserMap.put(receiveTarget1.getContactPhoneNUmber(), sessionId);
            }else {
                UserController.loginUserMap.put(receiveTarget1.getContactPhoneNUmber(), sessionId);
            }
            session.getServletContext().setAttribute("userMap",loginUserMap);
            session.setAttribute("userSession",receiveTarget1);
            return main.main();
        }
        model.addAttribute("error","用户名或密码错误");
        return "login/login2";
    }

    @RequestMapping("/ajLogin.json")
    @ResponseBody
    public String  ajLogin(HttpSession session){
        Map<String,String> loginUserMap = (Map<String,String>)session.getServletContext().getAttribute("userMap");
        ReceiveTarget user = (ReceiveTarget)session.getAttribute("userSession");
        boolean isExist = false;
        if(null!=user){
            if(!loginUserMap.containsValue(session.getId())){
                session.invalidate();
                isExist=true;
            }
        }
        return JSON.toJSONString(isExist);
    }



    @RequestMapping("/exit.do")
    public String exit(HttpSession session){
        session.invalidate();
        return "login/login2";
    }

    /**
     * 修改个人信息
     * @param model
     * @param session
     * @return
     */
    @RequestMapping("/toModifyMy.do")
    public String toModifyMy(Model model, HttpSession session){
        ReceiveTarget receiveTarget=(ReceiveTarget) session.getAttribute("userSession");
        model.addAttribute("listOne",attributeDetailsBiz.listByAttributeName(14));
        model.addAttribute("list",receiveTarget);

        return "receivetarget/update";
    }

    /**
     * 更改接待对象信息
     * @param receiveTarget
     * @return
     */
    @RequestMapping("/update.do")
    public String update(ReceiveTarget receiveTarget,HttpSession session){
        receiveTargetBiz.updateReceiveTarget(receiveTarget);
        session.setAttribute("userSession",receiveTargetBiz.queryByid(receiveTarget.getReceiveTargetId()));
        return "redirect:/user/toModifyMy.do";
    }

    /**
     * 跳转403页面
     * @return
     */
    @RequestMapping("/user403")
    public String user403(){
        return "error/page_403";
    }


}
