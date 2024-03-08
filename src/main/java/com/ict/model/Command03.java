package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command03 implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//일처리 계산기
		int su1 = Integer.parseInt(request.getParameter("s1"));
		int su2 = Integer.parseInt(request.getParameter("s2"));
		String op = request.getParameter("op");
			
		try {
		int result = 0 ;
			switch (op) {
				case "+":  result = su1 + su2 ; break;
				case "-":  result = su1 - su2 ; break;
				case "*":  result = su1 * su2 ; break;
				case "/":  result = su1 / su2 ; break;
			};
			
			String res = su1 + op + su2 + "=" + result;
			request.setAttribute("res", res);//(이름, 내용물);
		} catch (Exception e) {
			String res = "0 으로는 나눌 수 없습니다.";
			request.setAttribute("res", res);//(이름, 내용물);
		}
			
			
		//결과 저장 = request에 결과 를 담아서 
		// controller에서 페이지 이동을 무조건 forward로 함
		//(session 제외)
		
		
		return  "view/ex13_res03.jsp";
	}

}
