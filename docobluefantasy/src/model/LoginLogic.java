package model;

import bean.User;
import dao.UserDAO;

public class LoginLogic {

	//ログイン機能
	public boolean executeLogin(User user) {

		boolean propriety = false;

		UserDAO userDAO = new UserDAO();

		//ネームとパスが一致した時trueを返す
		if(user != null && userDAO.matchNamePassDB(user)) {

			propriety = true;

		} else {

			propriety = false;

		}

		return propriety;

	}

	//ユーザー情報を返す
	public User executeSelect(User user) {

		UserDAO userDAO = new UserDAO();
		User resultUser = userDAO.selectDB(user);

		return resultUser;

	}

}
