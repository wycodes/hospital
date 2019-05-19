package com.hospital.commonurl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.hospital.entity.User;
import com.hospital.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

@Controller
@RequestMapping("/backstage")
public class BackController {

    private final Logger logger = LoggerFactory.getLogger(BackController.class);

    @Autowired
    IUserService userService;

    @RequestMapping("/loginUI")
    public String gotoLogin(){
        logger.info("进入后台login.jsp页面");
        return "/WebRoot/backstage/login";
    }

    private void outMessage(HttpServletResponse response,String context){
        try {
            response.setContentType("text/html; charset=utf-8");
            PrintWriter writer = response.getWriter();
            StringBuffer buffer = new StringBuffer();
            buffer.append("<script>alert('");
            buffer.append(context);
            buffer.append("');</script>");
            writer.write(buffer.toString());
            writer.flush();
        } catch (IOException e) {
            logger.error("writer is error");
        }
    }

    @RequestMapping("/login")
    public String login(User user, HttpServletResponse response, HttpSession session){
        User selectUser = userService.selectOne(
                new EntityWrapper<User>().eq("username", user.getUsername())
        );
        if (selectUser!=null){
            if (selectUser.getPassword().equals(user.getPassword())){
                if (selectUser.getRole().equals(user.getRole())){
                    if (selectUser.getDeletestatus()== 0){
                        logger.info("login success , user is {}",user);
                        session.setAttribute("user",selectUser);
                        return "redirect:indexUI";
                    }else {
                        outMessage(response,"该用户已经被删除");
                        return "/WebRoot/backstage/login";
                    }
                }else {
                    outMessage(response,"角色不正确");
                    return "/WebRoot/backstage/login";
                }
            }else {
                outMessage(response,"密码不正确");
                return "/WebRoot/backstage/login";
            }
        }else {
            outMessage(response,"用户名不存在");
            return "/WebRoot/backstage/login";
        }
    }

    @RequestMapping("/loginout")
    public String loginOut(HttpSession session){
        session.removeAttribute("user");
        return "redirect:loginUI";
    }

    @RequestMapping("/passwordUI")
    public String gotoPassword(){
        logger.info("进入后台password.jsp页面");
        return "/WebRoot/backstage/password";
    }

    @RequestMapping("/changepassword")
    public String changePwd(@RequestParam Map<String,String> modelMap,HttpServletResponse response, HttpSession session){
        User user = (User) session.getAttribute("user");
        if (!user.getPassword().equals(modelMap.get("password1"))){
            outMessage(response,"原密码不正确");
            return "/WebRoot/backstage/password";
        }else {
            user.setPassword(modelMap.get("password2"));
            userService.updateById(user);
            session.setAttribute("user",user);
            outMessage(response,"密码修改成功");
            logger.info("user change password success , id is {}",user.getId());
            return "/WebRoot/backstage/index";
        }
    }

    @RequestMapping("/mainUI")
    public String gotoMain(){
        logger.info("进入后台main.jsp页面");
        return "/WebRoot/backstage/main";
    }

    /**
     * http://127.0.0.1:8080/backstage/indexUI
     * @return
     */
    @RequestMapping("/indexUI")
    public String gotoIndex(){
        logger.info("进入后台index.jsp页面");
        return "/WebRoot/backstage/index";
    }

    @RequestMapping("/topUI")
    public String gotoTop(){
        logger.info("进入后台top.jsp页面");
        return "/WebRoot/backstage/top";
    }

    @RequestMapping("/leftUI")
    public String gotoLeft(){
        logger.info("进入后台left.jsp页面");
        return "/WebRoot/backstage/left";
    }

    /**
     * 仅用于做页面跳转控制
     * @param pageDir
     * @param pageName
     * @return
     */
    @RequestMapping("/{pageDir}/{pageName}UI")
    public String gotoUI(@PathVariable String pageDir,@PathVariable String pageName,@RequestParam String menu,HttpSession session){
        StringBuffer buffer = new StringBuffer("/WebRoot/backstage/");
        buffer.append(pageDir);
        buffer.append("/");
        buffer.append(pageName);
        session.removeAttribute("menu");
        session.setAttribute("menu",menu);
        logger.info("进入{}页面",buffer.toString());
        return buffer.toString();
    }

}
