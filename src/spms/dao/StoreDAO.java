package spms.dao;

import java.util.List;

import spms.vo.Store;

public interface StoreDAO {
	List<Store> selectlist() throws Exception;
	int insert(Store project) throws Exception;
	Store selectOne(int no) throws Exception;
	int update(Store project) throws Exception;
	int delete(int no) throws Exception;
}
