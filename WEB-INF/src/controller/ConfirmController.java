package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ConfirmService;

@WebServlet("/confirm")
public class ConfirmController extends HttpServlet{

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String blood = request.getParameter("blood");
		int old = Integer.parseInt(request.getParameter("old"));
		String memo = request.getParameter("memo");
		ConfirmService confirmService = new ConfirmService();
		confirmService.searchConfirm(email, password, name, gender, blood, old, memo);
		ServletContext sc = getServletContext();
		sc.getRequestDispatcher("/" + "complete.jsp").forward(request, response);
	}


}
