/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.rest;

import ac.dia.dao.EmployeeDao;
import ac.dia.dao.SalaryDao;
import ac.dia.pojo.Employee;
import ac.dia.pojo.Salary;
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
@RequestMapping(value = "/salary")
public class SalaryRestController {
    
    @Autowired
    private SalaryDao salaryDao;
    
    @Autowired
    private EmployeeDao employeeDao;
    
    @RequestMapping(value = "/getAllSalary", method = RequestMethod.GET)
    public List<Salary> getAllSalary() {
        return salaryDao.getAll();
    }
    
    @RequestMapping(value = "/saveSalary", method = RequestMethod.POST, headers = "Accept=application/json")
    public Salary saveSalary(@RequestBody Salary salary) {
        boolean status = salaryDao.save(salary);
        if (status) {
            return salary;
        } else {
            return null;
        }
    }
    
    @RequestMapping(value = "/getAllEmployee", method = RequestMethod.GET)
    public List<Employee> getAllEmployee() {
        return employeeDao.getAllEmployee();
    }
    
    @RequestMapping(value = "/getEmployeeForEdit", method = RequestMethod.POST, headers = "Accept=application/json")
    public Employee getEmployeeForEdit(@RequestBody int id) {
        return employeeDao.getEmployee(id);
    }
    
    @RequestMapping(value = "/updateSalary", method = RequestMethod.POST, headers = "Accept=application/json")
    public Salary updateSalary(@RequestBody Salary salary) {
        boolean status = salaryDao.update(salary);
        if (status) {
            return salary;
        } else {
            return null;
        }
    }
    
    @RequestMapping(value = "/searchByMonthYear", method = RequestMethod.POST, headers = "Accept=application/json")
    public List<Salary> searchByMonthYear(@RequestBody Salary salary) {
        return salaryDao.searchByMonthYear(salary);
    }
    
}
