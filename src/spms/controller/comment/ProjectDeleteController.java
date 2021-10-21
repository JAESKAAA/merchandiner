package spms.controller.comment;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controller.Controller;
import spms.dao.CommentDAO;

@Component("/comment/delete.do")
public class ProjectDeleteController implements Controller, DataBinding {
	CommentDAO commentDAO;
	
	public ProjectDeleteController setCommentDAO(CommentDAO commentDAO) {
		this.commentDAO = commentDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
			"no", Integer.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Integer no = (Integer)model.get("no");
		commentDAO.delete(no);
		
		return "redirect:list.do";
	}
}
