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
	public boolean updateContent(ContentDto dto) {
		int count = cdao.updateContent(dto);
		return count > 0 ?true:false;
	}

	@Override
	public boolean deleteContent(int cid) {
		int count = cdao.deleteContent(cid);
		return count > 0 ?true:false;
	}
	@Override
	public List<ReplyDto> replyList(int cid) {
		List<ReplyDto> list = rdao.getReplyList(cid);
		return list;
	}
	@Override
	public ReplyDto getReply(int rid) {
		ReplyDto dto = rdao.getReply(rid);
		return dto;
	}

	@Override
	public boolean writeReply(ReplyDto dto) {
		int count = rdao.addReply(dto);
		return count > 0 ?true:false;
	}

	@Override
	public boolean updateReply(ReplyDto dto) {
		int count = rdao.updateReply(dto);
		return count > 0 ?true:false;
	}

	@Override
	public boolean deleteReply(int rid) {
		int count = rdao.deleteReply(rid);
		return count > 0 ?true:false;
	}

	
	

}
