package com.hsbc.auction.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.InputMismatchException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hsbc.auction.dao.ProductDao;
import com.hsbc.auction.dao.ProductDaoImp;
import com.hsbc.auction.models.Product;

/**
 * Servlet implementation class ScheduleAuctionController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/ScheduleAuctionController" })
public class ScheduleAuctionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScheduleAuctionController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		
		Product product=new Product();
		String productName=request.getParameter("productname");
		int minBidValue=Integer.parseInt(request.getParameter("minbidvalue"));
		LocalDate bidStartDate=LocalDate.parse(request.getParameter(("bidstartdate")).toString(),formatter);
		LocalDate bidEndDate=LocalDate.parse(request.getParameter(("bidenddate")).toString(),formatter);
		
		
		PrintWriter out=response.getWriter();
		HttpSession session=null;
	    response.setContentType("text/html");
	    ProductDao productDao=new ProductDaoImp();
		try
		{
			product.setProductName(productName);
			 product.setMinBidValue(minBidValue);
		     product.setBidStartDate(bidStartDate);
		     product.setBidEndDate(bidEndDate);
		        
		        
		       // if(productDao.validateScheduleAuction(product))
		        //{
		               
		               session=request.getSession(true);
		               session.setAttribute("ScheduleSession", product);
		               out.println("Scheduled Successfully...");
		     //   }
		      //  else
		       // 	request.getRequestDispatcher("scheduleauction.html").forward(request, response);


			}
				catch(NullPointerException|InputMismatchException exception)
				{
					out.println(exception.getMessage());
					//response.sendError(response.SC_EXPECTATION_FAILED,"Data Error");
				}
				catch(Exception exception)
				{
					out.println(exception.getMessage());
					//response.sendError(response.SC_EXPECTATION_FAILED,"Data Error");
				}
			}

}
