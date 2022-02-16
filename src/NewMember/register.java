package NewMember;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String accountno = request.getParameter("accountno");
//		String name = request.getParameter("name");
//		String number = request.getParameter("no");
//		String email = request.getParameter("email");
//		String dob = request.getParameter("dob");
//		String address = request.getParameter("address");
//		
//		String pin = request.getParameter("pin");
		
		
		try {
			Connection con = registerdao.initializeDatabase();
			
			 PreparedStatement ps = con.prepareStatement("insert into ghbank values(?,?,?,?,?,?,?)");
			 String accountno = request.getParameter("accountno");
			 ps.setString(1, accountno);
			 ps.setString(2, request.getParameter("name"));
			 ps.setString(3, request.getParameter("no"));
			 ps.setString(4, request.getParameter("email"));
			 ps.setString(5, request.getParameter("dob"));
			 ps.setString(6, request.getParameter("address"));
			 ps.setString(7, request.getParameter("pin"));
			 ps.executeUpdate();
			 ps.close();
			 con.close();
			 
			 PrintWriter out = response.getWriter();
	            out.println("<html><body><b>Successfully Inserted"
	                        + "</b></body></html>");
	          
	            
	            HttpSession session = request.getSession();
	    		try {
	    			session.setAttribute("account",accountno);
	    		//	session.setAttribute("account",rs.getString(accountno));
	    		} catch (Exception e) {
	    			// TODO Auto-generated catch block
	    			e.printStackTrace();
	    		}
	            response.sendRedirect("main.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
