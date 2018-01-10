package sesoc.global.escape.vo;

/**
 * Created by KIM on 2017-12-29.
 */

public class App_TacticsGroup {
    private String mapTitle;
    private String tacticsWriter;
    private String tacticsContent;

    private int listNo;
    private String tacticsTitle;
    private String reportDate;

    public App_TacticsGroup() {
    }

    public App_TacticsGroup(String mapTitle, String tacticsWriter, String tacticsContent,
                            int listNo, String tacticsTitle, String reportDate) {
        this.mapTitle = mapTitle;
        this.tacticsWriter = tacticsWriter;
        this.tacticsContent = tacticsContent;
        this.listNo = listNo;
        this.tacticsTitle = tacticsTitle;
        this.reportDate = reportDate;
    }

    public String getMapTitle() {
        return this.mapTitle;
    }

    public String getTacticsWriter() {
        return this.tacticsWriter;
    }

    public String getTacticsContent() {
        return this.tacticsContent;
    }

    public int getListNo() {
        return this.listNo;
    }

    public String getTacticsTitle() {
        return tacticsTitle;
    }

    public String getReportDate() {
        return reportDate;
    }

    public void setMapTitle(String mapTitle) {
        this.mapTitle = mapTitle;
    }

    public void setTacticsWriter(String tacticsWriter) {
        this.tacticsWriter = tacticsWriter;
    }

    public void setTacticsContent(String tacticsContent) {
        this.tacticsContent = tacticsContent;
    }

    public void setListNo(int listNo) {
        this.listNo = listNo;
    }

    public void setTacticsTitle(String tacticsTitle) {
        this.tacticsTitle = tacticsTitle;
    }

    public void setReportDate(String reportDate) {
        this.reportDate = reportDate;
    }

    @Override
    public String toString() {
        return "방번호: " + this.listNo + "||공략제목: " + this.tacticsTitle +
                "||작성일: " + this.reportDate + "||맵이름: " + this.mapTitle +
                "||작성자: " + this.tacticsWriter + "||내용: " + this.tacticsContent;
    }
}
