package sesoc.global.escape.vo;

/**
 * Created by KIM on 2017-12-29.
 */

public class App_TacticsParentGroup {
    private int listNo;
    private String tacticsTitle;
    private String date;

    public App_TacticsParentGroup(int listNo, String title, String date) {
        this.listNo = listNo;
        this.tacticsTitle = title;
        this.date = date;
    }

    public int getListNo() {
        return listNo;
    }

    public String getTacticsTitle() {
        return tacticsTitle;
    }

    public String getDate() {
        return date;
    }
}
