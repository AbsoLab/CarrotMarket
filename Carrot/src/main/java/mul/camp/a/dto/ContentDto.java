package mul.camp.a.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ContentDto implements Serializable{
    
    private int cid;
    private String title;
    private String content;
    private Date writedate;
    private int uid;
    private int bid;
    private List<ReplyDto> reply;
    private String id;
    // 파일 업로드용 추가
    private String fileName;
    private MultipartFile uploadFile;
    
    public ContentDto() {
    }

    public ContentDto(String title, String content, int uid, int bid) {
        this.setTitle(title);
        this.setContent(content);
        this.setUid(uid);
        this.setBid(bid);
    }
    
    public ContentDto(int cid, String title, String content, Date writedate, int uid, int bid, String fileName, MultipartFile uploadFile) {
        this.cid = cid;
        this.title = title;
        this.content = content;
        this.writedate = writedate;
        this.uid = uid;
        this.bid = bid;
        // 파일 업로드용 추가
        this.fileName = fileName;
        this.uploadFile = uploadFile;
    }
    
    

    public ContentDto(int cid, String title, String content, Date writedate, int uid, int bid, List<ReplyDto> reply, String id) {
        this.cid = cid;
        this.title = title;
        this.content = content;
        this.writedate = writedate;
        this.uid = uid;
        this.bid = bid;
        this.reply = reply;
        this.setId(id);
    }

    public ContentDto(ContentDto dto) {
        this.cid = dto.cid;
        this.title = dto.title;
        this.content = dto.content;
        this.writedate = dto.writedate;
        this.uid = dto.uid;
        this.bid = dto.bid;
        this.reply = dto.reply;
        this.setId(dto.id);
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

    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    
    public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	@Override
	public String toString() {
		return "ContentDto [cid=" + cid + ", title=" + title + ", content=" + content + ", writedate=" + writedate
				+ ", uid=" + uid + ", bid=" + bid + ", reply=" + reply + ", id=" + id + ", fileName=" + fileName
				+ ", uploadFile=" + uploadFile + "]";
	}
	
	
	

    
}
