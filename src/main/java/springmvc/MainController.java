package springmvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	@Autowired
	MainDao maindao;
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/reg")
	public String reg() {
		return "registration";
	}
	
	//for saving user data
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public String savedata(@ModelAttribute("rm")RegModel rm) {
		maindao.saveUser(rm);
		return "login";
	}
	
	//for login
	@RequestMapping(value = "/dologin", method = RequestMethod.POST)
	public String login(@ModelAttribute("lm") LogModel lm) {
		List<RegModel>list=maindao.login(lm);
		if(list!=null)
		{
			return "redirect:/viewtable";
		}
		else {
			return "login";
		}
	}
	
	
	//to view user
	@RequestMapping("/viewtable")
	public String getUser(Model model) {
		List<RegModel> list1 = maindao.getUser();
		model.addAttribute("list1",list1);
		
		return "dashboard";
	}
	
	@RequestMapping("/edit/{id}")
	public String getElementById(@PathVariable int id, Model model) {
		List<RegModel>list=maindao.getUserById(id);
		model.addAttribute("list",list);
		return "update";	
	}
	
    //update
	@RequestMapping(value="/update",method=RequestMethod.POST) 
	  public String getUpdateData(@ModelAttribute("rm")RegModel rm)
	   { 
		
	   	maindao.getUpdateData(rm); 
	   
	  return "redirect:/viewtable";
	   }
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable int id) {
		maindao.delete(id);
		return "registration";
	}
	

}
