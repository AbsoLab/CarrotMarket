package mul.camp.a.dto;

import java.io.Serializable;
import java.util.Date;

public class ReplyDto implements Serializable{
    
    private int rid;
    private String content;
    private Date writedate;

    private int ref;
    private int step;
    private int depth;

    private int uid;
    private int cid;
    private String id;


    public ReplyDto() {	}

    public ReplyDto(String content, int uid, int cid) {
        this.setContent(content);
        this.setUid(uid);
        this.setCid(cid);
    }

    public ReplyDto(String content, int ref, int uid, int cid) {
        this.setContent(content);
        this.setRef(ref);
        this.setUid(uid);
        this.setCid(cid);
    }

    public ReplyDto(int rid, String content, Date writedate, int ref, int step, int depth, int uid, int cid, String id) {
        this.rid = rid;
        this.content = content;
        this.writedate = writedate;
        this.ref = ref;
        this.step = step;
        this.depth = depth;
        this.uid = uid;
        this.cid = cid;
        this.setId(id);
    }

    public int getRid() {
        return rid;
    }
    public void setRid(int rid) {
        this.rid = rid;
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
    public int getRef() {
        return ref;
    }
    public void setRef(int ref) {
        this.ref = ref;
    }
    public int getStep() {
        return step;
    }
    public void setStep(int step) {
        this.step = step;
    }
    public int getDepth() {
        return depth;
    }
    public void setDepth(int depth) {
        this.depth = depth;
    }
    public int getUid() {
        return uid;
    }
    public void setUid(int uid) {
        this.uid = uid;
    }
    public int getCid() {
        return cid;
    }
    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "ReplyDto [cid=" + cid + ", content=" + content + ", depth=" + depth + ", ref=" + ref + ", rid=" + rid
                + ", step=" + step + ", uid=" + uid + ", writedate=" + writedate + "]";
    }
}
