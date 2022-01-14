package mul.camp.a.dao;

import java.util.List;

import mul.camp.a.dto.UserDto;

public interface UserDao {
    
    // 입력받은 내용을 DB에 추가
    public int addUser(UserDto dto);

    // 입력받은 내용으로 DB에 수정
    public int updateUser(UserDto dto);

    // uid(유저)에 해당하는 유저를 DB에서 제거
    public int deleteUser(int uid);

    // uid(유저)에 해당하는 유저 정보 반환
    public UserDto getUser(int uid);

    // id에 해당하는 유저 정보 반환
    public UserDto getUser(String id);

    // 모든 유저의 정보 배열 반환
    public List<UserDto> getUserList();

}
