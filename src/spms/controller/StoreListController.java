package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.dao.StoreDAO;

@Component("/store/list.do")
public class StoreListController implements Controller {
	StoreDAO storeDAO;
	
	public StoreListController setStoreDAO(StoreDAO storeDAO) {
		this.storeDAO=storeDAO;
		return this;
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		
		model.put("stores", storeDAO.selectlist());
		return "/store/MyStoreList.jsp";
	}
	
	
}
