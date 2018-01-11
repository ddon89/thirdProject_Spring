package sesoc.global.escape.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import sesoc.global.escape.dao.AppDAO;
import sesoc.global.escape.vo.*;

import java.util.ArrayList;
import java.util.HashMap;

@Repository
public class AppRepository {

    @Autowired
    SqlSession sqlSession;

    public Users app_login(String id, String pw) {
        AppDAO dao = sqlSession.getMapper(AppDAO.class);

        return dao.app_login(new Users(id, pw));
    }//app_login


    public ArrayList<App_ClearRecode> app_getClearRecode(Users users) {
        AppDAO dao = sqlSession.getMapper(AppDAO.class);
        return dao.app_getClearRecode(users);
    }//getClearRecord

    public String app_userProfile(Users users) {
        AppDAO dao = sqlSession.getMapper(AppDAO.class);
        return dao.app_userProfile(users);
    }//getUserProfilePicture

    public ArrayList<App_DirectMessage> app_getDirectMessage(Users users) {
        AppDAO dao = sqlSession.getMapper(AppDAO.class);
        return dao.app_getDirectMessage(users);
    }//getDirectMessage

    public void app_checkDM(App_DirectMessage dm) {
        AppDAO dao = sqlSession.getMapper(AppDAO.class);
        dao.app_checkDM(dm);
    }//checkDM

    public int app_sendDM(App_DirectMessage dm) {
        AppDAO dao = sqlSession.getMapper(AppDAO.class);
        return dao.app_sendDM(dm);
    }//sendDM - insertDM

    public Object[] app_getTacticsData(String searchType, String searchWord) {
        HashMap<String, String> param = new HashMap<>();
        param.put("searchType", searchType);
        param.put("searchWord", searchWord);

        AppDAO dao = sqlSession.getMapper(AppDAO.class);
        ArrayList<App_TacticsGroup> result = dao.app_getTacticsData(param);
        App_TacticsParentGroup parent;
        App_TacticsChildGroup child;
        ArrayList<App_TacticsParentGroup> parentGroup = new ArrayList<>();
        ArrayList<App_TacticsChildGroup> childGroup = new ArrayList<>();

        for (int i = 0; i < result.size(); i++) {
            // for (int j = 0; j < 3)
            parent = new App_TacticsParentGroup(
                    result.get(i).getListNo(),
                    result.get(i).getTacticsTitle(),
                    result.get(i).getReportDate());
            child = new App_TacticsChildGroup(
                    result.get(i).getMapTitle(),
                    result.get(i).getTacticsWriter(),
                    result.get(i).getTacticsContent()
            );
            parentGroup.add(parent);
            childGroup.add(child);
        }

        Object[] data = new Object[]{parentGroup, childGroup};
        return data;
    }


	public ArrayList<RoomMap> app_getMapInfo() {
		System.out.println("app_getMapInfo repo");
		AppDAO dao = sqlSession.getMapper(AppDAO.class);
		return dao.app_getMapInfo();
	}//app_getMapInfo
}//class
