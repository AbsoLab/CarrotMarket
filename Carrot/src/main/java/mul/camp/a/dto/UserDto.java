package mul.camp.a.dto;

import java.io.Serializable;

public class UserDto implements Serializable{
    int uid;
    String id;
    String pw;
    String name;
    String birtdate;
    String email;
    String phone;
    String location;
    
    public UserDto() {
		// TODO Auto-generated constructor stub
	}

	public UserDto(int uid, String id, String pw, String name, String birtdate, String email, String phone,
			String location) {
		super();
		this.uid = uid;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birtdate = birtdate;
		this.email = email;
		this.phone = phone;
		this.location = location;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirtdate() {
		return birtdate;
	}

	public void setBirtdate(String birtdate) {
		this.birtdate = birtdate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	@Override
	public String toString() {
		return "UserDto [uid=" + uid + ", id=" + id + ", pw=" + pw + ", name=" + name + ", birtdate=" + birtdate
				+ ", email=" + email + ", phone=" + phone + ", location=" + location + "]";
	}
	
    
}
