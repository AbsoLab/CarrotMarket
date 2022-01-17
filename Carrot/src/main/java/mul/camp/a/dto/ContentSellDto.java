package mul.camp.a.dto;

import java.util.Arrays;
import java.util.Date;

public class ContentSellDto extends ContentDto {

    private String[] src;
    private String location;

    public ContentSellDto(int cid, String title, String content, Date writedate, int uid, int bid, String[] src, String location) {
        super(cid, title, content, writedate, uid, bid);
        this.src = src;
        this.location = location;
    }

    public ContentSellDto(int cid, String title, String content, Date writedate, int uid, int bid, ReplyDto[] reply, String[] src, String location) {
        super(cid, title, content, writedate, uid, bid, reply);
        this.src = src;
        this.location = location;
    }

    public String[] getSrc() {
        return src;
    }

    public void setSrc(String[] src) {
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
        return super.toString() + "ContentSellDto [location=" + location + ", src=" + Arrays.toString(src) + "]";
    }    
}
