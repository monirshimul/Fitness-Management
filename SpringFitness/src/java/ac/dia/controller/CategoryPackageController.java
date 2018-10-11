/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.controller;

import ac.dia.dao.CategoryPackageDao;
import ac.dia.pojo.CategoryPackage;
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
 * @author Benzir
 */
@Controller
public class CategoryPackageController {
   
     @Autowired
    public CategoryPackageDao dao1;
     
     
        @RequestMapping(value = "/CatagoryPackageDash", method = RequestMethod.GET)
    public String loadCategoryPackage(ModelMap modelMap, HttpServletRequest request) {
        List<CategoryPackage> categoryPackages = dao1.getAllCategoryPackage();
        modelMap.addAttribute("categoryPackages", categoryPackages);

        modelMap.addAttribute("sm", request.getParameter("sm"));
        modelMap.addAttribute("em", request.getParameter("em"));

        return "CatagoryPackageDash";
    }
    
     @RequestMapping(value = "/saveCategoryPackage", method = RequestMethod.POST)
    public String saveCategoryPackage(ModelMap modelMap, HttpServletRequest request) {
        try {
            CategoryPackage cp = new CategoryPackage();
            cp.setCategoryName(request.getParameter("categoryName"));
            cp.setPackageName(request.getParameter("packageName"));
            cp.setPrice(request.getParameter("price"));
            cp.setDuration(request.getParameter("duration"));
            boolean status = dao1.saveCategoryPackage(cp);
            if (status) {
                modelMap.addAttribute("sm", "CategoryPackage Saved Successfully");
            } else {
                modelMap.addAttribute("em", "CategoryPackage dont Saved ");

            }
        } catch (Exception e) {
            modelMap.addAttribute("em", "Error :" + e.getMessage());
        }
        return "redirect:/CatagoryPackageDash";
    }
    
      @RequestMapping(value = "/editCategoryPackage/{id}", method = RequestMethod.GET)
    public String editCategoryPackage(@PathVariable("id") String id, ModelMap modelMap) {

       CategoryPackage categoryPackage= dao1.getCategoryPackage(Integer.parseInt(id));
        modelMap.addAttribute("categoryPackage", categoryPackage);
        modelMap.addAttribute("categoryPackages", dao1.getAllCategoryPackage());
        return "CatagoryPackageDash";
    }
   

    
     @RequestMapping(value = "/updateCategoryPackage", method = RequestMethod.POST)
    public String updateCategoryPackage(ModelMap modelMap, HttpServletRequest request) {
        
            CategoryPackage cp = new CategoryPackage();
            cp.setCategoryName(request.getParameter("categoryName"));
            cp.setPackageName(request.getParameter("packageName"));
            cp.setPrice(request.getParameter("price"));
            cp.setDuration(request.getParameter("duration"));
          try{
              cp.setCategoryPackageId(Integer.parseInt(request.getParameter("categoryPackageId")));
              boolean status=dao1.updateCategoryPackage(cp);
               if (status) {
                modelMap.addAttribute("sm", "catagoryPackage Update Successfully");
            } else {
                modelMap.addAttribute("em", "catagoryPackage Not Update");
            }
          }
        catch (Exception e) {
             modelMap.addAttribute("em", "Error :" + e.getMessage());
        }
        return "redirect:/CatagoryPackageDash";
    }
   
      @RequestMapping(value = "/deleteCategoryPackage/{id}", method = RequestMethod.GET)
    public String deleteCategoryPackage(@PathVariable("id") String id, ModelMap modelMap) {

        boolean status = dao1.deleteCategoryPackage(Integer.parseInt(id));
        if (status) {
            modelMap.addAttribute("sm", "CategoryPackage delete Successfully");
        } else {
            modelMap.addAttribute("em", "CategoryPackage Not Delete");
        }

        return "redirect:/CatagoryPackageDash";
    }
    
}
