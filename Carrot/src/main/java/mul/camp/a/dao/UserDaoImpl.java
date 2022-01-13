package mul.camp.a.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.camp.a.dto.UserDto;
@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired
	SqlSession session;
	
	String ns ="User.";

	@Override
	public int addUser(UserDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int upsdateUser(UserDto dto) {
		int count = session.update(ns + "updateUserInfo",dto); 
		return count;
	}

	@Override
	public int deleteUser(int uid) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserDto getUser(int uid) {
		UserDto dto = session.selectOne(ns + "userInfo", uid);
		return dto;
	}

	@Override
	public UserDto getUser(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDto[] getUserList() {
		// TODO Auto-generated method stub
		return null;
	}

}
