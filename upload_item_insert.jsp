<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>



<html>

<body>
<%
		
ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("//Gallery1");
		String paramname=null;
		String file=null,sfile=null;
		String cat=null,pname=null,paddress=null,mappath=null,description=null,image=null,path=null,spath=null,placeimage=null;		
		String s1=null,s2=null,fcategory=null,item_name=null,price=null;
		Connection con=null;		
		//name=(String)session.getAttribute("name");
		//email=(String)session.getAttribute("email");
		java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;
 
		File file1 = null;
		File file2 = null;
			String fPath =null;
			String sfPath =null;
		
		try {

			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
				if(paramname.equalsIgnoreCase("fcategory"))
				{
					fcategory=multi.getParameter(paramname);
					
				}
				
			
				
				if(paramname.equalsIgnoreCase("description"))
				{
					description=multi.getParameter(paramname);
				}
			
				
				if(paramname.equalsIgnoreCase("image"))
				{
					image=multi.getParameter(paramname);
				}
				
				
				if(paramname.equalsIgnoreCase("cat"))
				{
					cat=multi.getParameter(paramname);
					
				}
				
				if(paramname.equalsIgnoreCase("item_name"))
				{
					item_name=multi.getParameter(paramname);
					
				}
					
					if(paramname.equalsIgnoreCase("price"))
				{
					price=multi.getParameter(paramname);
					
				}
					
				
				}
					
			int f = 0;
	Enumeration files = multi.getFileNames();
	String ans="null,";	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			image = multi.getFilesystemName(paramname);
			//placeimage = multi.getFilesystemName(paramname);
		//	System.out.println(image+"placeimage:--"+placeimage);
			fPath = context.getRealPath("//Gallery1//"+image);
			//sfPath = context.getRealPath("\\Gallery\\"+image);
			path="Gallery1/"+image;
			//spath="Gallery/"+placeimage;
			//System.out.println("Path is:"+path+"spath is:"+spath);
			file1 = new File(fPath);
			//file2 = new File(sfPath);
			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
			//FileInputStream sfs = new FileInputStream(file2);
			//list.add(sfs);
		}	
		
		//out.println("Path is:"+path);	
		
			ans+=path+",";
			//out.println(ans);	
			
			
		
	}
	   // out.println(ans);
					
		String answers[]=ans.split(",");
		
			s1=answers[1];
			//out.println(s1);
			// s2=answers[2];
		
			
			
			
			
		//	FileInputStream fs1 = null;
            //name=dirName+"\\Gallery\\"+image;
						
			//Connection con=null;
			con=databasecon.getconnection(); 

PreparedStatement ps=null;
		ps=con.prepareStatement("INSERT INTO items_upload(description,sortdate,img_path,category,fcategory,item_name,price) VALUES(?,?,?,?,?,?,?)");
				//ps.setString(1,image);
               	
       			ps.setString(1,description);
			  
				ps.setString(2,strDateNew);
			   	ps.setString(3,s1);
				
				ps.setString(4,cat);
				ps.setString(5,fcategory);
				ps.setString(6,item_name);
				ps.setString(7,price);
				
				
																
	    	int x=ps.executeUpdate();
		
		 if(x!=0)
			{
				
			   
				       response.sendRedirect("success1.jsp?Message=success");
			        
			
			}

			else
			{
				out.println("error");
			//	response.sendRedirect("../home.jsp?Message=fail");
			}
				
			
			
			
			
			
					
		
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
 %>
</body>
</html>