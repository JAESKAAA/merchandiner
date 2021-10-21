package spms.dao;

import java.util.List;

import spms.vo.Customer;

/*
 * �������̽� ���� ����
 * 
 * Oracle, MySql, MSSql �� DBMS ����� 
 * �� �������̽��� ��ӹ޴� DAO Ŭ������ �����ϵ�
 * �� DBMS Ư���� �°� �����Ͽ� DBMS ��ü�� ���� ��
 * �޼����� ���Ұ� ���� ���� �����ϰ� ó��
 * 
 * */
public interface CustomerDAO {
	public List<Customer> selectlist() throws Exception;
	public int insert(Customer customer) throws Exception;
	public int delete(String id) throws Exception;
	public Customer selectOne(String id) throws Exception;
	public int update(Customer customer) throws Exception;
	public Customer exist(String id, String password) throws Exception;

}

