/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.rest;



import ac.dia.dao.FoodDao;
import ac.dia.dao.MemberDao;
import ac.dia.dao.MemberFoodDao;
import ac.dia.pojo.Food;
import ac.dia.pojo.Member;
import ac.dia.pojo.MemberFood;
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
@RequestMapping(value = "/memberFood")
public class MemberFoodRestController {

    @Autowired
    private MemberFoodDao memFoodDao;

    @Autowired
    private MemberDao memberDao;

    @Autowired
    private FoodDao foodDao;

    @RequestMapping(value = "/getAllMemberFood", method = RequestMethod.GET)
    public List<MemberFood> getAllMemberFood() {
        return memFoodDao.getAll();
    }

    @RequestMapping(value = "/saveMemberFood", method = RequestMethod.POST, headers = "Accept=application/json")
    public MemberFood saveMemberFood(@RequestBody MemberFood memberFood) {
        boolean status = memFoodDao.save(memberFood);
        if (status) {
            return memberFood;
        } else {
            return null;
        }

    }

    @RequestMapping(value = "/getAllMember", method = RequestMethod.GET)
    public List<Member> getAllMember() {
        return memberDao.getAllMember();
    }

    @RequestMapping(value = "/getAllFood", method = RequestMethod.GET)
    public List<Food> getAllFood() {
        return foodDao.getAll();
    }

    @RequestMapping(value = "/getMemberForEdit", method = RequestMethod.POST, headers = "Accept=application/json")
    public Member getMemberForEdit(@RequestBody int id) {
        return memberDao.getMember(id);
    }

    @RequestMapping(value = "/get", method = RequestMethod.POST, headers = "Accept=application/json")
    public Food get(@RequestBody int id) {
        return foodDao.get(id);
    }

    @RequestMapping(value = "/updateMemberFood", method = RequestMethod.POST, headers = "Accept=application/json")
    public MemberFood updateMemberFood(@RequestBody MemberFood memberFood) {
        boolean status = memFoodDao.update(memberFood);
        if (status) {
            return memberFood;
        } else {
            return null;
        }
    }

}
