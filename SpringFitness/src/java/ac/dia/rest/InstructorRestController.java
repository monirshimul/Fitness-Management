/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.rest;

import ac.dia.dao.CategoryPackageDao;
import ac.dia.dao.EmployeeDao;
import ac.dia.dao.InstructorDao;
import ac.dia.pojo.CategoryPackage;
import ac.dia.pojo.Employee;
import ac.dia.pojo.Instructor;
import java.util.ArrayList;
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
@RequestMapping(value = "/instructor")
public class InstructorRestController {
    
    @Autowired
    private InstructorDao instructorDao;
    
    @Autowired
    private EmployeeDao employeeDao;
    
    @Autowired
    private CategoryPackageDao categoryPackageDao;
    
    @RequestMapping(value = "/getAllInstructor", method = RequestMethod.GET)
    public List<Instructor> getAllInstructor() {
        return instructorDao.getAll();
    }
    
    @RequestMapping(value = "/saveInstructor", method = RequestMethod.POST, headers = "Accept=application/json")
    public Instructor saveInstructor(@RequestBody Instructor instructor) {
        boolean status = instructorDao.save(instructor);
        if (status) {
            return instructor;
        } else {
            return null;
        }

    }
    
    @RequestMapping(value = "/getAllEmployee", method = RequestMethod.GET)
    public List<Employee> getAllEmployee() {
        return employeeDao.getAllEmployee();
    }
    
    @RequestMapping(value = "/getAllCategoryPackage", method = RequestMethod.GET)
    public List<CategoryPackage> getAllCategoryPackage() {
        return categoryPackageDao.getAllCategoryPackage();
    }
    
    @RequestMapping(value = "/getEmployeeForEdit", method = RequestMethod.POST, headers = "Accept=application/json")
    public Employee getEmployeeForEdit(@RequestBody int id) {
        return employeeDao.getEmployee(id);
    }
    
    @RequestMapping(value = "/getCategoryandPackageForEdit", method = RequestMethod.POST, headers = "Accept=application/json")
    public CategoryPackage getCategoryandPackageForEdit(@RequestBody int id) {
        return categoryPackageDao.getCategoryPackage(id);
    }
    
    @RequestMapping(value = "/updateInstructor", method = RequestMethod.POST, headers = "Accept=application/json")
    public Instructor updateInstructor(@RequestBody Instructor instructor) {
        boolean status = instructorDao.update(instructor);
        if (status) {
            return instructor;
        } else {
            return null;
        }
    }
    
}
