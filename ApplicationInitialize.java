import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;

public class ApplicationInitialize extends HttpServlet
{
	public void init(javax.servlet.ServletConfig sc) throws ServletException
	{
		ServletContext ctx=sc.getServletContext();
		String val=ctx.getInitParameter("oracletab");
		String prop=ctx.getRealPath("WEB-INF//db//db.properties");
		String oracle=ctx.getRealPath("WEB-INF//dbtable//oracletable.sql");
		LoadProperties.propLoad(prop);
		if(val.equals("yes")){
			TableCreate.createTable(oracle);
			System.out.println("Oracle Table successfully created!");
		}
	}
}