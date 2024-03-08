package com.ict.model;

import java.lang.reflect.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.GuestDAO;
import com.ict.db.GuestVO;
import com.ict.db.MemberDAO;
import com.ict.db.MemberVO;

public class SignupokCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
			MemberVO mvo = new MemberVO();
			
			mvo.setId(request.getParameter("id"));
			mvo.setPwd(request.getParameter("pwd"));
			mvo.setName(request.getParameter("name"));
			mvo.setEmail(request.getParameter("email"));
			mvo.setAddr(request.getParameter("addr"));
			mvo.setPhone(request.getParameter("phone"));
			int res = MemberDAO.getinsert(mvo);
				
		return "User?cmd=index";
	}

}
