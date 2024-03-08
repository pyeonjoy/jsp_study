package com.ict.model;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.GuestDAO;
import com.ict.db.GuestVO;
import com.ict.db.VO;

public class UpdateCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx=request.getParameter("idx");
		GuestVO gvo = GuestDAO.getOneList(idx);
		request.setAttribute("gvo", gvo);
		return "guestbook/update.jsp";
	}
}
