package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.Customer;

@WebServlet("/insert")
public class InsertController extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String blood = request.getParameter("blood");
		int old = Integer.parseInt(request.getParameter("old"));
		String memo = request.getParameter("memo");
		List<Customer> insertList = new ArrayList<Customer>();
		Customer customer = new Customer();
		customer.setEmail(email);
		customer.setPassword(password);
		customer.setName(name);
		customer.setGender(gender);
		customer.setBlood(blood);
		customer.setOld(old);
		customer.setMemo(memo);
		insertList.add(customer);
		request.setAttribute("insertList", insertList);
		ServletContext sc = getServletContext();
		sc.getRequestDispatcher("/" + "confirm.jsp").forward(request, response);
	}


}
