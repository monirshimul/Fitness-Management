/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.controller;

import ac.dia.dao.MonthlyExpenseDao;
import ac.dia.pojo.MonthlyExpense;
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
 * @author momen
 */
@Controller
public class MonthlyExpenseController {

    @Autowired
    private MonthlyExpenseDao dao;

    @RequestMapping(value = "/MonthlyExpenseDash", method = RequestMethod.GET)
    public String loadMonthlyExpense(ModelMap modelMap, HttpServletRequest request) {
        List<MonthlyExpense> monthlyExpenses = dao.getAll();
        modelMap.addAttribute("monthlyExpenses", monthlyExpenses);

        modelMap.addAttribute("sm", request.getParameter("sm"));
        modelMap.addAttribute("em", request.getParameter("em"));

        return "MonthlyExpenseDash";
    }

    @RequestMapping(value = "/saveMonthlyExpense", method = RequestMethod.POST)
    public String saveMonthlyExpense(ModelMap modelMap, HttpServletRequest request) {
        try {
            MonthlyExpense monthlyExpense = new MonthlyExpense();
            monthlyExpense.setMonthlyExpenseId(Integer.parseInt(request.getParameter("monthlyExpenseId")));
            monthlyExpense.setFloorRent(Float.parseFloat(request.getParameter("floorRent")));
            monthlyExpense.setElectricityBill(Float.parseFloat(request.getParameter("electricityBill")));
            monthlyExpense.setWaterBill(Float.parseFloat(request.getParameter("waterBill")));
            monthlyExpense.setMonth(request.getParameter("month"));
            monthlyExpense.setYear(Integer.parseInt(request.getParameter("year")));

            boolean status = dao.save(monthlyExpense);
            if (status) {
                modelMap.addAttribute("sm", "MonthlyExpense Saved Successfully");
            } else {
                modelMap.addAttribute("em", "MonthlyExpense dont Saved ");

            }
        } catch (Exception e) {
            modelMap.addAttribute("em", "Error :" + e.getMessage());
        }
        return "redirect:/MonthlyExpenseDash";
    }

    @RequestMapping(value = "/editMonthlyExpense/{id}", method = RequestMethod.GET)
    public String editMonthlyExpense(@PathVariable("id") String id, ModelMap modelMap) {
        MonthlyExpense monthlyExpense = dao.get(Integer.parseInt(id));

        modelMap.addAttribute("monthlyExpense", monthlyExpense);
        modelMap.addAttribute("monthlyExpenses", dao.getAll());
        return "MonthlyExpenseDash";
    }

    @RequestMapping(value = "/updateMonthlyExpense", method = RequestMethod.POST)
    public String updateMonthlyExpense(ModelMap modelMap, HttpServletRequest request) {
        MonthlyExpense monthlyExpense = new MonthlyExpense();

         monthlyExpense.setFloorRent(Float.parseFloat(request.getParameter("floorRent")));
            monthlyExpense.setElectricityBill(Float.parseFloat(request.getParameter("electricityBill")));
            monthlyExpense.setWaterBill(Float.parseFloat(request.getParameter("waterBill")));
            monthlyExpense.setMonth(request.getParameter("month"));
            monthlyExpense.setYear(Integer.parseInt(request.getParameter("year")));

        try {
            monthlyExpense.setMonthlyExpenseId(Integer.parseInt(request.getParameter("monthlyExpenseId")));

            boolean status = dao.update(monthlyExpense);
            if (status) {
                modelMap.addAttribute("sm", "monthlyExpense Update Successfully");
            } else {
                modelMap.addAttribute("em", "monthlyExpense Not Update");
            }
        } catch (Exception e) {
            modelMap.addAttribute("em", "String can't convart into number");
        }
        return "redirect:/MonthlyExpenseDash";
    }

    @RequestMapping(value = "/deleteMonthlyExpense/{id}", method = RequestMethod.GET)
    public String deleteMonthlyExpense(@PathVariable("id") String id, ModelMap modelMap) {

        boolean status = dao.delete(Integer.parseInt(id));
        if (status) {
            modelMap.addAttribute("sm", "MonthlyExpense delete Successfully");
        } else {
            modelMap.addAttribute("em", "MonthlyExpense Not Delete");
        }

        return "redirect:/MonthlyExpenseDash";
    }

}
