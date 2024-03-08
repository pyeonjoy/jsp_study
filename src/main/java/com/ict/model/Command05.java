package com.ict.model;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.VO;

public class Command05 implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//실제 일 처리 - 배열,컬렉션
		//DB에서 배열과 컬렉션, Object, 숫자로 결과가 올 수 있다.
		
		String[] hobby = request.getParameterValues("hobby");
		request.setAttribute("hobby", hobby);//(이름, 내용물);
		
		
		
		//강제로DB에서 처리한것처럼 VO에 정보를 넣어보자
		
		
		VO vo = new VO("1", "둘리", "24", "서울"); 
		request.setAttribute("vo", vo);

		VO vo1 = new VO("2", "도우너", "2", "경기"); 
		VO vo2 = new VO("3", "마이콜", "34", "대구"); 
		VO vo3 = new VO("4", "희동이", "15", "대전"); 
		
		//강제로DB에서 처리한것처럼 VO에 정보를 넣어보자
		List<VO> list = new ArrayList<VO>();
		list.add(vo1);
		list.add(vo2);
		list.add(vo3);
		
		request.setAttribute("list", list);
		
		
		
		//return "결과를 보여줄 jsp 파일 위치"
		return "view/ex14_res2.jsp";//보내기(string으로)
	}

}
