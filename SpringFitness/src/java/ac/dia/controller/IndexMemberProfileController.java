/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.controller;

import ac.dia.dao.MemberDao;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Muiduzzaman Lipu
 */
@Controller
public class IndexMemberProfileController {

    @Autowired
    public MemberDao memberDao;

    @RequestMapping(value = "/IndexMemberProfile", method = RequestMethod.GET)
    public String IndexMemberFood(ModelMap modelMap, HttpServletRequest request) {
        try {

            return "IndexMemberProfile";
        } catch (Exception e) {
            modelMap.addAttribute("em", e.getMessage());
        }
        return "IndexMemberProfile";
    }
}