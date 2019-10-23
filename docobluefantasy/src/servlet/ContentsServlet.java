package servlet;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.BattleCharacter;
import bean.Boss;
import bean.User;
import bean.Weapon;
import model.ContentsBossSelectLogic;
import model.ContentsCharacterSelectLogic;
import model.ContentsWeaponSelectLogic;

/**
 *ContentsServlet
 */
@WebServlet("/ContentsServlet")
public class ContentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		String url = null;

		if (Objects.nonNull(user)) {

			ContentsBossSelectLogic cbsl = new ContentsBossSelectLogic();
			ContentsCharacterSelectLogic ccsl = new ContentsCharacterSelectLogic();
			ContentsWeaponSelectLogic cwsl = new ContentsWeaponSelectLogic();

			String bossName = request.getParameter("bossName");
			String charaName = request.getParameter("characterName");
			String weaponName = request.getParameter("weaponName");

			Boss boss = null;
			BattleCharacter battlechatacter = null;
			Weapon weapon = null;

			//Boss情報
			if (bossName != null && bossName.equals("grandOrder")) {
				boss = cbsl.executeSelect("ジ・オーダー・グランデ");
				url = "/boss/boss_grandorder.jsp";//
			} else if (bossName != null && bossName.equals("gurani")) {
				boss = cbsl.executeSelect("グラニ");
				url = "/boss/boss_gurani.jsp";
			} else if (bossName != null && bossName.equals("medusa")) {
				boss = cbsl.executeSelect("メドゥーサ");
				url = "/boss/boss_medusa.jsp";
			} else if (bossName != null && bossName.equals("Morrigna")) {
				boss = cbsl.executeSelect("バイヴカハ");
				url = "/boss/boss_morrigna.jsp";
			} else if (bossName != null && bossName.equals("roseQueen")) {
				boss = cbsl.executeSelect("ローズクイーン");
				url = "/boss/boss_rosequeen.jsp";
			} else if (bossName != null && bossName.equals("shiva")) {
				boss = cbsl.executeSelect("シヴァ");
				url = "/boss/boss_shiva.jsp";
			} else if (bossName != null && bossName.equals("tiamatOmega")) {
				boss = cbsl.executeSelect("ティアマトマグナ");
				url = "/boss/boss_tiamatomega.jsp";
			} else if (bossName != null && bossName.equals("ultimateBahamut")) {
				boss = cbsl.executeSelect("アルティメットバハムート");
				url = "/boss/boss_ultimatebahamut.jsp";
			}

			//Character情報
			if (charaName != null && charaName.equals("catalina")) {
				battlechatacter = ccsl.executeSelect("カタリナ");
				url = "/character/character_catalina.jsp";
			} else if (charaName != null && charaName.equals("eugen")) {
				battlechatacter = ccsl.executeSelect("オイゲン");
				url = "/character/character_eugen.jsp";
			} else if (charaName != null && charaName.equals("lakham")) {
				battlechatacter = ccsl.executeSelect("ラカム");
				url = "/character/character_lakham.jsp";
			} else if (charaName != null && charaName.equals("lancelot")) {
				battlechatacter = ccsl.executeSelect("ランスロット");
				url = "/character/character_lancelot.jsp";
			} else if (charaName != null && charaName.equals("limitedIo")) {
				battlechatacter = ccsl.executeSelect("イオ(リミテッド)");
				url = "/character/character_limitedio.jsp";
			} else if (charaName != null && charaName.equals("limitedRosetta")) {
				battlechatacter = ccsl.executeSelect("ロゼッタ(リミテッド)");
				url = "/character/character_limitedrosetta.jsp";
			} else if (charaName != null && charaName.equals("narumea")) {
				battlechatacter = ccsl.executeSelect("ナルメア");
				url = "/character/character_narumea.jsp";
			} else if (charaName != null && charaName.equals("percival")) {
				battlechatacter = ccsl.executeSelect("パーシヴァル");
				url = "/character/character_percival.jsp";
			} else if (charaName != null && charaName.equals("io")) {
				battlechatacter = ccsl.executeSelect("イオ");
				url = "/character/chracter_io&rosetta.jsp";
			}

			//Weapon情報
			if (weaponName != null && weaponName.equals("bluesphere")) {
				weapon = cwsl.executeSelect("ブルースフィア");
				url = "/weapon/weapon_bluesphere.jsp";
			} else if (weaponName != null && weaponName.equals("dragonbarv")) {
				weapon = cwsl.executeSelect("D・ビィ");
				url = "/weapon/weapon_dragonbarv.jsp";
			} else if (weaponName != null && weaponName.equals("ixaba")) {
				weapon = cwsl.executeSelect("イクサバ");
				url = "/weapon/weapon_ixaba.jsp";
			} else if (weaponName != null && weaponName.equals("loveeternal")) {
				weapon = cwsl.executeSelect("エターナル・ラヴ");
				url = "/weapon/weapon_loveeternal.jsp";
			} else if (weaponName != null && weaponName.equals("luminieralsordomega")) {
				weapon = cwsl.executeSelect("シュヴァリエソード・マグナ");
				url = "/weapon/weapon_luminieralsordomega.jsp";
			} else if (weaponName != null && weaponName.equals("nibelunghorn")) {
				weapon = cwsl.executeSelect("ニーベルン・ホルン");
				url = "/weapon/weapon_nibelunghorn.jsp";
			}

			request.setAttribute("boss", boss);
			request.setAttribute("battlechatacter", battlechatacter);
			request.setAttribute("weapon", weapon);

		} else {

			request.setAttribute("message", "ログインしてください");
			url = "/message.jsp";

		}

		RequestDispatcher dis = request.getRequestDispatcher(url);
		dis.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		String message = "ログアウト完了しました";

		//セッションスコープの破棄
		session.invalidate();

		request.setAttribute("message", message);

		//logout.jspへフォワード
		RequestDispatcher dis = request.getRequestDispatcher("/message.jsp");
		dis.forward(request, response);

	}

}
