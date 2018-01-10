package sesoc.global.escape.dao;

import sesoc.global.escape.vo.Users;

public interface AppDAO {

	Users app_login(Users users);
	public Users app_getInfo(String id);
}//interface
