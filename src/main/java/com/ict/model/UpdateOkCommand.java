package com.ict.model;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.GuestDAO;
import com.ict.db.GuestVO;
import com.ict.db.VO;

public class UpdateOkCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		
		GuestVO gvo = new GuestVO();
		gvo.setIdx(idx);
		gvo.setName(request.getParameter("name"));
		gvo.setSubject(request.getParameter("subject"));
		gvo.setContent(request.getParameter("content"));
		gvo.setEmail(request.getParameter("email"));
		
		int res = GuestDAO.getUpdate(gvo);
		return "Guest?cmd=onelist&idx="+idx;
	}
}
