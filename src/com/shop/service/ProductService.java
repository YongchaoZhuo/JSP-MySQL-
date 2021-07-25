package com.shop.service;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.shop.dao.ProductDao;
import com.shop.pojo.Product;
import com.shop.pojo.User;
import com.shop.utils.C3P0Utils;
import com.shop.utils.PageBean;

public class ProductService {
	
	ProductDao productDao = new ProductDao();
	/**
	 * 鑾峰緱鐑棬鍟嗗搧
	 * @return
	 */
	public List<Product> getHotProduct(){
		try {
			return productDao.getHotProduct();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	/**
	 * 鑾峰緱鏈�鏂板晢鍝�
	 * @return
	 */
	public List<Product> getNewProduct(){
		try {
			return productDao.getNewProduct();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	/**
	 * 閫氳繃id鏌ヨ鍟嗗搧
	 * @param id
	 * @return
	 */
	public Product getProductById(String id) {
		try {
			return productDao.getProductById(id);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 鏍规嵁鍒嗙被id鏌ヨ鍟嗗搧鍒楄〃
	 * @param cid
	 * @return
	 */
	public List<Product> getProductListByCid(int cid,PageBean pageBean){
		try {
			return productDao.getProductListByCid(cid,pageBean);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
//	public boolean add(Product pro,HttpServletRequest request){
//		boolean success = false;
//		try {
////			success = ProductDao.add(pro);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//			return success;
//	}
	/**
	 * 
	 * @param cid
	 * @return
	 * @throws SQLException 
	 */
	public int getTotal(int cid) {
		try {
			return productDao.getTotal(cid);
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
}
