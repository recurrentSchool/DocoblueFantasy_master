package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.BattleCharacter;
import bean.Boss;
import bean.Weapon;
import model.AdminBossDateLogic;
import model.AdminCharacterDateLogic;
import model.AdminWeaponDateLogic;
import model.ContentsBossSelectLogic;
import model.ContentsCharacterSelectLogic;
import model.ContentsWeaponSelectLogic;

/**
 * Servlet implementation class AdminFunctionServlet
 */
@WebServlet("/AdminFunctionServlet")
public class AdminFunctionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String message = (String) request.getAttribute("message");
		String sessionStatus = (String) request.getParameter("status");
		String url = null;

		//メッセージをセット
		request.setAttribute("message", message);

		if (sessionStatus != null && sessionStatus.equals("logout")) {

			HttpSession session = request.getSession();
			session.invalidate();

			url = "/index.jsp";

		} else {

			url = "/WEB-INF/admin.jsp";

		}

		//トップページもしくは管理画面へフォワード
		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		try {

			HttpSession session = request.getSession();

			String adminPage = (String) request.getParameter("adminPage");
			String functionPage = (String) request.getParameter("functionPage");
			String pageMove = (String) request.getParameter("pageMove");

			String url = null;

			//ページ遷移
			if (adminPage != null && !adminPage.isEmpty()) {

				if (adminPage.equals("情報登録")) {

					url = "/WEB-INF/entry.jsp";

				} else if (adminPage.equals("情報削除")) {

					AdminBossDateLogic abdl = new AdminBossDateLogic();
					AdminCharacterDateLogic acdl = new AdminCharacterDateLogic();
					AdminWeaponDateLogic awdl = new AdminWeaponDateLogic();

					List<Boss> bossList = abdl.executeAllSelect();
					List<BattleCharacter> battleCharacterList = acdl.executeAllSelect();
					List<Weapon> weaponList = awdl.executeAllSelect();

					request.setAttribute("bossList", bossList);
					request.setAttribute("battleCharacterList", battleCharacterList);
					request.setAttribute("weaponList", weaponList);

					url = "/WEB-INF/delete.jsp";

				} else if (adminPage.equals("情報更新")) {

					AdminBossDateLogic abdl = new AdminBossDateLogic();
					AdminCharacterDateLogic acdl = new AdminCharacterDateLogic();
					AdminWeaponDateLogic awdl = new AdminWeaponDateLogic();

					List<Boss> bossList = abdl.executeAllSelect();
					List<BattleCharacter> battleCharacterList = acdl.executeAllSelect();
					List<Weapon> weaponList = awdl.executeAllSelect();

					request.setAttribute("bossList", bossList);
					request.setAttribute("battleCharacterList", battleCharacterList);
					request.setAttribute("weaponList", weaponList);

					url = "/WEB-INF/update.jsp";

				} else {

					url = "/WEB-INF/admin.jsp";

				}

				//各ページへフォワード
				RequestDispatcher dis = request.getRequestDispatcher(url);
				dis.forward(request, response);

			}

			//メッセージの初期化
			String message = null;

			session.setAttribute("functionPage", functionPage);

			//確認画面へ遷移する動作
			if (pageMove.equals("confirmation")) {

				AdminBossDateLogic abdl = new AdminBossDateLogic();
				AdminCharacterDateLogic acdl = new AdminCharacterDateLogic();
				AdminWeaponDateLogic awdl = new AdminWeaponDateLogic();

				List<Boss> bossList = abdl.executeAllSelect();
				List<BattleCharacter> battleCharacterList = acdl.executeAllSelect();
				List<Weapon> weaponList = awdl.executeAllSelect();

				request.setAttribute("bossList", bossList);
				request.setAttribute("battleCharacterList", battleCharacterList);
				request.setAttribute("weaponList", weaponList);

				String weaponName = (String) request.getParameter("weaponName");
				String weaponAttack = (String) request.getParameter("weaponAttack");
				String weaponSkill = (String) request.getParameter("weaponSkill");
				String characterName = (String) request.getParameter("characterName");
				String characterRarity = (String) request.getParameter("characterRarity");
				String characterAttack = (String) request.getParameter("characterAttack");
				String characterHp = (String) request.getParameter("characterHp");
				String characterSkill = (String) request.getParameter("characterSkill");
				String characterEvaluation = (String) request.getParameter("characterEvaluation");
				String bossName = (String) request.getParameter("bossName");
				String bossAttack = (String) request.getParameter("bossAttack");
				String bossHp = (String) request.getParameter("bossHp");
				String bossSpecialAttack = (String) request.getParameter("bossSpecialAttack");

				boolean confirmation = false;

				//登録時確認画面表示用処理
				if (functionPage.equals("entry")) {

					//武器情報が全て書かれている時
					if (!weaponName.isEmpty() && !weaponAttack.isEmpty() && !weaponSkill.isEmpty()) {

						int weaponAttackInteger = Integer.parseInt(weaponAttack);

						Weapon weapon = new Weapon(weaponName, weaponAttackInteger, weaponSkill);
						request.setAttribute("weapon", weapon);

						confirmation = true;

						//キャラクター情報が全て書かれている時
					} else if (!characterName.isEmpty() && !characterRarity.isEmpty() && !characterAttack.isEmpty()
							&& !characterHp.isEmpty() && !characterSkill.isEmpty() && !characterEvaluation.isEmpty()) {

						int characterAttackInteger = Integer.parseInt(characterAttack);
						int characterHpInteger = Integer.parseInt(characterHp);
						int characterEvaluationInteger = Integer.parseInt(characterEvaluation);

						BattleCharacter character = new BattleCharacter(characterName, characterRarity,
								characterAttackInteger, characterHpInteger,
								characterSkill, characterEvaluationInteger);

						request.setAttribute("character", character);
						confirmation = true;

						//ボス情報が全て書かれている時
					} else if (!bossName.isEmpty() && !bossAttack.isEmpty() && !bossHp.isEmpty()
							&& !bossSpecialAttack.isEmpty()) {

						int bossAttackInteger = Integer.parseInt(bossAttack);
						int bossHpInteger = Integer.parseInt(bossHp);

						Boss boss = new Boss(bossName, bossAttackInteger, bossHpInteger, bossSpecialAttack);

						request.setAttribute("boss", boss);
						confirmation = true;

					} else {

						message = "不適切なパラメーターが渡されました。<br>登録出来るのは1つのみです。";
						request.setAttribute("message", message);

					}

					if (confirmation) {

						url = "/WEB-INF/confirmation_entry.jsp";

					} else {

						url = "/WEB-INF/entry.jsp";

					}

					//削除時確認画面表示用処理
				} else if (functionPage.equals("delete")) {

					String contentsSelect = (String) request.getParameter("contentsSelect");
					String deleteName = (String) request.getParameter("deleteName");

					if (contentsSelect.equals("weapon")) {

						ContentsWeaponSelectLogic cwsl = new ContentsWeaponSelectLogic();

						Weapon weapon = cwsl.executeSelect(deleteName);

						if (weapon != null) {

							request.setAttribute("weapon", weapon);
							url = "/WEB-INF/confirmation_delete.jsp";

						} else {

							message = "該当する武器はありません";
							url = "/WEB-INF/delete.jsp";

						}

					} else if (contentsSelect.equals("character")) {

						ContentsCharacterSelectLogic ccsl = new ContentsCharacterSelectLogic();

						BattleCharacter character = ccsl.executeSelect(deleteName);

						if (character != null) {

							request.setAttribute("character", character);
							url = "/WEB-INF/confirmation_delete.jsp";

						} else {

							message = "該当するキャラクターはいません";
							url = "/WEB-INF/delete.jsp";

						}

					} else if (contentsSelect.equals("boss")) {

						ContentsBossSelectLogic cbsl = new ContentsBossSelectLogic();

						Boss boss = cbsl.executeSelect(deleteName);

						if (boss != null) {

							request.setAttribute("boss", boss);
							url = "/WEB-INF/confirmation_delete.jsp";

						} else {

							message = "該当するボスはありません";
							url = "/WEB-INF/delete.jsp";

						}

					}

					//上書き時確認画面表示用処理
				} else if (functionPage.equals("update")) {

					String weaponOriginalName = (String) request.getParameter("weaponOriginalName");
					String characterOriginalName = (String) request.getParameter("characterOriginalName");
					String bossOriginalName = (String) request.getParameter("bossOriginalName");

					try {

						//武器が上書き対象にある時
						if (!weaponOriginalName.isEmpty() && !weaponName.isEmpty() && !weaponSkill.isEmpty()) {

							ContentsWeaponSelectLogic cwsl = new ContentsWeaponSelectLogic();
							Weapon weaponOriginal = cwsl.executeSelect(weaponOriginalName);

							int weaponAttackInteger = Integer.parseInt(weaponAttack);
							Weapon weaponUpdate = new Weapon(weaponName, weaponAttackInteger, weaponSkill);

							if (weaponOriginal != null) {

								request.setAttribute("weaponOriginal", weaponOriginal);
								request.setAttribute("weaponUpdate", weaponUpdate);
								url = "/WEB-INF/confirmation_update.jsp";

							} else {

								message = "該当する武器が見つかりませんでした";
								url = "/WEB-INF/update.jsp";

							}

							//キャラクターが上書き対象にある時
						} else if (!characterOriginalName.isEmpty() && !characterName.isEmpty()
								&& !characterRarity.isEmpty() && !characterAttack.isEmpty()
								&& !characterHp.isEmpty() && !characterSkill.isEmpty()
								&& !characterEvaluation.isEmpty()) {

							ContentsCharacterSelectLogic ccsl = new ContentsCharacterSelectLogic();
							BattleCharacter characterOriginal = ccsl.executeSelect(characterOriginalName);

							int characterAttackInteger = Integer.parseInt(characterAttack);
							int characterHpInteger = Integer.parseInt(characterHp);
							int characterEvaluationInteger = Integer.parseInt(characterEvaluation);

							BattleCharacter characterUpdate = new BattleCharacter(characterName, characterRarity,
									characterAttackInteger, characterHpInteger,
									characterSkill, characterEvaluationInteger);

							if (characterOriginal != null) {

								request.setAttribute("characterOriginal", characterOriginal);
								request.setAttribute("characterUpdate", characterUpdate);
								url = "/WEB-INF/confirmation_update.jsp";

							} else {

								message = "該当するキャラクターが見つかりませんでした";
								url = "/WEB-INF/update.jsp";

							}

							//ボスが上書き対象にある時
						} else if (!bossOriginalName.isEmpty() && !bossName.isEmpty()
								&& !bossAttack.isEmpty() && !bossHp.isEmpty() && !bossSpecialAttack.isEmpty()) {

							ContentsBossSelectLogic cbsl = new ContentsBossSelectLogic();
							Boss bossOriginal = cbsl.executeSelect(bossOriginalName);

							int bossAttackInteger = Integer.parseInt(bossAttack);
							int bossHpInteger = Integer.parseInt(bossHp);

							Boss bossUpdate = new Boss(bossName, bossAttackInteger, bossHpInteger, bossSpecialAttack);

							if (bossOriginal != null) {

								request.setAttribute("bossOriginal", bossOriginal);
								request.setAttribute("bossUpdate", bossUpdate);
								url = "/WEB-INF/confirmation_update.jsp";

							} else {

								message = "該当するボスが見つかりませんでした";
								url = "/WEB-INF/update.jsp";

							}

						} else {

							message = "テキストボックスに文字が入力されていません";
							url = "/WEB-INF/update.jsp";

						}

					} catch (NumberFormatException e) {

						message = "数値対応のテキストボックスに空白が入力されました";
						url = "/WEB-INF/update.jsp";

					}

				}

				//メッセージの登録
				request.setAttribute("message", message);

				//entry,delete,updateの確認画面へフォワード
				RequestDispatcher dis = request.getRequestDispatcher(url);
				dis.forward(request, response);

				//各機能の実行
			} else if (pageMove.equals("executeFunction")) {

				//登録機能
				if (functionPage.equals("entry")) {

					String weaponName = (String) request.getParameter("weaponName");
					String characterName = (String) request.getParameter("characterName");
					String bossName = (String) request.getParameter("bossName");

					//武器情報の登録
					if (weaponName != null && !weaponName.isEmpty()) {
						String weaponAttack = (String) request.getParameter("weaponAttack");
						String weaponSkill = (String) request.getParameter("weaponSkill");

						int weaponAttackInteger = Integer.parseInt(weaponAttack);

						Weapon weapon = new Weapon(weaponName, weaponAttackInteger, weaponSkill);

						//DBへ登録
						AdminWeaponDateLogic awdl = new AdminWeaponDateLogic();
						if (awdl.executeInsert(weapon)) {
							message = "登録が完了しました";
						} else {
							message = "登録が失敗しました";
						}

						//キャラクター情報の登録
					} else if (characterName != null && !characterName.isEmpty()) {
						String characterRarity = (String) request.getParameter("characterRarity");
						String characterAttack = (String) request.getParameter("characterAttack");
						String characterHp = (String) request.getParameter("characterHp");
						String characterSkill = (String) request.getParameter("characterSkill");
						String characterEvaluation = (String) request.getParameter("characterEvaluation");

						int characterAttackInteger = Integer.parseInt(characterAttack);
						int characterHpInteger = Integer.parseInt(characterHp);
						int characterEvaluationInteger = Integer.parseInt(characterEvaluation);

						BattleCharacter character = new BattleCharacter(characterName, characterRarity,
								characterAttackInteger, characterHpInteger,
								characterSkill, characterEvaluationInteger);

						//DBへ登録
						AdminCharacterDateLogic acdl = new AdminCharacterDateLogic();
						if (acdl.executeInsert(character)) {
							message = "登録が完了しました";
						} else {
							message = "登録が失敗しました";
						}

						//ボス情報の登録
					} else if (bossName != null && !bossName.isEmpty()) {
						String bossAttack = (String) request.getParameter("bossAttack");
						String bossHp = (String) request.getParameter("bossHp");
						String bossSpecialAttack = (String) request.getParameter("bossSpecialAttack");

						int bossAttackInteger = Integer.parseInt(bossAttack);
						int bossHpInteger = Integer.parseInt(bossHp);

						Boss boss = new Boss(bossName, bossAttackInteger, bossHpInteger, bossSpecialAttack);

						//DBへ登録
						AdminBossDateLogic abdl = new AdminBossDateLogic();
						if (abdl.executeInsert(boss)) {
							message = "登録が完了しました";
						} else {
							message = "登録が失敗しました";
						}

					}

					//削除機能
				} else if (functionPage.equals("delete")) {

					String weaponName = (String) request.getParameter("weaponName");
					String characterName = (String) request.getParameter("characterName");
					String bossName = (String) request.getParameter("bossName");

					//削除の可否
					boolean deletePropriety = false;

					//武器情報の削除
					if (weaponName != null && !weaponName.isEmpty()) {

						Weapon weapon = new Weapon(weaponName, 0, null);

						AdminWeaponDateLogic awdl = new AdminWeaponDateLogic();
						deletePropriety = awdl.executeDelete(weapon);

						if (deletePropriety == true) {

							message = "削除が完了しました";

						} else {

							message = "削除に失敗しました";

						}
						//キャラクター情報の削除
					} else if (characterName != null && !characterName.isEmpty()) {

						BattleCharacter character = new BattleCharacter(characterName, null, 0, 0, null, 0);

						AdminCharacterDateLogic acdl = new AdminCharacterDateLogic();
						deletePropriety = acdl.executeDelete(character);

						if (deletePropriety == true) {

							message = "削除が完了しました";

						} else {

							message = "削除に失敗しました";

						}
						//ボス情報の削除
					} else if (bossName != null && !bossName.isEmpty()) {

						Boss boss = new Boss(bossName, 0, 0, null);

						AdminBossDateLogic abdl = new AdminBossDateLogic();
						deletePropriety = abdl.executeDelete(boss);

						if (deletePropriety == true) {

							message = "削除が完了しました";

						} else {

							message = "削除に失敗しました";

						}

					}

				} else if (functionPage.equals("update")) {

					String weaponOriginalName = (String) request.getParameter("weaponOriginalName");
					String characterOriginalName = (String) request.getParameter("characterOriginalName");
					String bossOriginalName = (String) request.getParameter("bossOriginalName");

					//更新の可否
					boolean updatePropriety = false;

					//武器情報の更新
					if (weaponOriginalName != null && !weaponOriginalName.isEmpty()) {

						Weapon weaponOriginal = new Weapon(weaponOriginalName, 0, null);

						String weaponUpdateName = (String) request.getParameter("weaponUpdateName");
						String weaponUpdateAttack = (String) request.getParameter("weaponUpdateAttack");
						String weaponUpdateSkill = (String) request.getParameter("weaponUpdateSkill");

						int weaponUpdateAttackInteger = Integer.parseInt(weaponUpdateAttack);

						Weapon weaponUpdate = new Weapon(weaponUpdateName, weaponUpdateAttackInteger,
								weaponUpdateSkill);

						AdminWeaponDateLogic awdl = new AdminWeaponDateLogic();
						updatePropriety = awdl.executeUpdate(weaponOriginal, weaponUpdate);

						if (updatePropriety == true) {

							message = "更新が完了しました";

						} else {

							message = "更新に失敗しました";

						}

						//キャラクター情報の更新
					} else if (characterOriginalName != null && !characterOriginalName.isEmpty()) {

						BattleCharacter characterOriginal = new BattleCharacter(characterOriginalName, null, 0, 0, null,
								0);

						String characterUpdateName = (String) request.getParameter("characterUpdateName");
						String characterUpdateRarity = (String) request.getParameter("characterUpdateRarity");
						String characterUpdateAttack = (String) request.getParameter("characterUpdateAttack");
						String characterUpdateHp = (String) request.getParameter("characterUpdateHp");
						String characterUpdateSkill = (String) request.getParameter("characterUpdateSkill");
						String characterUpdateEvaluation = (String) request.getParameter("characterUpdateEvaluation");

						int characterUpdateAttackInteger = Integer.parseInt(characterUpdateAttack);
						int characterUpdateHpInteger = Integer.parseInt(characterUpdateHp);
						int characterUpdateEvaluationInteger = Integer.parseInt(characterUpdateEvaluation);

						BattleCharacter characterUpdate = new BattleCharacter(characterUpdateName,
								characterUpdateRarity,
								characterUpdateAttackInteger, characterUpdateHpInteger, characterUpdateSkill,
								characterUpdateEvaluationInteger);

						AdminCharacterDateLogic acdl = new AdminCharacterDateLogic();
						updatePropriety = acdl.executeUpdate(characterOriginal, characterUpdate);

						if (updatePropriety == true) {

							message = "更新が完了しました";

						} else {

							message = "更新に失敗しました";

						}

						//ボス情報の更新
					} else if (bossOriginalName != null && !bossOriginalName.isEmpty()) {

						Boss bossOriginal = new Boss(bossOriginalName, 0, 0, null);

						String bossUpdateName = (String) request.getParameter("bossUpdateName");
						String bossUpdateAttack = (String) request.getParameter("bossUpdateAttack");
						String bossUpdateHp = (String) request.getParameter("bossUpdateHp");
						String bossUpdateSpecialAttack = (String) request.getParameter("bossUpdateSpecialAttack");

						int bossUpdateAttackInteger = Integer.parseInt(bossUpdateAttack);
						int bossUpdateHpInteger = Integer.parseInt(bossUpdateHp);

						Boss bossUpdate = new Boss(bossUpdateName, bossUpdateAttackInteger, bossUpdateHpInteger,
								bossUpdateSpecialAttack);

						AdminBossDateLogic abdl = new AdminBossDateLogic();
						updatePropriety = abdl.executeUpdate(bossOriginal, bossUpdate);

						if (updatePropriety == true) {

							message = "更新が完了しました";

						} else {

							message = "更新に失敗しました";

						}

					}

				}

				//メッセージの登録
				request.setAttribute("message", message);

				//admin.jspへフォワード
				RequestDispatcher dis = request.getRequestDispatcher("/WEB-INF/admin.jsp");
				dis.forward(request, response);

			}
		} catch (Exception e) {

		}
	}

}
