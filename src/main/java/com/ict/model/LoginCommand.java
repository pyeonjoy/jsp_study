package com.ict.model;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.GuestDAO;
import com.ict.db.GuestVO;
import com.ict.db.MemberDAO;
import com.ict.db.MemberVO;
import com.ict.db.VO;

public class LoginCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "userMembers/login.jsp";
	}
}
