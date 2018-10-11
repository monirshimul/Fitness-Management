/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.controller;

import ac.dia.dao.EmployeeDao;
import ac.dia.pojo.Employee;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Administrator
 */
@Controller
public class EmployeeController {

    @Autowired
    public EmployeeDao dao;

    @RequestMapping(value = "/EmployeeDash", method = RequestMethod.GET)
    public String loadEmployee(ModelMap modelMap, HttpServletRequest request) {
        List<Employee> employees = dao.getAllEmployee();
        modelMap.addAttribute("employees", employees);

        modelMap.addAttribute("sm", request.getParameter("sm"));
        modelMap.addAttribute("em", request.getParameter("em"));

        return "EmployeeDash";
    }

    @RequestMapping(value = "/saveEmployee", method = RequestMethod.POST)
    public String saveEmployee(ModelMap modelMap, HttpServletRequest request) {
        try {
            Employee employee = new Employee();
            employee.setEmployeeName(request.getParameter("employeeName"));
            employee.setPhoto(request.getParameter("photo"));
            employee.setPassword(request.getParameter("password"));
            employee.setRole(request.getParameter("role"));
            employee.setGender(request.getParameter("gender"));
            employee.setPhone(request.getParameter("phone"));
            employee.setEmail(request.getParameter("email"));
            employee.setAddress(request.getParameter("address"));
            employee.setSalary(Integer.parseInt(request.getParameter("salary")));

            boolean status = dao.saveEmployee(employee);
            if (status) {
                modelMap.addAttribute("sm", "Employee Saved Successfully");
            } else {
                modelMap.addAttribute("em", "Employee dont Saved ");

            }
        } catch (Exception e) {
            modelMap.addAttribute("em", "Error :" + e.getMessage());
        }
        return "redirect:/EmployeeDash";
    }

    @RequestMapping(value = "/editEmployee/{id}", method = RequestMethod.GET)
    public String editEmployee(@PathVariable("id") String id, ModelMap modelMap) {

        Employee e = dao.getEmployee(Integer.parseInt(id));
        modelMap.addAttribute("employee", e);
        modelMap.addAttribute("employees", dao.getAllEmployee());
        return "EmployeeDash";
    }

    @RequestMapping(value = "/updateEmployee", method = RequestMethod.POST)
    public String updateEmployee(ModelMap modelMap, HttpServletRequest request) {
        Employee employee = new Employee();
        employee.setEmployeeName(request.getParameter("employeeName"));
        employee.setPhoto(request.getParameter("photo"));
        employee.setPassword(request.getParameter("password"));
        employee.setRole(request.getParameter("role"));
        employee.setGender(request.getParameter("gender"));
        employee.setPhone(request.getParameter("phone"));
        employee.setEmail(request.getParameter("email"));
        employee.setAddress(request.getParameter("address"));
        employee.setSalary(Integer.parseInt(request.getParameter("salary")));
        employee.setActive(Boolean.parseBoolean(request.getParameter("active")));

        try {
            employee.setEmployeeId(Integer.parseInt(request.getParameter("employeeId")));

            boolean status = dao.updateEmployee(employee);
            if (status) {
                modelMap.addAttribute("sm", "Employee Update Successfully");
            } else {
                modelMap.addAttribute("em", "Employee Not Update");
            }
        } catch (Exception e) {
            modelMap.addAttribute("em", "String can't convart into number");
        }
        return "redirect:/EmployeeDash";
    }

    @RequestMapping(value = "/deleteEmployee/{id}", method = RequestMethod.GET)
    public String deleteEmployee(@PathVariable("id") String id, ModelMap modelMap) {

        boolean status = dao.deleteEmployee(Integer.parseInt(id));
        if (status) {
            modelMap.addAttribute("sm", "Employee delete Successfully");
        } else {
            modelMap.addAttribute("em", "Employee Not Delete");
        }

        return "redirect:/EmployeeDash";
    }

}
