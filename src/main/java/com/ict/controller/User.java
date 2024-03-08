package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.ict.model.Command;
import com.ict.model.IndexCommand;
import com.ict.model.LoginCommand;
import com.ict.model.LoginOkCommand;
import com.ict.model.MypageCommand;
import com.ict.model.PwdCommand;
import com.ict.model.PwdchkCommand;
import com.ict.model.SignupCommand;
import com.ict.model.SignupokCommand;


@WebServlet("/User")
public class User extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String cmd = request.getParameter("cmd");
		System.out.println(cmd);
		Command comm = null;
		switch (cmd) {
		case "login": comm= new LoginCommand(); break;
		case "login_ok": comm= new LoginOkCommand(); break;
		case "signup": comm= new SignupCommand(); break;
		case "signup_ok": comm= new SignupokCommand(); break;
		case "index": comm= new IndexCommand(); break;
		case "mypage": comm= new MypageCommand(); break;
		case "pwd_chk": comm= new PwdchkCommand(); break;
		case "pwd": comm= new PwdCommand(); break;
		
		}
		
		String path =	comm.exec(request, response);
		//request의 정보를 가지고 가야한다. => 포워딩한다.
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}