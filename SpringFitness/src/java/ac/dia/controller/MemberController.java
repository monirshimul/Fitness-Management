/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.controller;

import ac.dia.dao.MemberDao;
import ac.dia.pojo.Member;
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
 * @author Monir
 */
@Controller
public class MemberController {

   @RequestMapping(value = "/Member", method = RequestMethod.GET)
    public String indexPage(){
        return "Member";
}
}
