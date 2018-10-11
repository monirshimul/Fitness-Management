/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.rest;

import ac.dia.dao.DietFoodDao;
import ac.dia.dao.MemberDao;
import ac.dia.dao.MemberDietFoodDao;
import ac.dia.pojo.CategoryPackage;
import ac.dia.pojo.DietFood;
import ac.dia.pojo.Employee;
import ac.dia.pojo.Instructor;
import ac.dia.pojo.Member;
import ac.dia.pojo.MemberDietFood;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Monir
 */
@RestController
@RequestMapping(value = "/memberDietFood")
public class MemberDietFoodRestController {
    
    
    @Autowired
    private MemberDietFoodDao memberDietFoodDao;
    
    @Autowired
    private MemberDao memberDao;
    
    @Autowired
    private DietFoodDao dietFoodDao;
    
    
    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    public List<MemberDietFood> getAll() {
        return memberDietFoodDao.getAll();
    }
    
    @RequestMapping(value = "/save", method = RequestMethod.POST, headers = "Accept=application/json")
    public MemberDietFood save(@RequestBody MemberDietFood memberDietFood) {
        boolean status = memberDietFoodDao.save(memberDietFood);
        if (status) {
            return memberDietFood;
        } else {
            return null;
        }

    }
    
    
    @RequestMapping(value = "/getAllMember", method = RequestMethod.GET)
    public List<Member> getAllMember() {
        return memberDao.getAllMember();
    }
    
    @RequestMapping(value = "/getAllDietFood", method = RequestMethod.GET)
    public List<DietFood> getAllDietFood() {
        return dietFoodDao.getAllDietFood();
    }
    
    @RequestMapping(value = "/getMemberForEdit", method = RequestMethod.POST, headers = "Accept=application/json")
    public Member getMemberForEdit(@RequestBody int id) {
        return memberDao.getMember(id);
    }
    
    @RequestMapping(value = "/getDietFoodForEdit", method = RequestMethod.POST, headers = "Accept=application/json")
    public DietFood getDietFoodForEdit(@RequestBody int id) {
        return dietFoodDao.getDietFood(id);
    }
    
    @RequestMapping(value = "/update", method = RequestMethod.POST, headers = "Accept=application/json")
    public MemberDietFood update(@RequestBody MemberDietFood memberDietFood) {
        boolean status = memberDietFoodDao.update(memberDietFood);
        if (status) {
            return memberDietFood;
        } else {
            return null;
        }
    }
    
}
