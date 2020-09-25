package com.ensalad.ajax.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ensalad.product.model.vo.Product;
import com.ensalad.product.service.ProductService;

/**
 * Servlet implementation class SelectTypeProductServlet
 */
@WebServlet("/ajax/selectType")
public class SelectTypeProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectTypeProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Product> list=new ProductService().selectProductAll();
		String type = request.getParameter("type");
	      List<Product> selectList = list; 
	      for(int i = 0; i < selectList.size(); i++) {
	    	  System.out.println(selectList.get(i));
	    	  if(selectList.get(i).getProductType().equals(type)) {
	    		  selectList.get(i);
	    	  }
	      }
	      
	      request.setAttribute("selectList", selectList);
	      request.getRequestDispatcher("/views/product/productAll.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
