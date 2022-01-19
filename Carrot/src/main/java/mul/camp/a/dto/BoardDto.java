package mul.camp.a.dto;

import java.io.Serializable;

public class BoardDto implements Serializable{
    
    private int bid;
    private String name;
    
    public BoardDto() {
	}
    
    public BoardDto(int bid, String name) {
        this.bid = bid;
        this.name = name;
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "BoardDto [bid=" + bid + ", name=" + name + "]";
    }
}
