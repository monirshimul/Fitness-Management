/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.controller;

import ac.dia.dao.TrailMemberDao;
import ac.dia.pojo.TrailMember;
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
public class TrailMemberController {
    
      @Autowired
    private TrailMemberDao dao;
      
      
      
     @RequestMapping(value = "/trailmemberpage", method = RequestMethod.GET)
    public String loadtrailmemberpage(ModelMap modelMap, HttpServletRequest request) {
        List<TrailMember> tms = dao.getAllTrailMember();
        modelMap.addAttribute("tms", tms);

        modelMap.addAttribute("sm", request.getParameter("sm"));
        modelMap.addAttribute("em", request.getParameter("em"));

        return "trailmemberpage";

    }
    
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String indexPage(ModelMap modelMap, HttpServletRequest request){
        modelMap.addAttribute("sm", request.getParameter("sm"));
        modelMap.addAttribute("em", request.getParameter("em"));
        return "index";
    }
    
     @RequestMapping(value = "/saveTrailMember", method = RequestMethod.POST)
    public String saveTrailMember(ModelMap modelMap, HttpServletRequest request) {

       TrailMember tm = new TrailMember();
          tm.setTrailMemberName(request.getParameter("trailMemberName"));
          tm.setPhone(request.getParameter("phone"));
          tm.setEmail(request.getParameter("email"));
        try {

            boolean status = dao.saveTrailMember(tm);
            if (status) {
                modelMap.addAttribute("sm", " TrailMember  Saved Successfully");
            } else {
                modelMap.addAttribute("em", " TrailMember Not Saved ");
            }
        } catch (Exception e) {

            modelMap.addAttribute("em", "String can't convert into number" + e.getMessage());
        }
        return "redirect:/trailmemberpage";
    }
    
    @RequestMapping(value = "/saveTrailMemberFromIndex", method = RequestMethod.POST)
    public String saveTrailMemberFromIndex(ModelMap modelMap, HttpServletRequest request) {

       TrailMember tm = new TrailMember();
          tm.setTrailMemberName(request.getParameter("trailMemberName"));
          tm.setPhone(request.getParameter("phone"));
          tm.setEmail(request.getParameter("email"));
        try {

            boolean status = dao.saveTrailMember(tm);
            if (status) {
                modelMap.addAttribute("sm", " Thank You for your Registration");
            } else {
                modelMap.addAttribute("em", " Registration is not Completed ");
            }
        } catch (Exception e) {

            modelMap.addAttribute("em", "String can't convert into number" + e.getMessage());
        }
        return "redirect:/index";
    }
    
     @RequestMapping(value = "/editTrailMember/{id}", method = RequestMethod.GET)
   public String editTrailMember(@PathVariable("id") String id, ModelMap modelMap) {
        TrailMember t =dao.getTrailMember(Integer.parseInt(id));
      
      
      modelMap.addAttribute("tm", t);
        modelMap.addAttribute("tms", dao.getAllTrailMember());

        return "trailmemberpage";

   }
    
    @RequestMapping(value="/updateTrailMember", method=RequestMethod.POST)  
 public String updateTrailMember(ModelMap modelMap, HttpServletRequest request){
     
       TrailMember tm = new TrailMember();
       tm.setTrailMemberId(Integer.parseInt(request.getParameter("trailMemberId")));
          tm.setTrailMemberName(request.getParameter("trailMemberName"));
          tm.setPhone(request.getParameter("phone"));
          tm.setEmail(request.getParameter("email"));
        try {

             tm.setTrailMemberId(Integer.parseInt(request.getParameter("trailMemberId")));

            boolean status = dao.updateTrailMember(tm);
            if (status) {
                modelMap.addAttribute("sm", " TrailMember  update Successfully");
            } else {
                modelMap.addAttribute("em", " TrailMember Not update ");
            }
        } catch (Exception e) {

            modelMap.addAttribute("em", "String can't convert into number" + e.getMessage());
        }
        return "redirect:/trailmemberpage";
    }
    
     @RequestMapping(value = "/deleteTrailMember/{id}", method = RequestMethod.GET)
   public String deleteTrailMember(@PathVariable("id") String id, ModelMap modelMap) {
       boolean status =dao.deleteTrailMember(Integer.parseInt(id));
      
       if(status){
             modelMap.addAttribute("sm","TrailMemberDelete Successfully"); 
        }else{
               modelMap.addAttribute("em","TrailMember Not delete "); 
        }
       return "redirect:/trailmemberpage";
   }
    
}
