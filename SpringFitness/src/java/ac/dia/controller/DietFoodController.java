/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.controller;

import ac.dia.dao.DietFoodDao;
import ac.dia.pojo.DietFood;
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
public class DietFoodController {
    
    
    @Autowired
    private DietFoodDao dao;
    
    
     @RequestMapping(value = "/dietfoodpage", method = RequestMethod.GET)
    public String loaddietfoodpage(ModelMap modelMap, HttpServletRequest request) {
        List<DietFood> dietfoods = dao.getAllDietFood();
        modelMap.addAttribute("dietfoods", dietfoods);

        modelMap.addAttribute("sm", request.getParameter("sm"));
        modelMap.addAttribute("em", request.getParameter("em"));

        return "dietfoodpage";

    }
    
     @RequestMapping(value = "/saveDietFood", method = RequestMethod.POST)
    public String saveDietFood(ModelMap modelMap, HttpServletRequest request) {

       DietFood df = new DietFood();
       df.setDietFoodId(Integer.parseInt(request.getParameter("dietFoodId")));
        df.setDietFoodName(request.getParameter("dietFoodName"));
        df.setCalorie(Integer.parseInt(request.getParameter("calorie")));
        try {

            df.setDietFoodId(Integer.parseInt(request.getParameter("dietFoodId")));

            boolean status = dao.saveDietFood(df);
            if (status) {
                modelMap.addAttribute("sm", " DietFood  Saved Successfully");
            } else {
                modelMap.addAttribute("em", " DietFood  Not Saved ");
            }
        } catch (Exception e) {

            modelMap.addAttribute("em", "String can't convert into number" + e.getMessage());
        }
        return "redirect:/dietfoodpage";
    }
    
      @RequestMapping(value = "/editDietFood/{id}", method = RequestMethod.GET)
   public String editDietFood(@PathVariable("id") String id, ModelMap modelMap) {
        DietFood d =dao.getDietFood(Integer.parseInt(id));
      
      
      modelMap.addAttribute("df", d);
        modelMap.addAttribute("dietfoods", dao.getAllDietFood());

        return "dietfoodpage";

   }
   
    @RequestMapping(value="/updateDietFood", method=RequestMethod.POST)  
 public String updateDietFood(ModelMap modelMap, HttpServletRequest request){
     
      DietFood  df=new   DietFood ();
  df.setDietFoodId(Integer.parseInt(request.getParameter("dietFoodId")));
        df.setDietFoodName(request.getParameter("dietFoodName"));
        df.setCalorie(Integer.parseInt(request.getParameter("calorie")));
        try{
           df.setDietFoodId(Integer.parseInt(request.getParameter("dietFoodId")));
        boolean status =dao.updateDietFood(df);
        if(status){
             modelMap.addAttribute("sm","DietFood Update Successfully"); 
        }else{
               modelMap.addAttribute("em","DietFood Not Update "); 
        }
    }catch(Exception e){
        
               modelMap.addAttribute("em","String can't convert into number"+e.getMessage()); 
            }
    return "redirect:/dietfoodpage";
 }
    
    @RequestMapping(value = "/deleteDietFood/{id}", method = RequestMethod.GET)
   public String deleteDietFood(@PathVariable("id") String id, ModelMap modelMap) {
       boolean status =dao.deleteDietFood(Integer.parseInt(id));
      
       if(status){
             modelMap.addAttribute("sm","DiedFood Delete Successfully"); 
        }else{
               modelMap.addAttribute("em","DietFood Not delete "); 
        }
       return "redirect:/dietfoodpage";
   }
   
   
    
}
