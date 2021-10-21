package spms.controller.customer;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controller.Controller;
import spms.dao.MySqlCustomerDAO;
import spms.vo.Customer;


/*
 * ������ ��Ʈ�ѷ��鿡�� Servlet�� ���ŵǰ� �Ϲ� Ŭ������ ���ϱ� ������
 * HttpServletRequest, HttpServletResponse �� ServletContext�� ����� �� ����
 * execute �޼ҵ��� �Ű������� String Key���� ������ ��ü���� �ʿ� ��Ƽ� ����
 * */
@Component("/auth/login.do")
public class LoginController implements Controller, DataBinding {
	 MySqlCustomerDAO customerDAO = null;
	 
	 public LoginController setCustomerDAO(MySqlCustomerDAO customerDAO) {
		 this.customerDAO = customerDAO;
		 return this;
	 }
	 
	 @Override
	public Object[] getDataBinders() {
		//key ���� �̸����� �����Ͽ� �ڵ����� �����ؾ� �Ǵ� Ŭ���� Ÿ�� ����
		return new Object[] {
				"loginInfo", spms.vo.Customer.class
		};
	}
	 
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Customer loginInfo = (Customer)model.get("loginInfo");
		
		if(loginInfo.getId() == null) {
			return "/auth/LoginForm.jsp";
		} else {
			Customer customer = customerDAO.exist(loginInfo.getId(), loginInfo.getPassword());
			
			if(customer != null) {
				HttpSession session = (HttpSession)model.get("session");
				session.setAttribute("Customer", customer);
				return "redirect:../main-page.jsp";
			} else {
				return "/auth/LoginFail.jsp";
			}
		}
	}
}
