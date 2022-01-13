package mul.camp.a.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDaoImpl implements BoardDao {

    public final static String NAMESPACE = "Board.";

    public final static String NAMESPACE_GET_BOARD_LIST = NAMESPACE + "getBoardList";

    @Autowired
    SqlSession session;

    @Override
    public List<String> getBoardList() {
        
        return session.selectList(NAMESPACE_GET_BOARD_LIST);
    }
    
}
