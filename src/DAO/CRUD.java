package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Model.Produto;
import util.ConnectionUtil;

public class CRUD {
	Connection conn = null;

	public void addProduto(Produto p) {
		try {
			conn = ConnectionUtil.getConnection();
			Statement stm = (Statement) conn.createStatement();
			stm.executeUpdate("insert into produtos (nome, descr, preco, quant, descont) values ('" + p.nome + "','"
					+ p.desc + "', '" + p.preco + "','" + p.quant + "','" + p.descont + "');");
			conn.close();
		} catch (SQLException e) {
			System.out.println("PROBLEMA NO: " + e.getMessage());
		}
	}

	public List<Produto> listarTudo() {
		List<Produto> listaProdutos = new ArrayList<Produto>();
		try {
			conn = ConnectionUtil.getConnection();
			Statement stm = (Statement) conn.createStatement();
			ResultSet rs = stm.executeQuery("select * from produtos;");
			while (rs.next()) {
				Produto p = new Produto();
				p.id = rs.getInt("id");
				p.nome = rs.getString("nome");
				p.desc = rs.getString("descr");
				p.preco = rs.getString("preco");
				p.descont = rs.getString("descont");
				p.quant = rs.getString("quant");
				System.out.println(
						"Id: " + p.id + " | Nome: " + p.nome + " | Descrição: " + p.desc + " | Preço: " + p.preco);
				listaProdutos.add(p);

			}
			conn.close();
		} catch (SQLException e) {
			System.out.println("PROBLEMA NO: " + e.getMessage());
		}
		return listaProdutos;
	}

	public void deletaId(int id) {
		try {
			conn = ConnectionUtil.getConnection();
			Statement stm = (Statement) conn.createStatement();
			stm.executeUpdate("delete from produtos where id=" + id + ";");
			conn.close();
		} catch (SQLException e) {
			System.out.println("PROBLEMA NO: " + e.getMessage());
		}
	}

	public void alterarPrecoID(Produto p) {
		System.out.println("Alterando: "+
				"Id: " + p.id + " | Nome: " + p.nome + " | Descrição: " + p.desc + " | Preço: " + p.preco);
		try {
			conn = ConnectionUtil.getConnection();
			Statement stm = (Statement) conn.createStatement();
			stm.executeUpdate("UPDATE produtos SET nome = '"+p.nome+"',descr = '"+p.desc+"', quant = '"+p.quant+"', preco ='"+p.preco+"', descont = '"+p.descont+"'  WHERE id = "+p.id+";");
			conn.close();
		} catch (SQLException e) {
			System.out.println("PROBLEMA NO: " + e.getMessage());
		}
	}

	public Produto consultaUM(int id) throws SQLException {
		Produto p = new Produto();
		
		conn = ConnectionUtil.getConnection();
		Statement stm = (Statement) conn.createStatement();
		ResultSet rs = stm.executeQuery("select * from produtos where id= "+id+" ;");
		rs.next();
		p.id = rs.getInt("id");
		p.nome = rs.getString("nome");
		p.desc = rs.getString("descr");
		p.preco = rs.getString("preco");
		p.descont = rs.getString("descont");
		p.quant = rs.getString("quant");
		
		System.out.println(
				"Id: " + p.id + " | Nome: " + p.nome + " | Descrição: " + p.desc + " | Preço: " + p.preco);
		conn.close();
		return p;
	}
}
