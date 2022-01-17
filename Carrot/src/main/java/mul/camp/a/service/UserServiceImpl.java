package mul.camp.a.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.camp.a.dao.UserDao;
import mul.camp.a.dto.UserDto;

@Service
public class UserServiceImpl implements UserService {
    
	@Autowired
	UserDao dao;
	
	@Override
	public List<UserDto> getTotal(String total) {
		return dao.getTotal(total);
	}
	
	public boolean deleteUser(int uid) {
		int n = dao.deleteUser(uid);
		return n>0 ? true:false;
	}
}
