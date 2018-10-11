/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.controller;

import ac.dia.dao.MemberDietFoodDao;
import ac.dia.pojo.Member;
import ac.dia.pojo.MemberDietFood;
import java.util.List;
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
public class IndexMemberFoodController {

    @Autowired
    public MemberDietFoodDao memberDietFoodDao;

    @RequestMapping(value = "/IndexMemberFood", method = RequestMethod.GET)
    public String IndexMemberFood(ModelMap modelMap, HttpServletRequest request) {
        try {
            Member member = (Member) request.getSession().getAttribute("logMember");
            List<MemberDietFood> memberDietFoods = memberDietFoodDao.getMemberDietFoodBy(member.getMemberId());
            modelMap.addAttribute("memberDietFoods", memberDietFoods);

            return "IndexMemberFood";
        } catch (Exception e) {
            modelMap.addAttribute("em", e.getMessage());
        }
        return "IndexMemberFood";
    }
}
