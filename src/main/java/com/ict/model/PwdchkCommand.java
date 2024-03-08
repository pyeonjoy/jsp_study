package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.MemberVO;

public class PwdchkCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		request.setAttribute("id", id);
		request.setAttribute("pwd", pwd);
		
		
		return "User?cmd=pwd";
	}

}
