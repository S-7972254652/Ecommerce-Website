

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/add-to-cart")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		try(PrintWriter out=response.getWriter()) {
			ArrayList<Cart> cartList=new ArrayList<>();	
			
			int id=Integer.parseInt(request.getParameter("id")); 
			Cart cm=new Cart();
			cm.setId(id);
			cm.setQuantity();
			
			HttpSession session=request.getSession();
			ArrayList<Cart> cart_list=(ArrayList<Cart>) session.getAttribute("cart-list");
			
			if(cart_list==null) {
				cartList.add(cm);
				session.setAttribute("cart-list", cartList);
				out.println("Session created and added to list");
			}
		} catch (Exception e) {
			
		}
	}

}
