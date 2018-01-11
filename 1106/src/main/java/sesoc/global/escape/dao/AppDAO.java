package sesoc.global.escape.dao;

import java.util.ArrayList;
import java.util.HashMap;

import sesoc.global.escape.vo.App_ClearRecode;
import sesoc.global.escape.vo.App_DirectMessage;
import sesoc.global.escape.vo.App_TacticsGroup;
import sesoc.global.escape.vo.RoomMap;
import sesoc.global.escape.vo.Users;

public interface AppDAO {

	Users app_login(Users users);

	ArrayList<App_ClearRecode> app_getClearRecode(Users users);
	String app_userProfile(Users users);

	ArrayList<App_DirectMessage> app_getDirectMessage(Users users);
	void app_checkDM(App_DirectMessage dm);
	int app_sendDM(App_DirectMessage dm);

	ArrayList<App_TacticsGroup> app_getTacticsData(HashMap<String, String> param);

	ArrayList<RoomMap> app_getMapInfo();

}//interface
