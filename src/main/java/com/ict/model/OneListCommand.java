package com.ict.model;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.GuestDAO;
import com.ict.db.GuestVO;
import com.ict.db.VO;

public class OneListCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		//guestbook의 모든 정보 다 가져와야 한다.
		//DB처리는 MyBatis이다.
		//오라클 라이브러리와  MyBatis라이브러리를 WEB-INF안에 lib에 넣는다.
		String idx=request.getParameter("idx");
		GuestVO gvo = GuestDAO.getOneList(idx);
		request.setAttribute("gvo", gvo);
		return "/guestbook/onelist.jsp";
	}
}
