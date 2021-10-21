package spms.controller.customer;

import java.util.Map;

import spms.annotation.Component;
import spms.controller.Controller;
import spms.dao.MySqlCustomerDAO;

@Component("/member/list.do")
public class MemberListController implements Controller {
	/*
	 * DI(Dependency Injection)
	 * 1) Ŭ������ ���յ� ����
	 * 2) MemberDAO �������̽��� �����ϰ� ��ӱ����ϹǷν� �ٸ� DBMS���� ��ȯ ����
	 * 3) ���߿� ������ �ڵ�ȭ �۾��� ���
	 * */
	
	MySqlCustomerDAO customerDAO = null;
	
	public MemberListController setMemberDAO(MySqlCustomerDAO customerDAO) {
		this.customerDAO = customerDAO;
		return this;
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		//���ϵ� ��ȸ ��� �ʿ� ����
		model.put("customerList", customerDAO.selectlist());
		
		return "/member/MemberList.jsp";
	}
}