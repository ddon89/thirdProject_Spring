package sesoc.global.escape.vo;

public class App_DirectMessage {
	int num;
    String writer;
    String title;
    String content;
    String date;

    public App_DirectMessage(){}

    public App_DirectMessage(int num, String writer, String title, String content, String date) {
        this.num = num;
        this.writer = writer;
        this.title = title;
        this.content = content;
        this.date = date;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public String getTitle() {
        return title;
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

    @Override
    public String toString() {
        return "DirectMessage{" +
                "writer='" + writer + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", date='" + date + '\'' +
                '}';
    }
}
