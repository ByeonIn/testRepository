package com.kh.notice.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.JDBCTemplate;
import com.kh.notice.model.dao.NoticeDao;
import com.kh.notice.model.vo.Notice;

public class NoticeService {

	//공지사항 리스트 조회 메소드
	public ArrayList<Notice> selectList() {
		Connection conn = JDBCTemplate.getConnection();
		
		//조회구문이기때문에 트랙잭션 처리 할 필요 없음
		ArrayList<Notice> list=new NoticeDao().selectList(conn);
		
		JDBCTemplate.close(conn);
		
		return list;
	}

	public int insertNotice(Notice n) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result =new NoticeDao().insertNotice(conn,n);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		
		return result;
	}

	public Notice selectNotice(int noticeNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		Notice n = new NoticeDao().selectNotice(conn,noticeNo);
		
		JDBCTemplate.close(conn);
		
		return n;
		
	}

	//조회수 증가용 메소드
	public int increaseCount(int noticeNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result=new NoticeDao().increaseCount(conn,noticeNo);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		
		
		return result;
		
	}

	//공지사항 수정 메소드
	public int updateNotice(String newTitle, String newContent,int noticeNo ) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new NoticeDao().updateNotice(conn,newTitle,newContent,noticeNo);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		
		return result;
	}

	//삭제 메소드
	public int deleteNotice(int noticeNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new NoticeDao().deleteNotice(conn,noticeNo);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		
		
		return result;
		
	}

}
