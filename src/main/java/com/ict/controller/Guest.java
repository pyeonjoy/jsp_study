package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Update;

import com.ict.model.Command;
import com.ict.model.DeleteCommand;
import com.ict.model.DeleteOkCommand;
import com.ict.model.ListCommand;
import com.ict.model.OneListCommand;
import com.ict.model.UpdateCommand;
import com.ict.model.UpdateOkCommand;
import com.ict.model.WriteCommand;
import com.ict.model.WriteOKCommand;

@WebServlet("/Guest")
public class Guest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String cmd = request.getParameter("cmd");
		
		Command comm = null;
		switch (cmd) {
		case "list": comm= new ListCommand(); break;
		case "write": comm= new WriteCommand(); break;
		case "onelist": comm= new OneListCommand(); break;
		case "write_ok": comm= new WriteOKCommand(); break;
		case "delete": comm= new DeleteCommand(); break;
		case "update": comm= new UpdateCommand(); break;
		case "delete_ok": comm= new DeleteOkCommand(); break;
		case "update_ok": comm= new UpdateOkCommand(); break;
		
		}
		
		String path =	comm.exec(request, response);
		//request의 정보를 가지고 가야한다. => 포워딩한다.
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}