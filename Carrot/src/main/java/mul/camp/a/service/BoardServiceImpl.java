package mul.camp.a.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.camp.a.dao.BoardDao;
import mul.camp.a.dao.ContentDao;
import mul.camp.a.dto.BoardDto;
import mul.camp.a.dto.ContentDto;
import mul.camp.a.dto.ReplyDto;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDao dao;
	@Autowired
	ContentDao cdao;
	
	@Override
	public ContentDto[] boardList(int bid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ContentDto content(int cid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean writeContent(ContentDto dto) {
		
		int n = cdao.addContent(dto);
		return n>0 ? true:false;
	}

	@Override
	public boolean updateContent(int uid, ContentDto dto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteContent(int uid, int cid) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean writeReply(ReplyDto dto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateReply(int uid, ReplyDto dto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteReply(int uid, int rid) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<BoardDto> qnalist() {
		
		return dao.qnalist();
	}

	@Override
	public List<ContentDto> qnaCont(int bid, String search) {
		
			return dao.qnaCont(bid, search);
	}

	
    
}
