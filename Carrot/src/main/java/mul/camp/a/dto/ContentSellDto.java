package mul.camp.a.dto;

import java.util.Date;
import java.util.List;

public class ContentSellDto extends ContentDto {

    private List<String> src;
    private String location;

    public ContentSellDto(ContentDto dto, List<String> src) {
        super(dto);
        this.src = src;
    }

    public ContentSellDto(int cid, String title, String content, Date writedate, int uid, int bid, List<String> src, String location) {
        super(cid, title, content, writedate, uid, bid);
        this.src = src;
        this.location = location;
    }

    public ContentSellDto(int cid, String title, String content, Date writedate, int uid, int bid, List<ReplyDto> reply, List<String> src, String location, String id) {
        super(cid, title, content, writedate, uid, bid, reply, id);
        this.src = src;
        this.location = location;
    }

    public List<String> getSrc() {
        return src;
    }

    public void setSrc(List<String> src) {
        this.src = src;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @Override
    public String toString() {
        return super.toString() + "ContentSellDto [location=" + location + ", src=" + src.toString() + "]";
    }    
}
