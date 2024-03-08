package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PwdCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.println("pwdcommand id: " + id);
		request.setAttribute("id", id);
		request.setAttribute("pwd", pwd);
		
		return "userMembers/pwdcheck.jsp";
	}

}
