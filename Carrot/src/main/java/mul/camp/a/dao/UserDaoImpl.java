package mul.camp.a.dao;

import mul.camp.a.dto.UserDto;

public class UserDaoImpl implements UserDao {

    private final static String NAMESPACE = "User.";
    private final static String NAMESPACE_ADD_USER = NAMESPACE + "addUser";
    private final static String NAMESPACE_UPDATE_USER = NAMESPACE + "updateUser";
    private final static String NAMESPACE_DELETE_USER = NAMESPACE + "deleteUser";
    private final static String NAMESPACE_GET_USER = NAMESPACE + "getUser";
    private final static String NAMESPACE_GET_USER_LIST = NAMESPACE + "getUserList";

    @Override
    public int addUser(UserDto dto) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int updateUser(UserDto dto) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int deleteUser(int uid) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public UserDto getUser(int uid) {
        // TODO Auto-generated method stub
        return null;
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
