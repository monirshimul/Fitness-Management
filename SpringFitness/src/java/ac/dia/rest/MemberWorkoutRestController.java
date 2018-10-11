/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.rest;

import ac.dia.dao.MemberDao;
import ac.dia.dao.MemberWorkoutDao;
import ac.dia.dao.WorkoutDao;
import ac.dia.pojo.Member;
import ac.dia.pojo.MemberWorkout;
import ac.dia.pojo.Workout;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Muiduzzaman Lipu
 */
@RestController
@RequestMapping(value = "/memberWorkout")
public class MemberWorkoutRestController {
    @Autowired
    private MemberWorkoutDao memberWorkoutDao;
    
    @Autowired
    private MemberDao memberDao;
    
    @Autowired
    private WorkoutDao workoutDao;
    
    @RequestMapping(value = "/getAllMemberWorkout", method = RequestMethod.GET)
    public List<MemberWorkout> getAllMemberWorkout() {
        return memberWorkoutDao.getAll();
    }
    
    @RequestMapping(value = "/saveMemberWorkout", method = RequestMethod.POST, headers = "Accept=application/json")
    public MemberWorkout saveMemberWorkout(@RequestBody MemberWorkout memberWorkout) {
        boolean status = memberWorkoutDao.save(memberWorkout);
        if (status) {
            return memberWorkout;
        } else {
            return null;
        }

    }
    
    @RequestMapping(value = "/getAllMember", method = RequestMethod.GET)
    public List<Member> getAllMember() {
        return memberDao.getAllMember();
    }
    
    @RequestMapping(value = "/getAllWorkout", method = RequestMethod.GET)
    public List<Workout> getAllWorkout() {
        return workoutDao.getAllWorkout();
    }
    
    @RequestMapping(value = "/getMemberForEdit", method = RequestMethod.POST, headers = "Accept=application/json")
    public Member getMemberForEdit(@RequestBody int id) {
        return memberDao.getMember(id);
    }
    
    @RequestMapping(value = "/getWorkoutForEdit", method = RequestMethod.POST, headers = "Accept=application/json")
    public Workout getWorkoutForEdit(@RequestBody int id) {
        return workoutDao.getWorkout(id);
    }
    
    @RequestMapping(value = "/updateMemberWorkout", method = RequestMethod.POST, headers = "Accept=application/json")
    public MemberWorkout updateMemberWorkout(@RequestBody MemberWorkout memberWorkout) {
        boolean status = memberWorkoutDao.update(memberWorkout);
        if (status) {
            return memberWorkout;
        } else {
            return null;
        }
    }
    
}
