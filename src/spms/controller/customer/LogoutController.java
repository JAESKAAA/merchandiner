package spms.controller.customer;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.controller.Controller;

@Component("/auth/logout.do")
public class LogoutController implements Controller {
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = (HttpSession)model.get("session");
		//���� ��ȿȭ ó��
		session.invalidate();
		
//		return "redirect:login.do";
		return "redirect:../main-page.jsp";
	}

}
