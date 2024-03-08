package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.MemberDAO;
import com.ict.db.MemberVO;

public class MypageCommand  implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		MemberVO mvo = new MemberVO();
		mvo.setId(request.getParameter("id"));
		mvo.setPwd(request.getParameter("pwd"));
		
		mvo = MemberDAO.loginchk(mvo);
		
	request.setAttribute("mvo", mvo);
		
		
		
		return "userMembers/mypage.jsp";
	}

}
