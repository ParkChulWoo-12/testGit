package com.ensalad.product.model.service;

import static com.ensalad.common.JDBCTemplate.close;
import static com.ensalad.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.ensalad.product.model.dao.ProductDao;
import com.ensalad.product.model.vo.Product;

public class ProductService {

   private ProductDao dao = new ProductDao();
   
   //상품 전체 리스트조회
   public List<Product> selectProductAll(){
      Connection conn=getConnection();
      List<Product> list = dao.selectProductAll(conn);
      close(conn);
      return list;
      
   }
   //상품 상세페이지
   public Product detailProduct(int productNo) {
	   Connection conn = getConnection();
	   Product p = dao.detailProduct(conn ,productNo);
	   close(conn);
	   return p;
   }
   
}