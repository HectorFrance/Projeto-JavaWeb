package Servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CRUD;
import Model.Produto;

/**
 * Servlet implementation class AlterarItem
 */
@WebServlet("/AlterarItem")
public class AlterarItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AlterarItem() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Do get");
		System.out.println("ESSE È O ID: "+(String) request.getParameter("id"));
		int id = Integer.parseInt((String) request.getParameter("id"));
		System.out.println(id);
		CRUD bd = new CRUD();
		Produto p = null;
		try {
			p = bd.consultaUM(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(p.nome);

		request.setAttribute("produto", p);
		RequestDispatcher dispatcher = request.getRequestDispatcher("AlterarProduto.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("do post");
		System.out.println(request.getParameter("id"));
		Produto p = new Produto();;
		CRUD bd = new CRUD();
		int id = Integer.parseInt(request.getParameter("id"));
		p.id=id;
		p.nome=request.getParameter("nome");
		p.desc=request.getParameter("desc");
		p.quant=request.getParameter("quant");
		p.preco=request.getParameter("prec");
		p.descont=request.getParameter("descont");
		System.out.println("do post");
		bd.alterarPrecoID(p);

		RequestDispatcher dispatcher = request.getRequestDispatcher("Tabela.jsp");
		dispatcher.forward(request, response);
	}

}
