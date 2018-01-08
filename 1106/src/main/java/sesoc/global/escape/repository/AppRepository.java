package sesoc.global.escape.repository;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.escape.dao.AppDAO;
import sesoc.global.escape.vo.App_ClearRecode;
import sesoc.global.escape.vo.App_DirectMessage;
import sesoc.global.escape.vo.Users;

@Repository
public class AppRepository {

	@Autowired
	SqlSession sqlSession;
	
	public Users app_login(String id, String pw) {
		AppDAO dao = sqlSession.getMapper(AppDAO.class);
		
		return dao.app_login(new Users(id, pw));
	}//app_login
	
	
	public ArrayList<App_ClearRecode> app_getClearRecode(Users users){
		AppDAO dao = sqlSession.getMapper(AppDAO.class);
		return dao.app_getClearRecode(users);		
	}//getClearRecord
	
	public String app_userProfile(Users users){
		AppDAO dao = sqlSession.getMapper(AppDAO.class);
		return dao.app_userProfile(users);
	}//getUserProfilePicture
	
	public ArrayList<App_DirectMessage> app_getDirectMessage(Users users){
		AppDAO dao = sqlSession.getMapper(AppDAO.class);
		return dao.app_getDirectMessage(users);
	}//getDirectMessage
	
	public void app_checkDM(App_DirectMessage dm){
		AppDAO dao = sqlSession.getMapper(AppDAO.class);
		dao.app_checkDM(dm);
	}//checkDM
	
	public String app_sendDM(App_DirectMessage dm){
		String message = null;
		AppDAO dao = sqlSession.getMapper(AppDAO.class);
		int result = dao.app_sendDM(dm);
		if(result != 0){
			message = dm.getUser_id() + " 님에게 DM을 전송하였습니다.";
		}else {
			message = "DM 전송에 실패하였습니다.";
		}
		System.out.println(message);
		return message;
	}//sendDM - insertDM
	
}//class
