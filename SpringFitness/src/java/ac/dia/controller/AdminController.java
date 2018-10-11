/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.controller;

import ac.dia.dao.AdminDao;
import ac.dia.pojo.Admin;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Benzir
 */
@Controller
public class AdminController {

    @Autowired
    public AdminDao dao;

    @RequestMapping(value = "/AdminDash", method = RequestMethod.GET)
    public String loadAdmin(ModelMap modelMap, HttpServletRequest request) {
        List<Admin> admins = dao.getAllAdmin();
        modelMap.addAttribute("admins", admins);

        modelMap.addAttribute("sm", request.getParameter("sm"));
        modelMap.addAttribute("em", request.getParameter("em"));

        return "AdminDash";
    }

    @RequestMapping(value = "/saveAdmin", method = RequestMethod.POST)
    public String saveAdmin(ModelMap modelMap, HttpServletRequest request) {
        try {
            Admin admin = new Admin();
            admin.setName(request.getParameter("name"));
            admin.setPassword(request.getParameter("password"));
            admin.setRole(request.getParameter("role"));

            boolean status = dao.saveAdmin(admin);
            if (status) {
                modelMap.addAttribute("sm", "admin Saved Successfully");
            } else {
                modelMap.addAttribute("em", "admin dont Saved ");

            }
        } catch (Exception e) {
            modelMap.addAttribute("em", "Error :" + e.getMessage());
        }
        return "redirect:/AdminDash";
    }

    @RequestMapping(value = "/editAdmin/{id}", method = RequestMethod.GET)
    public String editAdmin(@PathVariable("id") String id, ModelMap modelMap) {

        Admin e = dao.getAdmin(Integer.parseInt(id));
        modelMap.addAttribute("admin", e);
        modelMap.addAttribute("admins", dao.getAllAdmin());
        return "AdminDash";
    }

    @RequestMapping(value = "/updateAdmin", method = RequestMethod.POST)
    public String updateAdmin(ModelMap modelMap, HttpServletRequest request) {
        Admin admin = new Admin();
        admin.setName(request.getParameter("name"));
        admin.setPassword(request.getParameter("password"));
        admin.setRole(request.getParameter("role"));

        try {
            admin.setAdminId(Integer.parseInt(request.getParameter("adminId")));

            boolean status = dao.updateAdmin(admin);
            if (status) {
                modelMap.addAttribute("sm", "admin Update Successfully");
            } else {
                modelMap.addAttribute("em", "admin Not Update");
            }
        } catch (Exception e) {
            modelMap.addAttribute("em", "String can't convart into number");
        }
        return "redirect:/AdminDash";
    }

    @RequestMapping(value = "/deleteAdmin/{id}", method = RequestMethod.GET)
    public String deleteAdmin(@PathVariable("id") String id, ModelMap modelMap) {

        boolean status = dao.deleteAdmin(Integer.parseInt(id));
        if (status) {
            modelMap.addAttribute("sm", "Admin delete Successfully");
        } else {
            modelMap.addAttribute("em", "Admin Not Delete");
        }

        return "redirect:/AdminDash";
    }
}
