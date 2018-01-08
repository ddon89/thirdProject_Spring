package sesoc.global.escape.vo;

public class App_ClearRecode {
	String id;
    String mapTitle;
    String clearTime;
    String mapTitleImg;
    double star;

    public App_ClearRecode(){}

    public App_ClearRecode(String id, String mapTitle, String clearTime, double star) {
        this.id = id;
        this.mapTitle = mapTitle;
        this.clearTime = clearTime;
        this.star = star;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setMapTitle(String mapTitle) {
        this.mapTitle = mapTitle;
    }

    public void setClearTime(String clearTime) {
        this.clearTime = clearTime;
    }

    public void setStar(double star) {
        this.star = star;
    }

    public void setMapTitleImg(String mapTitleImg) {
        this.mapTitleImg = mapTitleImg;
    }

    public String getId() {
        return id;
    }

    public String getMapTitle() {
        return mapTitle;
    }

    public String getClearTime() {
        return clearTime;
    }

    public double getStar() {
        return star;
    }

    public String getMapTitleImg() {
        return mapTitleImg;
    }

	@Override
	public String toString() {
		return "App_ClearRecode [id=" + id + ", mapTitle=" + mapTitle + ", clearTime=" + clearTime + ", mapTitleImg="
				+ mapTitleImg + ", star=" + star + "]";
	}
    
}
