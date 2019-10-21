package model;

import java.util.List;

import bean.Boss;
import dao.BossDAO;

public class AdminBossDateLogic {

	//ボス情報の追加
	public boolean executeInsert(Boss boss) {

		BossDAO bossDAO = new BossDAO();
		boolean propriety = bossDAO.insertDB(boss);

		//成否を送る
		return propriety;

	}

	//ボス情報の削除
	public boolean executeDelete(Boss boss) {

		BossDAO bossDAO = new BossDAO();
		boolean propriety = bossDAO.deleteDB(boss);

		//成否を送る
		return propriety;

	}

	//ボス情報の上書き
	public boolean executeUpdate(Boss bossOriginal,Boss bossUpdate) {

		BossDAO bossDAO = new BossDAO();
		boolean propriety = bossDAO.updateDB(bossOriginal,bossUpdate);

		//成否を送る
		return propriety;

	}

	//ボス情報の全取得
	public List<Boss> executeAllSelect() {

		BossDAO bossDAO = new BossDAO();
		List<Boss> bossList = bossDAO.selectAllDB();

		//要素を送る
		return bossList;

	}

}
