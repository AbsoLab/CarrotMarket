package mul.camp.a.dto;

import java.util.Date;

public class UserDto {
    
    private int uid         = -1;        
    private String id       = "";
    private String pw       = "";
    private String name     = "";
    private Date birthdate  = new Date();
    private String email    = "";
    private String phone    = "";
    private String location = "";

    // 기본 생성자
    public UserDto(int uid, String id, String pw, String name, Date birthdate, String email, String phone, String location) {
        this.setUid(uid);
        this.setId(id);
        this.setPw(pw);
        this.setName(name);
        this.setBirthdate(birthdate);
        this.setEmail(email);
        this.setPhone(phone);
        this.setLocation(location);
    }

    // 로그인을 위한 생성자
    public UserDto(String id, String pw) {
        this.setId(id);
        this.setPw(pw);
    }

    
    @Override
    public String toString() {
        return "UserDto [birthdate=" + birthdate + ", email=" + email + ", id=" + id + ", location=" + location
                + ", name=" + name + ", phone=" + phone + ", pw=" + pw + ", uid=" + uid + "]";
    }

    // Getter / Setter
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
