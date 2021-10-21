package spms.controller.comment;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controller.Controller;
import spms.dao.CommentDAO;
import spms.vo.Comment;
import spms.vo.Customer;

@Component("/comment/add.do")
public class ProjectAddController implements Controller, DataBinding {
	CommentDAO commentDAO;
	
	public ProjectAddController setCommentDAO(CommentDAO commentDAO) {
		this.commentDAO = commentDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"store_num", Integer.class,
				"id", spms.vo.Customer.class,
				"project", spms.vo.Comment.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Comment comment = (Comment)model.get("project");
		Integer no = (Integer)model.get("store_num");
		Customer customer = (Customer)model.get("id");
		if(comment.getId() == null) {
			return "/store/Detail-page.jsp";
		} else {
			commentDAO.insert(comment, customer, no);
			return "redirect:list.do";
		}
	}
}
