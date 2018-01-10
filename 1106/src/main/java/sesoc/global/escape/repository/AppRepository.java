package sesoc.global.escape.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sesoc.global.escape.dao.AppDAO;
import sesoc.global.escape.vo.Users;

@Repository
public class AppRepository {

	@Autowired
	SqlSession sqlSession;
	
	public Users app_login(String id, String pw) {
		AppDAO dao = sqlSession.getMapper(AppDAO.class);
		
		return dao.app_login(new Users(id, pw));
	}//app_login
	
	
	public Users app_getInfo(String id){
		AppDAO dao = sqlSession.getMapper(AppDAO.class);
		return dao.app_getInfo(id);
	};
}//class
