package mul.camp.a.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.camp.a.dao.BoardDao;
import mul.camp.a.dao.ContentDao;
import mul.camp.a.dao.ReplyDao;
import mul.camp.a.dto.ContentDto;
import mul.camp.a.dto.ReplyDto;
@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	ContentDao cdao;
	@Autowired
	ReplyDao rdao;
	@Autowired
	BoardDao bdao;

	@Override
	public List<ContentDto> boardList(int bid) {
		List<ContentDto> boardlist = cdao.getList(bid);
		return boardlist;
	}

	@Override
	public ContentDto content(int cid) {
		ContentDto dto = cdao.getContent(cid);
		return dto;
	}

	@Override
	public boolean writeContent(ContentDto dto) {
		int count = cdao.addContent(dto);
		return count > 0 ?true:false;
	}

	@Override
	public boolean updateContent(int uid, ContentDto dto) {
		int count = cdao.updateContent(dto);
		return count > 0 ?true:false;
	}

	@Override
	public boolean deleteContent(int uid, int cid) {
		
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
