package sesoc.global.escape.vo;

public class RoomMap{
	private int no;
	private String user_id;
	private String title;
	private String titleimg;
	private String content;
	private int rank;
	private String theme;
	private String abgtime;
	private String deadtime;
	private String inputdate;
	private double star;
	
	public RoomMap() {
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public String getAbgtime() {
		return abgtime;
	}
	public void setAbgtime(String abgtime) {
		this.abgtime = abgtime;
	}
	public String getDeadtime() {
		return deadtime;
	}
	public void setDeadtime(String deadtime) {
		this.deadtime = deadtime;
	}
	public String getInputdate() {
		return inputdate;
	}
	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}
	
	public String getTitleimg() {
		return titleimg;
	}

	public void setTitleimg(String titleimg) {
		this.titleimg = titleimg;
	}

	public double getStar() {
		return star;
	}

	public void setStar(double star) {
		this.star = star;
	}

	@Override
	public String toString() {
		return "RoomMap [no=" + no + ", user_id=" + user_id + ", title=" + title + ", content=" + content + ", rank="
				+ rank + ", theme=" + theme + ", abgtime=" + abgtime + ", deadtime=" + deadtime + ", inputdate="
				+ inputdate + ", star=" + star + "]";
	}

}
