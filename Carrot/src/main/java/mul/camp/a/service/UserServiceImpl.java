package mul.camp.a.service;

import org.springframework.stereotype.Service;

import mul.camp.a.dto.UserDto;

@Service
public class UserServiceImpl implements UserService {

	@Override
	public boolean login(UserDto dto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean register(UserDto dto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean checkIdDup(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateUserInfo(UserDto dto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public UserDto userInfo(int uid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteAccount(int uid) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public UserDto[] userList() {
		// TODO Auto-generated method stub
		return null;
	}
    
}
