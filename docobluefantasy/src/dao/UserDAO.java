package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.User;

public class UserDAO {

	private final String JDBC_URL = "jdbc:mysql://172.16.6.152:3306/docobluefantasy?characterEncoding=UTF-8&serverTimezone=JST";
	private final String DB_USER = "student";
	private final String DB_PASS = "root";

	//接続状態をcloseするための初期化
	private Connection conn = null;
	private PreparedStatement pStmt = null;
	private ResultSet rs = null;

	//ユーザーの登録
	public boolean insertDB(User user) {

		boolean insertBool = false;

		try {

			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);

			conn.setAutoCommit(false);

			String sql = "INSERT INTO USER (ADMIN,NAME,PASS,BILLING) VALUES (?,?,?,?)";
			pStmt = conn.prepareStatement(sql);
			pStmt.setInt(1, user.getAdmin());
			pStmt.setString(2, user.getName());
			pStmt.setString(3, user.getPass());
			pStmt.setInt(4, user.getBilling());

			int propriety = pStmt.executeUpdate();

			try {
				conn.commit();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}

			//登録が完了出来た時、trueが返る
			if (propriety == 0) {

				insertBool = false;

			} else {

				insertBool = true;

			}

		} catch (SQLException e) {

			e.printStackTrace();
			return false;

			//closeする
		} finally {
			if (rs != null) {
				try {

					rs.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pStmt != null) {
				try {

					pStmt.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {

					conn.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		return insertBool;

	}

	//ネーム重複確認
	public boolean matchNameDB(User user) {

		boolean matchBool = true;

		try {

			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);

			String sql = "SELECT NAME FROM USER WHERE NAME = ?";
			pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, user.getName());

			rs = pStmt.executeQuery();

			//該当したネーム
			if (rs.next()) {

				matchBool = false;

			}

		} catch (SQLException e) {

			e.printStackTrace();
			return false;

			//closeする
		} finally {
			if (rs != null) {
				try {

					rs.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pStmt != null) {
				try {

					pStmt.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {

					conn.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		return matchBool;

	}

	//ログイン確認機能
	public boolean matchNamePassDB(User user) {

		boolean accountBool = false;

		try {

			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);

			String sql = "SELECT NAME,PASS FROM USER WHERE NAME = ? AND PASS = ?";
			pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, user.getName());
			pStmt.setString(2, user.getPass());

			rs = pStmt.executeQuery();

			if (rs.next()) {

				String name = rs.getString("NAME");
				String pass = rs.getString("PASS");

				if (user.getName().equals(name) && user.getPass().equals(pass)) {

					return true;

				} else {

					return false;

				}

			}

		} catch (SQLException e) {

			e.printStackTrace();
			return false;

			//closeする
		} finally {
			if (rs != null) {
				try {

					rs.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pStmt != null) {
				try {

					pStmt.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {

					conn.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		return accountBool;

	}

	//ユーザー情報の取得
	public User selectDB(User user) {

		//Selectの結果をユーザー情報に格納するための変数
		User userResult = null;

		try {

			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);

			String sql = "SELECT ADMIN,NAME,PASS,BILLING FROM USER WHERE NAME = ? AND PASS = ?";
			pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, user.getName());
			pStmt.setString(2, user.getPass());

			rs = pStmt.executeQuery();

			if (rs.next()) {

				int admin = rs.getInt("ADMIN");
				String name = rs.getString("NAME");
				String pass = rs.getString("PASS");
				int billing = rs.getInt("BILLING");

				userResult = new User(admin, name, pass, billing);

			}

		} catch (SQLException e) {

			e.printStackTrace();

			//closeする
		} finally {
			if (rs != null) {
				try {

					rs.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pStmt != null) {
				try {

					pStmt.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {

					conn.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		return userResult;

	}

	//ガチャ1回につき3000円追加する
	public boolean billing3000DB(User user) {

		int billing = 0;
		boolean updateBool = false;

		try {

			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);

			String sql = "SELECT BILLING FROM USER WHERE NAME = ? AND PASS = ?";

			pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, user.getName());
			pStmt.setString(2, user.getPass());

			rs = pStmt.executeQuery();

			if (rs.next()) {

				billing = rs.getInt("BILLING");

			}

			StringBuilder sqlWrite = new StringBuilder();

			conn.setAutoCommit(false);

			sqlWrite.append("UPDATE USER ");
			sqlWrite.append("SET ");
			sqlWrite.append("BILLING = ? ");//1
			sqlWrite.append("WHERE ");
			sqlWrite.append("NAME = ?");//2

			pStmt = conn.prepareStatement(sqlWrite.toString());
			pStmt.setInt(1, billing + 3000);
			pStmt.setString(2, user.getName());

			int propriety = pStmt.executeUpdate();

			try {
				conn.commit();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}

			//削除が完了出来た時、trueが返る
			if (propriety == 0) {

				updateBool = false;

			} else {

				updateBool = true;

			}

		} catch (SQLException e) {

			e.printStackTrace();
			return false;

			//closeする
		} finally {

			if (rs != null) {
				try {

					rs.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pStmt != null) {
				try {

					pStmt.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {

					conn.close();

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		return updateBool;

	}
}
