package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.MemberDAO;
import com.ict.db.MemberVO;

public class LoginOkCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
/*		String idx = request.getParameter("idx");
		MemberVO mvo = MemberDAO.loginchk(idx);
		request.setAttribute("mvo", mvo);*/
		        
		MemberVO mvo = new MemberVO();
		mvo.setId(request.getParameter("id"));
		mvo.setPwd(request.getParameter("pwd"));
		
		mvo = MemberDAO.loginchk(mvo);
		System.out.println(mvo);
		if (mvo==null) {
			System.out.println(" 로그인실패");
			return "User?cmd=login";
		}else {
			System.out.println(" 로그인성공");
			request.setAttribute("mvo", mvo);
			return "User?cmd=index";
			
		}
	
			
	
	}
	

}
