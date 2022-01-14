package mul.camp.a.service;

import java.util.List;

import mul.camp.a.dto.UserDto;

public interface UserService {
    
     // 로그인
     public UserDto login(UserDto dto);
    
     // 회원가입
     public boolean register(UserDto dto);
     
     // 아이디 중복 확인
     public boolean checkIdDup(String id);
     
     // 유저 정보 수정
     public boolean updateUserInfo(UserDto dto);
     
     // 유저 정보 확인
     public UserDto userInfo(int uid);
     
     // 회원 탈퇴
     public boolean deleteAccount(int uid);
     
     // 유저 목록 (관리자 페이지)
     public List<UserDto> userList();
}
