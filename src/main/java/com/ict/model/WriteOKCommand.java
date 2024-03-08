package com.ict.model;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.GuestDAO;
import com.ict.db.GuestVO;
import com.ict.db.VO;

public class WriteOKCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
	String content = request.getParameter("content");

	GuestVO gvo = new GuestVO();
	gvo.setName(name);
	gvo.setSubject(subject);
	gvo.setEmail(email);
	gvo.setPwd(pwd);
	gvo.setContent(content);
	
	int res = GuestDAO.getInsert(gvo);
		
	return "Guest?cmd=list";
	}
}
