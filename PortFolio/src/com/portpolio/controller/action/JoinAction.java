package com.portpolio.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.portfolio.dao.MemberDAO;
import com.portfolio.dto.MemberVO;

public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("JoinAction »£√‚");
		request.setCharacterEncoding("UTF-8");
		String checkid = request.getParameter("checkid");
		System.out.println(checkid);
		
		MemberVO membervo = new MemberVO();
		membervo.setId(request.getParameter("id"));
		membervo.setName(request.getParameter("name"));
		membervo.setPwd(request.getParameter("pwd"));
		membervo.setPhone(request.getParameter("phone"));
		membervo.setGender(request.getParameter("gender"));
		membervo.setPd(request.getParameter("pd"));
		membervo.setContent(request.getParameter("content"));
		
		MemberDAO memberDAO = new MemberDAO();
		memberDAO.insertMember(membervo);
		
		new LoginFormAction().execute(request, response);
	}

}
