package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import model.LoginLogic;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}//doGET


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		String message = "";
		String url = null;

		User user = new User(name, pass);

		HttpSession session = request.getSession();

		session.setAttribute("message",message );

		LoginLogic bo = new LoginLogic();

		boolean result = bo.executeLogin(user);

		if (result == true) {

			session.setAttribute("user",user );

			if(user.getAdmin() == 0) {

				url = "/WEB-INF/admin.jsp";

			} else if (user.getAdmin() == 1) {

				url = "/main.jsp";

			}

		} else {

			message ="パスワードもしくは名前が違います";
			request.setAttribute("message",message );

		}

		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);

	}//doPOST

}
