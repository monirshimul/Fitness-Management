/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.controller;

import ac.dia.dao.AdminDao;
import ac.dia.dao.MemberDao;
import ac.dia.pojo.Admin;
import ac.dia.pojo.Member;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author User
 */
@Controller
public class AdminLoginController {

    @Autowired
    public AdminDao adminDao;
    
    @Autowired
    public MemberDao memberDao;

    @RequestMapping(value = "/loginAdmin", method = RequestMethod.GET)
    public String indexPage() {
        return "AdminLogin";
    }

    @RequestMapping(value = "/checkLoginAdmin", method = RequestMethod.POST)
    public String checkLoginAdmin(ModelMap modelMap, HttpServletRequest request) {

        String type = request.getParameter("type");
        if ("admin".equalsIgnoreCase(type)) {
            try {
                Admin admin = new Admin();
                admin.setName(request.getParameter("uname"));
                admin.setPassword(request.getParameter("psw"));

                Admin logAdmin = adminDao.checkLoginAdmin(admin);
                if (admin.getName().equalsIgnoreCase(logAdmin.getName()) && admin.getPassword().equalsIgnoreCase(logAdmin.getPassword())) {
                    request.getSession().setAttribute("logAdmin", logAdmin);
                    return "redirect:/IndexAdminDash";
                } else {
                    modelMap.addAttribute("em", "Incorrect Username or Password");
                    return "AdminLogin";
                }
            } catch (Exception e) {
                modelMap.addAttribute("em", "Incorrect Username or Password");
            }
        } else if ("member".equalsIgnoreCase(type)) {
            try {
                Member member= new Member();
                member.setMemberName(request.getParameter("uname"));
                member.setPassword(request.getParameter("psw"));

                Member logMember = memberDao.checkLoginMember(member);
                if (member.getMemberName().equalsIgnoreCase(logMember.getMemberName()) && member.getPassword().equalsIgnoreCase(logMember.getPassword())) {
                    request.getSession().setAttribute("logMember", logMember);
                    return "redirect:/IndexMemberDash";
                } else {
                    modelMap.addAttribute("em", "Incorrect Username or Password");
                    return "AdminLogin";
                }
            } catch (Exception e) {
                modelMap.addAttribute("em", "Incorrect Username or Password");
            }
        } else {
            modelMap.addAttribute("em", "Please First Select Admin or Member Button");
        }
        return "AdminLogin";
    }

    @RequestMapping(value = "/logOutAdmin", method = RequestMethod.GET)
    public String logOutAdmin(HttpServletRequest request) {
        request.getSession().removeAttribute("logAdmin");
        return "redirect:/";
    }
    
    @RequestMapping(value = "/logOutMember", method = RequestMethod.GET)
    public String logOutMember(HttpServletRequest request) {
        request.getSession().removeAttribute("logMember");
        return "redirect:/";
    }

}
