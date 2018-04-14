package com.nkpdqz.action;


import com.nkpdqz.dao.PlaceDao;
import com.nkpdqz.domain.Place;
import com.nkpdqz.domain.User;
import com.nkpdqz.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


@RequestMapping("/UserAction")
@org.springframework.stereotype.Controller
public class Controller {

    @Autowired
    private UserService userService;

    @Autowired
    private PlaceService placeService;

    @Autowired
    private PlacePreferenceService placePreferenceService;

    private User user0;
    public void setUserService(UserService userService) {
        this.userService = userService;
    }


    @RequestMapping("/register")
    public String register(@RequestParam("username") String username,
                           @RequestParam("password") String password,
                           @RequestParam("repassword") String repassword,
                           @RequestParam("prefer") String prefer,
                           HttpServletResponse response, HttpServletRequest request) throws IOException {
        PrintWriter writer = response.getWriter();
        String result;
        if (username.isEmpty()|| password.isEmpty()){
            result = "用户名或密码不能为空！";
            return "redirect:localhost";
        } else if (repassword.isEmpty()){
            result = "请重新输入一遍密码！";
            return "redirect:localhost";
        } else if (prefer.isEmpty()){
            result = "请输入偏好";
            return "redirect:localhost";
        } else {
            boolean b = userService.register(username, password,repassword, prefer);
            if (b){
                result = "注册成功!";
                return "home";
            } else {
                result = "注册失败!";
                return "redirect:localhost";
            }
        }

        
    }

    /*@ModelAttribute("user")
    public User getUser(){
        User user = new User();
        return user;
    }*/

    @RequestMapping("/login")
    public String login(@RequestParam("username") String username,
                              @RequestParam("password") String password, HttpServletRequest request
                        , HttpServletResponse response, Model model){
        String res;
        User user = userService.login(username, password);
        user0 = user;
        if (username.isEmpty()){
            res = "请输入用户名！";
        } else if (password.isEmpty()){
            res = "请输入密码！";
        } else if (user == null){
            res = "用户名或密码错误!";
            return "redirect:localhost";
        } else {
            model.addAttribute("user",user);
            return "home";
        }
        return "redirect:localhost";
    }



    @RequestMapping("/addPlacePreference")
    @ResponseBody
    public String addPreference(@RequestParam("cityname") String cityname, @RequestParam("citypreference") Integer citypre,
                              HttpServletRequest request,HttpServletResponse response) throws IOException {
        //PrintWriter out = response.getWriter();
        String res;
        if (cityname.isEmpty()){
            res = "0";
        } else if (citypre == null){
            res = "1";
        }
        else {
            System.out.println(user0.toString());
            int id = user0.getId();
            System.out.println(id+cityname+citypre);
            boolean b = placeService.addPlacePreference(id, cityname, citypre);
            //boolean b = true;
            if (b) {
                res = "3";
            } else {
                res = "4";
            }
        }
        //out.write(res);
        return res;
    }

    public Place getPlaceByCityName(String cityname){
        Place city = placeService.getPlaceByCityName(cityname);
        return city;
    }

    @ResponseBody
    @RequestMapping("/recommend")
    public void getRecommendCity(Model model,HttpServletResponse response,HttpServletRequest request) throws IOException {
        PrintWriter out = response.getWriter();
        //User user = (User) model.asMap().get("user");
        //System.out.println(user.toString());
        int id = user0.getId();
        String res;
        StringBuilder stringBuilder = new StringBuilder();
        List<Place> placeByRecommend = placePreferenceService.getPlaceByRecommend(id, 2);
        for (Place p : placeByRecommend) {
            String cityname = p.getCityname();
            stringBuilder.append(cityname)
                .append("<br>").append("下面是我们为您推荐的这座城市里的著名美食和特色景点哦")
                    .append("<br>").append("美食："+p.getNicefood()).append("<br>")
                .append("美景："+p.getScenic_spot()).append("<br>");
        }
        res = stringBuilder.toString();
        System.out.println(res);
        System.out.println(res.isEmpty());
        if (res.isEmpty()){
            res = "您的数据太少啦，没法准确推荐，不如再加点城市数据";
        }
        System.out.println(res);
        System.out.println("haha");
        response.setContentType("text/html;charset=UTF-8");
        out.write(res);
    }

}
