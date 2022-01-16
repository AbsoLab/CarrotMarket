package mul.camp.a.service;

import org.springframework.beans.factory.annotation.Autowired;

import mul.camp.a.dao.BoardDao;
import mul.camp.a.dao.ContentDao;
import mul.camp.a.dao.ReplyDao;
import mul.camp.a.dto.ContentDto;
import mul.camp.a.dto.ReplyDto;

public class BoardServiceImpl implements BoardService{
	
	@Autowired
	ContentDao cdao;
	@Autowired
	ReplyDao rdao;
	@Autowired
	BoardDao bdao;

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
		// TODO Auto-generated method stub
		return false;
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

}
