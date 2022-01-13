package mul.camp.a.dto;

import java.util.Arrays;
import java.util.Date;

public class ContentDto {
    
    private int cid;
    private String title;
    private String content;
    private Date writedate;
    private int uid;
    private int bid;
    private ReplyDto[] reply;
    
    public ContentDto(int cid, String title, String content, Date writedate, int uid, int bid) {
        this.cid = cid;
        this.title = title;
        this.content = content;
        this.writedate = writedate;
        this.uid = uid;
        this.bid = bid;
    }

    public ContentDto(int cid, String title, String content, Date writedate, int uid, int bid, ReplyDto[] reply) {
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

    public ReplyDto[] getReply() {
        return reply;
    }

    public void setReply(ReplyDto[] reply) {
        this.reply = reply;
    }

    @Override
    public String toString() {
        return "ContentDto [bid=" + bid + ", cid=" + cid + ", content=" + content + ", reply=" + Arrays.toString(reply)
                + ", title=" + title + ", uid=" + uid + ", writedate=" + writedate + "]";
    }

    
}
