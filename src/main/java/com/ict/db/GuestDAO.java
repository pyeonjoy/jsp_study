package com.ict.db;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class GuestDAO {
	//실제 사용하는 클래스: SqlSession
	private static SqlSession ss;
	
	private synchronized static SqlSession getSession() {
		if (ss == null) {
			ss = GuestDBService.getFactory().openSession();
		}
		return ss;
	}
	
	//DB처리하는 메서드들 
	
	//리스트 
	public static List<GuestVO> getList(){
		List<GuestVO> list = null;
		list = getSession().selectList("guestbook.list"); //db guestbook에서 id가 list인놈
		return list;
	}
	
	//삽입
	public static int getInsert(GuestVO gvo){
		int result = 0;
		result = getSession().insert("guestbook.insert", gvo);
		ss.commit();
		return result;
	}
	
	//pk가지고 검색하기
	public static GuestVO getOneList(String idx) {
		GuestVO gvo = null;
		gvo=getSession().selectOne("guestbook.detail", idx);
		return gvo;
	}
	
	//idx 받아서 삭제
	public static int getDelete(String idx) {
		int result = 0;
		result = getSession().delete("guestbook.delete", idx);
		ss.commit();
		return result;
	}
	
	//vo를 받아서 업데이트한다.
	public static int getUpdate(GuestVO gvo){
		int result = 0;
		result = getSession().update("guestbook.update", gvo);
		ss.commit();
		return result;
	}
}
