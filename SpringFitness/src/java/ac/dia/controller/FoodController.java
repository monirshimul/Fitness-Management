/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.controller;

import ac.dia.dao.FoodDao;
import ac.dia.pojo.Food;
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
 * @author Muiduzzaman Lipu
 */
@Controller
public class FoodController {
    
    @Autowired
    private FoodDao foodDao;
    
    @RequestMapping(value = "/foodPage", method = RequestMethod.GET)
    public String loadFoodPage(ModelMap modelMap, HttpServletRequest request) {

        List<Food> foods= foodDao.getAll();
        modelMap.addAttribute("foods", foods);

        modelMap.addAttribute("sm", request.getParameter("sm"));
        modelMap.addAttribute("em", request.getParameter("em"));

        return "foodPage";
    }
    
    @RequestMapping(value = "/saveFood", method = RequestMethod.POST)
    public String saveFood(ModelMap modelMap, HttpServletRequest request) {

        Food food= new Food();
        food.setFoodName(request.getParameter("fname"));
        food.setQuantity(Integer.parseInt(request.getParameter("quantity")));
        food.setCalorie(Float.parseFloat(request.getParameter("calorie")));
        try {
            boolean status = foodDao.save(food);
            if (status) {
                modelMap.addAttribute("sm", "Food Saved Successfully");
            } else {
                modelMap.addAttribute("em", "Food not saved");
            }
        } catch (Exception e) {
            modelMap.addAttribute("em", "String can't convert into number");
        }

        return "redirect:/foodPage";
    }
    
    @RequestMapping(value = "/editFood/{id}", method = RequestMethod.GET)
    public String editFood(@PathVariable("id") String id, ModelMap modelMap) {

        Food f= foodDao.get(Integer.parseInt(id));

        modelMap.addAttribute("food", f);
        modelMap.addAttribute("foods", foodDao.getAll());

        return "foodPage";

    }
    
    @RequestMapping(value = "/updateFood", method = RequestMethod.POST)
    public String updateFood(ModelMap modelMap, HttpServletRequest request) {
        Food food= new Food();
        food.setFoodName(request.getParameter("fname"));
        food.setQuantity(Integer.parseInt(request.getParameter("quantity")));
        food.setCalorie(Float.parseFloat(request.getParameter("calorie")));
        try {
            food.setFoodId(Integer.parseInt(request.getParameter("fid")));

            boolean status = foodDao.update(food);
            if (status) {
                modelMap.addAttribute("sm", "Food Update Successfully");
            } else {
                modelMap.addAttribute("em", "Food not update");
            }
        } catch (Exception e) {
            modelMap.addAttribute("em", "String can't convert into number");
        }

        return "redirect:/foodPage";
    }
    
    @RequestMapping(value = "/deleteFood/{id}", method = RequestMethod.GET)
    public String deleteFood(@PathVariable("id") String id, ModelMap modelMap) {

        boolean status = foodDao.delete(Integer.parseInt(id));
        if (status) {
            modelMap.addAttribute("sm", "Food deleted Successfully");
        } else {
            modelMap.addAttribute("em", "Food not delete");
        }
        
        return "redirect:/foodPage";
    }
    
}
