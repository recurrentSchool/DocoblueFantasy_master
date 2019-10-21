package model;

import java.util.List;

import bean.BattleCharacter;
import dao.CharacterDAO;

public class AdminCharacterDateLogic {

	//キャラクター情報の追加
	public boolean executeInsert(BattleCharacter character) {

		CharacterDAO characterDAO = new CharacterDAO();
		boolean propriety = characterDAO.insertDB(character);

		//成否を送る
		return propriety;

	}

	//キャラクター情報の削除
	public boolean executeDelete(BattleCharacter character) {

		CharacterDAO characterDAO = new CharacterDAO();
		boolean propriety = characterDAO.deleteDB(character);

		//成否を送る
		return propriety;

	}

	//キャラクター情報の上書き
	public boolean executeUpdate(BattleCharacter characterOriginal,BattleCharacter characterUpdate) {

		CharacterDAO characterDAO = new CharacterDAO();
		boolean propriety = characterDAO.updateDB(characterOriginal,characterUpdate);

		//成否を送る
		return propriety;

	}

	//キャラクター情報の全取得
	public List<BattleCharacter> executeAllSelect() {

		CharacterDAO characterDAO = new CharacterDAO();
		List<BattleCharacter> battleCharacterList = characterDAO.selectAllDB();

		//要素を送る
		return battleCharacterList;

	}

}
