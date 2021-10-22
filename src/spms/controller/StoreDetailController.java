package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.CommentDAO;
import spms.dao.StoreDAO;

@Component("/store/detail.do")
public class StoreDetailController implements Controller, DataBinding {
	StoreDAO storeDAO;
	CommentDAO commentDAO;
	
	public StoreDetailController setStoreDAO(StoreDAO storeDAO) {
		this.storeDAO=storeDAO;
		return this;
	}
	
	public StoreDetailController setCommentDAO(CommentDAO commentDAO) {
		this.commentDAO=commentDAO;
		return this;
	}
	
	 @Override
	public Object[] getDataBinders() {
		// TODO Auto-generated method stub
		return new Object[] {
				"store_num", Integer.class,
				"id", String.class
		};
	}
	
	 
	 //�ѹ��� ���ڷ� �޴� selectOne �޼ҵ� ���� ����ֱ�
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Integer no = (Integer) model.get("store_num");
		System.out.println("�����ϵ� �ѹ������� �ѹ�"+no);
		String id = (String) model.get("id");
		model.put("stores", storeDAO.selectlist());
		model.put("comments", commentDAO.commentList(no));
		//����Ʈ�� �������
		model.put("store", storeDAO.selectOne(no));
		
		return "/store/Detail-page.jsp";
	}
	
	
}
