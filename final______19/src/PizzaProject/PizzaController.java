package PizzaProject;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/pizza.do")
public class PizzaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public PizzaController() {
        super();
           }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request,response);
	}
	
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String vCategory=request.getParameter("category");
		String vMsg=request.getParameter("msg");
		String vUrl=request.getContextPath(); //프로젝트명
		String vUrlCon=vUrl+"/pizza.do"; //콘트롤러 url
		String redirectUrl = request.getRequestURI();
		int su;

		//========top 메뉴에서 클릭시 메뉴로 이동하는 것=======시작========//
		if(vCategory!=null) {
			if(vMsg != null) {//딸려보낸 메세지가 있으면 인덱스로 가서 처리를 해준다.
				redirectUrl=vUrl+"/index.jsp?category=jsp/"+vCategory+".jsp&msg="+URLEncoder.encode(vMsg, "utf-8");//딸려보낸 메세지가 있으면
			}else {
				redirectUrl=vUrl+"/index.jsp?category=jsp/"+vCategory+".jsp?";
			}
		}
		//===========================================끝======//
		
		//=================창에 적혀진 값을 가져온다. 그대로=========시작===//
		String vName, vId, vPwd, vPhone, vEmail, vAddr;
		vName 	= request.getParameter("mem_name"); 
		vId 	= request.getParameter("mem_id"); 
		vPwd	= request.getParameter("mem_pwd");
		vPhone 	= request.getParameter("mem_phone");
		vEmail 	= request.getParameter("mem_email");
		vAddr 	= request.getParameter("mem_addr");
		//===============================================끝=====//
				
		//=====================창에 적혀진 것을 가지고 dto를 생성=====시작====//
		PizzaDTO dto= new PizzaDTO(vName, vId, vPwd, vEmail, vPhone,  vAddr);
		//===================================================끝=====//
		
		PizzaDAO dao= new PizzaDAO(); //dao도 만들어줌.
		
		
		
		//---------------------------insertChk---------------------------------------
		
				if(vCategory.equals("insertChk")) {
						su=dao.memInsert(dto);
					if(su != 0) {
						vMsg=vName+"님 회원가입 성공^O^";
						System.out.println("회원가입성공");
						redirectUrl=vUrlCon+"?category=main&msg="+URLEncoder.encode(vMsg, "utf-8");//controller에 vMsg를 딸려 보내준다.
						
					}else {
						vMsg=vName+"님 회원가입 실패ㅜㅡㅜ!";
						System.out.println("회원가입실패");	
						redirectUrl=vUrlCon+"?category=insert&msg="+URLEncoder.encode(vMsg, "utf-8");//controller에 vMsg를 딸려 보내준다.
					}	
				}//if문				
		//----------------------------------끝-------------------------------------
				response.sendRedirect(redirectUrl);
}//---excute함수의 끝
}


