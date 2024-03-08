package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "userMembers/index.jsp";
	}

}
