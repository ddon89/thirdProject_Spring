package sesoc.global.escape.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import sesoc.global.escape.repository.AppRepository;
import sesoc.global.escape.vo.*;

@Controller
public class AppContorller {

    @Autowired
    AppRepository repo;

    @RequestMapping(value = "app_login", method = RequestMethod.GET)
    @ResponseBody
    public String app_login(String id, String pw) {
        Users users = repo.app_login(id, pw);

        // id, pw 가 일치하는 정보가 DB에 있으면 success, 없으면 fail
        if (users != null) {
            System.out.println(users);
            return "success";
        }//if

        return "fail";
    }//app_logins

    /**
     * 유저의 맵 클리어 기록을 받아온다
     *
     * @param id user_id
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "getClearRecord", method = RequestMethod.GET)
    public ArrayList<App_ClearRecode> app_mypage_clearRecord(String id) {
        Users users = new Users();
        users.setId(id);
        ArrayList<App_ClearRecode> clearRecord = repo.app_getClearRecode(users);

        for (App_ClearRecode c : clearRecord) System.out.println("클리어 기록 : " + c);
        return clearRecord;
    }//get_clearRecode

    @ResponseBody
    @RequestMapping(value = "getUserProfile", method = RequestMethod.GET)
    public String app_getUserProfile(String id) {
        System.out.println("현재 유저 : " + id);
        Users users = new Users();
        users.setId(id);
        String userProfilePic = repo.app_userProfile(users);
        System.out.println("현재 유저의 프사 : " + userProfilePic);
        return userProfilePic;
    }//get_userProfilePictureName

    /**
     * 유저의 DirectMessage들을 받아온다.
     *
     * @param id 유저 아이디
     * @return 여태까지 받은 DM
     */
    @ResponseBody
    @RequestMapping(value = "getDirectMessage", method = RequestMethod.GET)
    public ArrayList<App_DirectMessage> app_getDirectMessage(String id) {
        System.out.println("현재 유저 : " + id);
        Users users = new Users();
        users.setId(id);
        ArrayList<App_DirectMessage> dm = repo.app_getDirectMessage(users);
        for (App_DirectMessage d : dm) System.out.println("유저에게 온 DM : " + d);
        return dm;
    }//get_userProfilePictureName

    /**
     * DirectMessage 를 체크한다
     */
    @ResponseBody
    @RequestMapping(value = "checkDM", method = RequestMethod.GET)
    public void app_checkDM(int num) {
        System.out.println("안드로이드에서 DirectMessage " + num + " 번을 읽었습니다.");
        App_DirectMessage dm = new App_DirectMessage();
        dm.setNum(num);
        repo.app_checkDM(dm);
    }//DirectMessage Check

    /**
     * DirectMessage 를 체크한다
     */
    @ResponseBody
    @RequestMapping(value = "sendDM", method = RequestMethod.GET)
    public int app_sendDM(String writer, String user_id, String content) {
        App_DirectMessage dm = new App_DirectMessage();
        dm.setWriter(writer);
        dm.setUser_id(user_id);
        dm.setContent(content);
        System.out.println("메시지 보내기 옴 : " + dm);

        return repo.app_sendDM(dm);
    }//DirectMessage Check

    @RequestMapping(value = "getTacticsList", method = RequestMethod.GET)
    @ResponseBody
    public Object[] app_getTacticsList(String searchType, String searchWord) {
        Object[] tacticsList = repo.app_getTacticsData(searchType, searchWord);
        return tacticsList;
    }
    
    
    /**
     * MAP 테이블 정보를 모두 가져 온다.
     * */ 
    @RequestMapping(value = "app_getMapInfo", method = RequestMethod.GET)
    @ResponseBody
    public ArrayList<RoomMap> app_getMapInfo(){
    	System.out.println("app_getMapInfo IN");    
    	System.out.println(repo.app_getMapInfo());
    	return repo.app_getMapInfo();
    }//getMapInfo

}//class
