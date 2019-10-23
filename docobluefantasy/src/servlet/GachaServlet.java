package servlet;

import java.io.IOException;
import java.util.List;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import bean.Weapon;
import model.GachaLogic;

@WebServlet("/GachaServlet")
public class GachaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		String url = null;

		if(Objects.nonNull(user)) {

			GachaLogic gachalogic = new GachaLogic();
			List<Weapon> listWeapon = gachalogic.executeGetWeapon(user);

			request.setAttribute("listWeapon", listWeapon);

			url = "/gacha_result.jsp";

		} else {

			request.setAttribute("message", "ログインしてください");
			url = "/message.jsp";

		}

		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);

	}

}
