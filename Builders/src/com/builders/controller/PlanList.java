package com.builders.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.builders.dao.PlanDao;
import com.builders.daoImpl.PlanDaoImpl;
import com.builders.model.Plans;

/**
 * Servlet implementation class PlanList
 */
@WebServlet("/PlanList")
public class PlanList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlanList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		 RequestDispatcher rd=null;
         PlanDao dao=new PlanDaoImpl();
         List<Plans> planList=dao.getAllPlan();
         if(planList!=null)
         {
        	 
        	 System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@");
        	 request.setAttribute("planlist", planList);
        	 System.out.println("##########################");
        	 rd=request.getRequestDispatcher("enrollnow.jsp");
        	 rd.forward(request, response);
         }
         else
         {
        	 rd=request.getRequestDispatcher("error.jsp");
        	 rd.forward(request, response);
         }
         	}
		
		
		


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
