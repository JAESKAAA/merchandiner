package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.dao.StoreDAO;

@Component("/store/search.do")
public class StoreSearchController implements Controller {
	StoreDAO storeDAO;
	
	public StoreSearchController setStoreDAO(StoreDAO storeDAO) {
		this.storeDAO=storeDAO;
		return this;
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		model.put("stores", storeDAO.selectlist());
		return "/store/SearchPage.jsp";
	}
	
	
}
