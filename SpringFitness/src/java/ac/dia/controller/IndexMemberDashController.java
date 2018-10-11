/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.controller;

import ac.dia.dao.MemberWorkoutDao;
import ac.dia.pojo.Member;
import ac.dia.pojo.MemberWorkout;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Monir
 */
@Controller
public class IndexMemberDashController {

    @Autowired
    public MemberWorkoutDao memberWorkoutDao;

    @RequestMapping(value = "/IndexMemberDash", method = RequestMethod.GET)
    public String indexPage(ModelMap modelMap, HttpServletRequest request) {
        try {
            Member member = (Member) request.getSession().getAttribute("logMember");
            List<MemberWorkout> memberWorkouts = memberWorkoutDao.getMemberWorkoutByMemberId(member.getMemberId());
            modelMap.addAttribute("memberWorkouts", memberWorkouts);
            return "IndexMemberDash";
        } catch (Exception e) {
            modelMap.addAttribute("em", e.getMessage());
        }
        return "IndexMemberDash";
    }
}
