package sesoc.global.escape.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import sesoc.global.escape.repository.AppRepository;
import sesoc.global.escape.vo.Users;

@Controller
public class AppContorller {

	@Autowired
	AppRepository repo;
	
	@RequestMapping(value = "app_login", method = RequestMethod.GET)
	@ResponseBody
	public String app_login(String id, String pw){
		Users users = repo.app_login(id, pw);
		// id, pw 가 일치하는 정보가 DB에 있으면 success, 없으면 fail
		if(users != null){
			System.out.println(users);
			return "success";
		}//if
		
		return "fail";
				
	}//app_logins
	
	@RequestMapping(value = "app_getInfo", method = RequestMethod.GET)
	@ResponseBody
	public Users app_getInfo(String id){
		Users users = repo.app_getInfo(id);
		
		return users;
	}//app_getInfo
	
}//class
