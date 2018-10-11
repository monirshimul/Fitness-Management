/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.controller;

import ac.dia.dao.WorkoutDao;
import ac.dia.pojo.Workout;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Administrator
 */
@Controller
public class WorkoutController {

    @Autowired
    private WorkoutDao dao;

    @RequestMapping(value = "/workoutpage", method = RequestMethod.GET)
    public String loadworkoutpage(ModelMap modelMap, HttpServletRequest request) {
        List<Workout> workouts = dao.getAllWorkout();
        modelMap.addAttribute("workouts", workouts);

        modelMap.addAttribute("sm", request.getParameter("sm"));
        modelMap.addAttribute("em", request.getParameter("em"));

        return "workoutpage";

    }

    @RequestMapping(value = "/saveWorkout", method = RequestMethod.POST)
    public String saveWorkout(ModelMap modelMap, HttpServletRequest request) {

        Workout out = new Workout();
       out.setWorkoutId(Integer.parseInt(request.getParameter("workoutId")));
        out.setWorkoutName(request.getParameter("workoutName"));
        out.setCalorieBurn(Float.parseFloat(request.getParameter("calorieBurn")));
        try {

            out.setWorkoutId(Integer.parseInt(request.getParameter("workoutId")));

            boolean status = dao.saveWorkout(out);
            if (status) {
                modelMap.addAttribute("sm", "Workout Saved Successfully");
            } else {
                modelMap.addAttribute("em", "Workout Not Saved ");
            }
        } catch (Exception e) {

            modelMap.addAttribute("em", "String can't convert into number" + e.getMessage());
        }
        return "redirect:/workoutpage";
    }
    
     @RequestMapping(value = "/editWorkout/{id}", method = RequestMethod.GET)
   public String editWorkout(@PathVariable("id") String id, ModelMap modelMap) {
      Workout p =dao.getWorkout(Integer.parseInt(id));
      
      
      modelMap.addAttribute("out", p);
        modelMap.addAttribute("workouts", dao.getAllWorkout());

        return "workoutpage";

   }
   
    @RequestMapping(value="/updateWorkout", method=RequestMethod.POST)  
 public String updateWorkout(ModelMap modelMap, HttpServletRequest request){
     
    Workout out=new Workout();
   out.setWorkoutId(Integer.parseInt(request.getParameter("workoutId")));
        out.setWorkoutName(request.getParameter("workoutName"));
        out.setCalorieBurn(Float.parseFloat(request.getParameter("calorieBurn")));
        try{
            out.setWorkoutId(Integer.parseInt(request.getParameter("workoutId")));
        boolean status =dao.updateWorkout(out);
        if(status){
             modelMap.addAttribute("sm","Workout Update Successfully"); 
        }else{
               modelMap.addAttribute("em","Workout Not Update "); 
        }
    }catch(Exception e){
        
               modelMap.addAttribute("em","String can't convert into number"+e.getMessage()); 
            }
    return "redirect:/workoutpage";
 }
 
 @RequestMapping(value = "/deleteWorkout/{id}", method = RequestMethod.GET)
   public String deleteWorkout(@PathVariable("id") String id, ModelMap modelMap) {
       boolean status =dao.deleteWorkout(Integer.parseInt(id));
      
       if(status){
             modelMap.addAttribute("sm","Workout Delete Successfully"); 
        }else{
               modelMap.addAttribute("em","Workout Not delete "); 
        }
       return "redirect:/workoutpage";
   }

}
