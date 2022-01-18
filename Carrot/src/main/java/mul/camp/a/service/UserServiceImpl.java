package mul.camp.a.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.camp.a.dao.UserDao;
import mul.camp.a.dto.UserDto;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao dao;
    
    @Override
    public UserDto login(UserDto dto) {
        
        String id = dto.getId();
        String pw = dto.getPw();

        UserDto userDto = dao.getUser(id);
        System.out.println(userDto);

        // 아이디가 틀림
        if (userDto == null) {
            
            return null;

        } else if (id.equals(userDto.getId()) && pw.equals(userDto.getPw())) {

            return userDto;

        // 비밀번호가 틀림
        } else {

            return null;
        }
    }

    @Override
    public boolean register(UserDto dto) {
        
        return dao.addUser(dto) > 0;
    }

    @Override
    public boolean checkIdDup(String id) {
        
        return dao.getUser(id) != null;
    }

    @Override
    public boolean updateUserInfo(UserDto dto) {

        return dao.updateUser(dto) > 0;
    }

    @Override
    public UserDto userInfo(int uid) {
        
        return dao.getUser(uid);
    }

    @Override
    public boolean deleteAccount(int uid) {
        
        return dao.deleteUser(uid) > 0;
    }

    @Override
    public List<UserDto> userList() {
        
        return dao.getUserList();
    }

    @Override
    public List<UserDto> getSearchList(String search) {
        
        return dao.getTotal(search);
    }
    
}
