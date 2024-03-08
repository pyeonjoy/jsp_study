package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex03")
public class Ex03 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//오늘의 운수
		//오늘 날짜
		Calendar now = Calendar.getInstance();
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH+1);//1월이 0부터 시작
		int day = now.get(Calendar.DATE);
		
		int luck = (int) (Math.random() * 101) ;//0-100까지 나온다.
		out.println("<h2>"+year+"."+month+"."+day+"의 운수는"+luck+"% 입니다.</h2>");
		out.println("<hr>");
		out.println("<h2>요청 정보 출력</h2>");
		out.println("<ul>");
		out.println("<li>요청 주소: "+request.getRemoteAddr()+"</li>");
		out.println("<li>요청 주소: "+request.getRemoteHost()+"</li>");
		out.println("<li>요청 포트: "+request.getRemotePort()+"</li>");
		out.println("<li>요청 메서드: "+request.getMethod()+"</li>");
		out.println("<li>프로젝트 주소: "+request.getContextPath()+"</li>");
		out.println("<li>파일 주소: "+request.getRequestURI()+"</li>");
		out.println("</ul>");
		
	}

}
















