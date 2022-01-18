package mul.camp.a.dto;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class ContentDto implements Serializable{
	public ContentDto() {
		// TODO Auto-generated constructor stub
	}
    
    private int cid;
    private String title;
    private String content;
    private Date writedate;
    private int uid;
    private int bid;
    private List<ReplyDto> reply;
    
    public ContentDto(String title, String content, int uid, int bid) {
        this.setTitle(title);
        this.setContent(content);
        this.setUid(uid);
        this.setBid(bid);
    }

    public ContentDto(int cid, String title, String content, Date writedate, int uid, int bid) {
        this.cid = cid;
        this.title = title;
        this.content = content;
        this.writedate = writedate;
        this.uid = uid;
        this.bid = bid;
    }

    public ContentDto(int cid, String title, String content, Date writedate, int uid, int bid, List<ReplyDto> reply) {
        this.cid = cid;
        this.title = title;
        this.content = content;
        this.writedate = writedate;
        this.uid = uid;
        this.bid = bid;
        this.reply = reply;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
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

    public Date getWritedate() {
        return writedate;
    }

    public void setWritedate(Date writedate) {
        this.writedate = writedate;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public List<ReplyDto> getReply() {
        return reply;
    }

    public void setReply(List<ReplyDto> reply) {
        this.reply = reply;
    }

    @Override
    public String toString() {
        return "ContentDto [bid=" + bid + ", cid=" + cid + ", content=" + content + ", reply=" + reply
                + ", title=" + title + ", uid=" + uid + ", writedate=" + writedate + "]";
    }

    
}
