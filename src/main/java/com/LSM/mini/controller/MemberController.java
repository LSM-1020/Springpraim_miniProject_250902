package com.LSM.mini.controller;

import javax.servlet.http.HttpServletRequest;


import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.LSM.mini.dao.MemberDao;

//import com.LSM.mini.dao.MemberDao;

@Controller
public class MemberController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/index")
	public String index() {		
		
		return "index";
	}
	
	@RequestMapping(value = "/signup")
	public String signup() {		
		
		return "signup";
	}
	@RequestMapping(value="/signupOk")
	public String signupOk(HttpServletRequest request, Model model) {
	    
	    String mid = request.getParameter("memberid");
	    String mpw = request.getParameter("memberpw");
	    String mname = request.getParameter("membername");
	    
	    MemberDao dao = sqlSession.getMapper(MemberDao.class);
	    int checkFlag = dao.memberidCheckDao(mid); //아이디가 이미 DB에 존재하는지 확인->존재하면1, 아니면 0
	    
	    if (checkFlag == 1) {
	        model.addAttribute("msg", "이미 가입된 아이디입니다.");
	        model.addAttribute("url", "signup"); // 'back'이라는 값을 전달하여 이전 페이지로 이동
	    } else {
	        int result = dao.memberjoinDao(mid, mpw, mname);
	        if (result == 1) { // 회원가입 성공
	            model.addAttribute("msg", "회원가입이 완료되었습니다.");
	            model.addAttribute("url", "login"); // 'login' 페이지로 이동
	        } else { // 회원가입 실패
	            model.addAttribute("msg", "회원가입에 실패했습니다.");
	            model.addAttribute("url", "signup"); // 'back'이라는 값을 전달하여 이전 페이지로 이동
	        }
	    }    
	    return "alert/alert";
	}	
	@RequestMapping(value = "/login")
	public String login(HttpServletRequest request, Model model) {		
		
		String error = request.getParameter("memberid");
		
		if(error!=null) {
			model.addAttribute("error",error);
		}
		return "login";
	}	
	@RequestMapping(value = "/loginOk")
	public String loginOk(HttpServletRequest request, Model model,HttpSession session) {		
		
		String mid = request.getParameter("memberid");
		String mpw = request.getParameter("memberpw");
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		int checkFlag = dao.memberloginDao(mid,mpw);
		
		if(checkFlag ==1) {
			session.setAttribute("sessionId",mid);			
			return "redirect:/index";
		}  else { //로그인 실패		
			model.addAttribute("msg", "로그인 실패. 아이디 또는 비밀번호가 잘못 되었습니다.");
			model.addAttribute("url", "login");
			return "alert/alert";
		}		
	}
	@RequestMapping(value = "/logout")
	public String logout(HttpServletRequest request, HttpSession session, Model model) {
	    // 세션 무효화 - 로그아웃 처리
	    session.invalidate();

	    // 로그아웃 완료 메시지를 전달하기 위해 model에 저장
	    model.addAttribute("msg", "로그아웃 되었습니다.");
	    model.addAttribute("url", "index");  // 로그아웃 후 이동할 페이지

	    // 메시지를 alert로 보여줄 뷰(예: alert.jsp)로 포워딩
	    return "alert/alert";
	}	
}
