package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.StoreDAO;
import spms.vo.Store;

@Component("/store/add.do")
public class StoreSaveController implements Controller, DataBinding{
	StoreDAO storeDAO;

	public StoreSaveController setStoreDAO(StoreDAO storeDAO) {
		this.storeDAO = storeDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
			"store", spms.vo.Store.class	
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Store store = (Store)model.get("store");
		if(store.getStore_name()==null) {
			return "/store/StoreForm.jsp";
		}else {
			storeDAO.insert(store);
			return "redirect:../main-page-logined.jsp";
		}
	}
}
