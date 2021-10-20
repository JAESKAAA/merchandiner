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
	
	 
	 //넘버를 인자로 받는 selectOne 메소드 만들어서 잡아주기
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Integer no = (Integer) model.get("store_num");
		System.out.println(no);
		model.put("stores", storeDAO.selectlist());
		//셀렉트원 잡아주자
		model.put("store", storeDAO.selectOne(no));
		return "/store/Detail-page.jsp";
	}
	
	
}
