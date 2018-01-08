package sesoc.global.escape.vo;

public class App_DirectMessage {
	int num;
	String user_id;
    String writer;
    String content;
    String date;
    String isChecked;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   

    public App_DirectMessage(){}

    public App_DirectMessage(int num, String writer, String title, String content, String date, String isChecked) {
		this.num = num;
		this.writer = writer;
		this.content = content;
		this.date = date;
		this.isChecked = isChecked;
	}

	public void setNum(int num) {
        this.num = num;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getWriter() {
        return writer;
    }

    public String getContent() {
        return content;
    }

    public String getDate() {
        return date;
    }

    public int getNum() {
        return num;
    }
    
    public String getIsChecked() {
		return isChecked;
	}

	public void setIsChecked(String isChecked) {
		this.isChecked = isChecked;
	}
	
	

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "App_DirectMessage [num=" + num + ", user_id=" + user_id + ", writer=" + writer + ", content=" + content
				+ ", date=" + date + ", isChecked=" + isChecked + "]";
	}

}
