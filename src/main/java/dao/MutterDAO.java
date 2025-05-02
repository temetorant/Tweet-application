/*package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import model.Mutter;

public class MutterDAO {
	public class EmployeesDAO {
		//データベースに接続に使用する情報
		private final String JDBC_URL =
				"jdbc:h2:tcp://localhost/~/example";
		private final String DB_USER = "sa";
		private final String DB_PASS = "";
		
		
		public List<Mutter> findALL(){
			List<Mutter> mutterList = new ArrayList<>();
			
			//JDBCドライバを読み込む
			try {
				Class.forName("org.h2.Driver");
			} catch(ClassNotFoundException e) {
				throw new IllegalStateException(
						"JDBCドライバを読み込めませんでした");
			}
			
			//データベースに接続
			try(Connection conn = DriverManager.getConnection(
					JDBC_URL,DB_USER,DB_PASS)){
				
				//SELECT文を準備
				String sql ="INSERT INTO MUTTERS(NAME,TEXT) VALUES(?,?)";
				PreparedStatement pStmt = conn.prepareStatement(sql);
				
				//INSERT文を実行(resultには追加された行数が代入される)
				int result = pStmt.executeUpdate();
				
		}
		}
	}
}*/
