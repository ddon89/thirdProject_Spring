package sesoc.global.escape.dao;

import java.util.ArrayList;

import sesoc.global.escape.vo.App_ClearRecode;
import sesoc.global.escape.vo.Users;

public interface AppDAO {

	Users app_login(Users users);
	
	ArrayList<App_ClearRecode> app_getClearRecode(Users users);
	String app_userProfile(Users users);

}//interface
