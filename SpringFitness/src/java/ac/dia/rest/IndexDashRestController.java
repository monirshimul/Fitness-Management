/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.rest;

import ac.dia.dao.AdminDao;
import ac.dia.dao.EmployeeDao;
import ac.dia.dao.InstructorDao;
import ac.dia.dao.MemberDao;
import ac.dia.dao.MonthlyExpenseDao;
import ac.dia.dao.SalaryDao;
import ac.dia.pojo.MonthlyExpense;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Muiduzzaman Lipu
 */
@RestController
@RequestMapping(value = "/indexDash")
public class IndexDashRestController {
    
    @Autowired
    private AdminDao adminDao;
    
    @Autowired
    private MemberDao memberDao;
    
    @Autowired
    private EmployeeDao employeeDao;
    
    @Autowired
    private InstructorDao instructorDao;
    
    @Autowired
    private MonthlyExpenseDao monthlyExpenseDao;
    
    @Autowired
    private SalaryDao salaryDao;
    
    @RequestMapping(value = "/getTotalAdmin", method = RequestMethod.GET)
    public int getTotalAdmin() {
        return adminDao.getTotalAdmin();
    }
    
    @RequestMapping(value = "/getTotalMember", method = RequestMethod.GET)
    public int getTotalMember() {
        return memberDao.getTotalMember();
    }
    
    @RequestMapping(value = "/getTotalEmployee", method = RequestMethod.GET)
    public int getTotalEmployee() {
        return employeeDao.getTotalEmployee();
    }
    
    @RequestMapping(value = "/getTotalInstructor", method = RequestMethod.GET)
    public int getTotalInstructor() {
        return instructorDao.getTotalInstructor();
    }
    
    @RequestMapping(value = "/getMonthlyExpenseFloorRent", method = RequestMethod.GET)
    public int getMonthlyExpenseFloorRent() {
        return monthlyExpenseDao.getMonthlyExpenseFloorRent();
    }
    
    @RequestMapping(value = "/getMonthlyExpenseElectricityBil", method = RequestMethod.GET)
    public int getMonthlyExpenseElectricityBil() {
        return monthlyExpenseDao.getMonthlyExpenseElectricityBil();
    }
    
    @RequestMapping(value = "/getMonthlyExpenseWaterBill", method = RequestMethod.GET)
    public int getMonthlyExpenseWaterBill() {
        return monthlyExpenseDao.getMonthlyExpenseWaterBill();
    }
    
    @RequestMapping(value = "/getSalaryStatSalary", method = RequestMethod.GET)
    public int getSalaryStatSalary() {
        return salaryDao.getSalaryStatSalary();
    }
    
    @RequestMapping(value = "/getSalaryStatBonus", method = RequestMethod.GET)
    public int getSalaryStatBonus() {
        return salaryDao.getSalaryStatBonus();
    }
    
}
