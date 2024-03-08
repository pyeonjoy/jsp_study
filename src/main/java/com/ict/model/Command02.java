package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command02 implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//일처리(운세구하기)
		int lucky = (int)(Math.random()*101);
		
		//결과 저장 = request에 결과 를 담아서 
		// controller에서 페이지 이동을 무조건 forward로 함
		//(session 제외)
		request.setAttribute("luck", lucky);//(이름, 내용물);
				
				
		//return "결과를 보여줄 jsp 파일 위치"		
		return  "view/ex13_res02.jsp";
	}

}
