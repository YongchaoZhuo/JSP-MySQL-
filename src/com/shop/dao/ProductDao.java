package com.shop.dao;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import com.shop.pojo.Product;
import com.shop.utils.C3P0Utils;
import com.shop.utils.PageBean;

public class ProductDao {
	/**
	 * 鑾峰彇鐑棬鍟嗗搧
	 * @return
	 * @throws SQLException 
	 */
	public List<Product> getHotProduct() throws SQLException{
		QueryRunner queryRunner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product where is_hot = ? limit ?,?";
		List<Product> productList = queryRunner.query(sql,new BeanListHandler<Product>(Product.class),1,1,3);
		return productList;
	}
	/**
	 * 鑾峰緱鏈�鏂板晢鍝�
	 * @return
	 * @throws SQLException
	 */
	public List<Product> getNewProduct() throws SQLException{
		QueryRunner queryRunner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product order by pdate desc limit ?,?"; 
		List<Product> productList = queryRunner.query(sql,new BeanListHandler<Product>(Product.class),1,12);
		return productList;
	}
	/**
	 * 閫氳繃鍟嗗搧id鏌ヨ鍟嗗搧璇︾粏淇℃伅
	 * @param id
	 * @return
	 * @throws SQLException 
	 */
	public Product getProductById(String id) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product where pid = ?"; 
		Product product = queryRunner.query(sql,new BeanHandler<Product>(Product.class),id);
		return product;
	}
	/**
	 * 鏍规嵁鍒嗙被id鏌ヨ鍟嗗搧鍒楄〃
	 * @param cid
	 * @return
	 */
	public List<Product> getProductListByCid(int cid,PageBean pageBean) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product where cid = ? limit ?,?";
		List<Product> productList = queryRunner.query(sql,new BeanListHandler<Product>(Product.class),cid,pageBean.getStart(),pageBean.getRows());
		return productList;
	}
	/**
	 * 
	 * @param cid
	 * @return
	 * @throws SQLException 
	 */
	public int getTotal(int cid) throws SQLException {
		QueryRunner queryRunner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product where cid = ?";
		List<Product> productList = queryRunner.query(sql,new BeanListHandler<Product>(Product.class),cid);
		return productList.size();
	}
	
	public boolean add(Product pro){
		int temp = (int) ( 50 * Math.random() + 50);
        Date date = new Date(System.currentTimeMillis());
		QueryRunner queryRunner = new QueryRunner(C3P0Utils.getDataSource());
		String sql="insert into product values(?,?,?,?,?,?,?,?,?,?)";
		int update=0;
		try {
			update = queryRunner.update(sql,temp,pro.getPname(),pro.getMarket_price(),pro.getShop_price(),pro.getPimage(),date,pro.getIs_hot(),pro.getPdesc(),0,1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return update>0?true:false;
	}
	
}
