package mul.camp.a.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.camp.a.dto.UserDto;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	SqlSession session;
	
	String ns = "Member.";

	@Override
	public int addUser(mul.camp.a.dto.UserDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int upsdateUser(mul.camp.a.dto.UserDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteUser(int uid) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public mul.camp.a.dto.UserDto getUser(int uid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public mul.camp.a.dto.UserDto getUser(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public mul.camp.a.dto.UserDto[] getUserList() {
		// TODO Auto-generated method stub
		return null;
	}
	
	//로그인 UserDaoImpl
	@Override
	public UserDto login(UserDto dto) {
		System.out.println("dao진입성공");
		return session.selectOne(ns + "login", dto);
	}

	

}
