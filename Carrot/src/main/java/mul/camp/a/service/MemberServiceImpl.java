package mul.camp.a.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mul.camp.a.dao.MemberDao;
import mul.camp.a.dto.MemberDto;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDao dao;


}
