package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import spms.annotation.Component;
import spms.vo.Store;


@Component("storeDAO")
public class MySqlStoreDAO implements StoreDAO {
	DataSource ds;
	
	public void setDataSource(DataSource ds) {
		this.ds=ds;
	}
	
	@Override
	public List<Store> selectlist() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSelect = "SELECT * FROM BOARD ORDER BY STORE_NUM DESC";
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);
			
			ArrayList<Store> stores = new ArrayList<>();
			while(rs.next()) {
				stores.add(new Store()
									.setStore_num(rs.getString("STORE_NUM"))
									.setStore_name(rs.getString("STORE_NAME"))
									.setStore_address(rs.getString("STORE_ADDRESS"))
									.setType(rs.getString("TYPE"))
									.setLongitude(rs.getString("LONGITUDE"))
									.setLatitude(rs.getString("LATITUDE"))
									.setHashTag(rs.getString("HASHTAG")));
			}
			return stores;
			
		}catch(Exception e) {
			throw e;
		}finally {
			try {
				if(rs != null) {
					rs.close();
				}
			}catch(Exception e) {
				throw e;
			}
			try {
				if(stmt != null) {
					stmt.close();
				}
			}catch(Exception e) {
				throw e;
			}
		}
	}
	
	@Override
	public int insert(Store project) throws Exception {
		Connection connection = null;
		PreparedStatement stmt = null;
		
		String sqlInsert = "INSERT INTO BOARD(PNAME, CONTENT, STA_DATE, END_DATE, STATE, CRE_DATE ,TAGS)" +
									   "VALUES(?, ?, ?, ?, 0, NOW(), ?)";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlInsert);
			stmt.setString(1, project.getTitle());
			stmt.setString(2, project.getContent());
			stmt.setDate(3, new java.sql.Date(project.getStartDate().getTime()));
			stmt.setDate(4, new java.sql.Date(project.getEndDate().getTime()));
			stmt.setString(5, project.getTags());
			
			return stmt.executeUpdate();
		} catch(Exception e) {
			throw e;
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch(Exception e) {
				throw e;
			}
		}
	}
}
