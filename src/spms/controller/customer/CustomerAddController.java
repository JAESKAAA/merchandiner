package spms.controller.customer;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controller.Controller;
import spms.dao.MySqlCustomerDAO;
import spms.vo.Customer;

@Component("/customer/add.do")
public class CustomerAddController implements Controller, DataBinding {
	/*
	 * DI(Dependency Injection)
	 * 1) Ŭ������ ���յ� ����
	 * 2) CustomerDAO �������̽��� �����ϰ� ��ӱ����ϹǷν� �ٸ� DBMS���� ��ȯ ����
	 * 3) ���߿� ������ �ڵ�ȭ �۾��� ���
	 * */
	
	MySqlCustomerDAO customerDAO = null;
	
	public CustomerAddController setCustomerDAO(MySqlCustomerDAO customerDAO) {
		this.customerDAO = customerDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"customer", spms.vo.Customer.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		//���ϵ� ��ȸ ��� �ʿ� ����
		Customer customer = (Customer)model.get("customer");
		if(customer.getId() == null) {
			return "../sign-up.jsp";
		} else {
			customerDAO.insert(customer);
			return "redirect:../main-page.jsp";
		}
	}
}