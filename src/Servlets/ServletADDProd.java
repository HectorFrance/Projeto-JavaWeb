package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CRUD;
import Model.Produto;

/**
 * Servlet implementation class ServletADDProd
 */
@WebServlet("/ServletADDProd")
public class ServletADDProd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletADDProd() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Produto p = new Produto();
		p.nome = (String) request.getParameter("nomep");
		System.out.println(p.nome);
		p.desc = (String) request.getParameter("descp");
		p.preco = (String) request.getParameter("preco");
		p.quant= (String) request.getParameter("quantp");
		p.descont=(String) request.getParameter("desconto");
		CRUD bd = new CRUD();
		bd.addProduto(p);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Tabela.jsp");
		dispatcher.forward(request, response);
	}

}
