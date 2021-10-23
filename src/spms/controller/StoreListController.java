package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.StoreDAO;
import spms.vo.Customer;
import spms.vo.Store;

@Component("/store/list.do")
public class StoreListController implements Controller {
	StoreDAO storeDAO;
	
	public StoreListController setStoreDAO(StoreDAO storeDAO) {
		this.storeDAO=storeDAO;
		return this;
	}
	
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		String pageName = (String)model.get("pageName");
		model.put("stores", storeDAO.selectlist());
		System.out.println(storeDAO.selectlist());
		System.out.println(pageName);
		if(pageName != null && pageName.equals("0")) {
			return "/map-meat.jsp";
		} else {
			return "/store/MyStoreList.jsp";
		}
	}
	
}
