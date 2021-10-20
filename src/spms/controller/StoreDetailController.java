package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.StoreDAO;
import spms.vo.Store;

@Component("/store/detail.do")
public class StoreDetailController implements Controller, DataBinding {
	StoreDAO storeDAO;
	
	public StoreDetailController setStoreDAO(StoreDAO storeDAO) {
		this.storeDAO=storeDAO;
		return this;
	}
	
	 @Override
	public Object[] getDataBinders() {
		// TODO Auto-generated method stub
		return new Object[] {
				"store_num", Integer.class,
		};
	}
	
	 
	 //�ѹ��� ���ڷ� �޴� selectOne �޼ҵ� ���� ����ֱ�
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Integer no = (Integer) model.get("store_num");
		System.out.println(no);
		model.put("stores", storeDAO.selectlist());
		//����Ʈ�� �������
		model.put("store", storeDAO.selectOne(no));
		return "/store/Detail-page.jsp";
	}
	
	
}
