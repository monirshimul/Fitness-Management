/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.rest;

import ac.dia.dao.CategoryPackageDao;
import ac.dia.dao.EmployeeDao;
import ac.dia.dao.InstructorDao;
import ac.dia.dao.MemberDao;
import ac.dia.pojo.CategoryPackage;
import ac.dia.pojo.Employee;
import ac.dia.pojo.Instructor;
import ac.dia.pojo.Member;
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
@RequestMapping(value = "/member")
public class MemberRestController {

    @Autowired
    private MemberDao memberDao;

    @Autowired
    private InstructorDao instructorDao;

    @Autowired
    private CategoryPackageDao categoryPackageDao;
    
    
    
    

    @RequestMapping
        (value = "/getAllMember",
        method = RequestMethod.GET)
    
    public List<Member> getAllMember() {
        return memberDao.getAllMember();
    }
    
    
    
    

    @RequestMapping
            (value = "/saveMember",
            method = RequestMethod.POST,
            headers = "Accept=application/json")
    
    public Member saveMember(@RequestBody Member member) {
        boolean status = memberDao.saveMember(member);
        if (status) {
            return member;
        } else {
            return null;
        }

    }
    
    
    
    

    @RequestMapping
        (value = "/getAll",
                method = RequestMethod.GET)
    public List<Instructor> getAll() {
        return instructorDao.getAll();
    }
    
    
    
    
    

    @RequestMapping
        (value = "/getAllCategoryPackage",
                method = RequestMethod.GET)
    public List<CategoryPackage> getAllCategoryPackage() {
        return categoryPackageDao.getAllCategoryPackage();
    }
    
    
    
    
    

    @RequestMapping
        (value = "/getInstructorForEdit",
         method = RequestMethod.POST,
         headers = "Accept=application/json")
    public Instructor getInstructorForEdit(@RequestBody int id) {
        return instructorDao.get(id);
    }
    
    
    
    
    

    @RequestMapping(value = "/getCategoryandPackageForEdit",
            method = RequestMethod.POST,
            headers = "Accept=application/json")
    public CategoryPackage getCategoryandPackageForEdit(@RequestBody int id) {
        return categoryPackageDao.getCategoryPackage(id);
    }
    
    
    
    

    @RequestMapping(value = "/updateMember",
            method = RequestMethod.POST,
            headers = "Accept=application/json")
    public Member updateMember(@RequestBody Member member) {
        boolean status = memberDao.updateMember(member);
        if (status) {
            return member;
        } else {
            return null;
        }
    }

}
