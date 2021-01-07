package app;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import DAO.CRUD;
import util.ConnectionUtil;

public class TesteJDBC {
	public static void main(String[] args) {
		try {
			CRUD bd = new CRUD();
			bd.consultaUM(1);
		}catch (SQLException e) {
			System.out.println("PROBLEMA NO: "+e.getMessage());
		}
	}
}
