package model;

import java.util.ArrayList;
import java.util.List;

import bean.User;
import bean.Weapon;
import dao.UserDAO;
import dao.WeaponDAO;

//動作未確認
public class GachaLogic {

	//武器情報を10件取得
	public List<Weapon> executeGetWeapon(User user){

		List<Weapon> listWeapon = new ArrayList<Weapon>();

		UserDAO userDAO = new UserDAO();
		userDAO.billing3000DB(user);

		WeaponDAO weaponDAO = new WeaponDAO();
		listWeapon = weaponDAO.selectRandomDB();

		return listWeapon;

	}

}
