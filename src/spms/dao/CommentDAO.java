package spms.dao;

import java.util.List;

import spms.vo.Comment;
import spms.vo.Customer;

public interface CommentDAO {
	List<Comment> selectlist() throws Exception;
	int insert(Comment comment, Customer id, int no) throws Exception;
	Comment selectOne(int no) throws Exception;
	int update(Comment comment) throws Exception;
	int delete(int no) throws Exception;
}
