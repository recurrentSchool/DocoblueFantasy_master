package model;

import java.util.List;

import bean.Weapon;
import dao.WeaponDAO;

public class AdminWeaponDateLogic {

	//武器情報の追加
	public boolean executeInsert(Weapon weapon) {

		WeaponDAO weaponDAO = new WeaponDAO();
		boolean propriety = weaponDAO.insertDB(weapon);

		//成否を送る
		return propriety;

	}

	//武器情報の削除
	public boolean executeDelete(Weapon weapon) {

		WeaponDAO weaponDAO = new WeaponDAO();
		boolean propriety = weaponDAO.deleteDB(weapon);

		//成否を送る
		return propriety;

	}

	//武器情報の上書き
	public boolean executeUpdate(Weapon weaponOriginal, Weapon weaponUpdate) {

		WeaponDAO weaponDAO = new WeaponDAO();
		boolean propriety = weaponDAO.updateDB(weaponOriginal, weaponUpdate);

		//成否を送る
		return propriety;

	}

	//武器情報の全取得
	public List<Weapon> executeAllSelect() {

		WeaponDAO weaponDAO = new WeaponDAO();
		List<Weapon> weaponList = weaponDAO.selectAllDB();

		//要素を送る
		return weaponList;

	}

}
