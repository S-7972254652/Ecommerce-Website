import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/addProductServlet")
@MultipartConfig
public class addProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private static final String query="INSERT INTO APRODUCTDATA(NAME,DESCRIPTION,PRICE,DISCOUNT,QUANTITY,CATEGORY,IMAGE)VALUES(?,?,?,?,?,?,?)";
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// Fetching Category
		PrintWriter pw=res.getWriter();
		res.setContentType("text/html");
		
		//String bookname=req.getParameter("bookname");
		String name=req.getParameter("pName");
		String description=req.getParameter("pDesc");
		int price=Integer.parseInt(req.getParameter("pPrice"));
		int discount=Integer.parseInt(req.getParameter("pDiscount"));
		int quantity=Integer.parseInt(req.getParameter("pQuantity"));
		String category=req.getParameter("catId");
		
		
		Part p=req.getPart("pPic");
		String fileName=p.getSubmittedFileName();//Selected File Image Name
		String uploadPath="C:/Users/91797/eclipse-workspace/Product-3/src/main/webapp/images/"+fileName;//upload path where we want to upload img
		System.out.println(uploadPath);
		
		//upload img to our selected folder
		try {
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=p.getInputStream();

		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();	
		}
		//Connection
		try(Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","");
		PreparedStatement ps=con.prepareStatement(query);){
			ps.setString(1, name);
			ps.setString(2, description);
			ps.setInt(3, price);
			ps.setInt(4, discount);
			ps.setInt(5, quantity);
			ps.setString(6, category);
			ps.setString(7, fileName);
			
		
			
			
			int count=ps.executeUpdate();
			if(count==1) {
			
				pw.println("<h2>Record is Registered Successfully</h2>");
			}else {
				pw.println("<h2>Record is not Registered Successfully</h2>");
			}
		}
		catch(SQLException se){
			se.printStackTrace();
			pw.println("<h1>"+se.getMessage()+"</h2>");
			}
		catch(Exception e1) {
			e1.printStackTrace();
			pw.println("<h1>"+e1.getMessage()+"</h2>");
		}
	

		pw.println("<a href='admin.jsp'>Admin Panel</a>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}


}