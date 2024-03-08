package com.ict.model;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command04 implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//실제 일 처리 - 성적 구하기
		String name= request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		int sum = kor+eng+math;
		double avg = (int)(sum/3.0*10)/10.0;
		String hak = "";
		
		if (avg>=90) {
			hak="A학점";
		}else if (avg>=80) {
			hak="B학점";
		}else if (avg>=70) {
		hak="C학점";
		}else{
		hak="F학점";
		};
		
		
		//결과 저장 = request에 결과 를 담아서 
		// controller에서 페이지 이동을 무조건 forward로 함
		//(session 제외)
		request.setAttribute("name", name);//(이름, 내용물);
		request.setAttribute("sum", sum);//(이름, 내용물);
		request.setAttribute("avg", avg);//(이름, 내용물);
		request.setAttribute("hak", hak);//(이름, 내용물);
		
		
		//return "결과를 보여줄 jsp 파일 위치"
		return "view/ex14_res.jsp";//보내기(string으로)
	}

}
