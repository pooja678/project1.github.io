package com.builders.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;

import com.builders.dao.MemberDao;

import com.builders.daoImpl.MemberDaoImpl;

import com.builders.model.Member;


/**
 * Servlet implementation class UpdateProfile
 */
@WebServlet("/UpdateProfile")
@MultipartConfig(fileSizeThreshold=1024*1024*2,
maxFileSize=1024*1024*10,
maxRequestSize=1024*1024*50)
public class UpdateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
RequestDispatcher rd=null;

Member member=new Member();

		
		try {
		String id=request.getParameter("memberid");
		InputStream fis=null;
		byte[]  bytes=IOUtils.toByteArray(fis);
		
	
/*		String image="images/";
		
		int memberId=Integer.parseInt(id);
		Part part=request.getPart("image");
		//InputStream fis=part.getInputStream();
		byte[]  bytes=IOUtils.toByteArray(fis);
		String path=request.getServletContext().getRealPath("")+"images";
		String fileName=path+File.separator+member.getProfileImage()+".jpg";
		image=image.concat(memberId+".jpg");
		System.out.println(fileName);
		FileOutputStream fos=new FileOutputStream(fileName);
		fos.write(bytes);
		fos.close();
		*/
		
			
		String path=request.getRealPath("/")+"images"+File.separator+member.getProfileImage();	
		System.out.println("PATH IS : "+path);
	
	
		member.setProfileImage(bytes);
	   MemberDao memberDao=new MemberDaoImpl();
	   
       if(memberDao.updateMember(member));
       List<Member> memberList=memberDao.getAllMember();
       if(memberList!=null)
       {
    	  memberDao.deleteFile(path);
    	 
    		 if(memberDao.saveFile(fis, path))
    		  {
    			  request.setAttribute("updateProfile", "success");
    		       	System.out.println("********************* profile Updated");
    		       	request.setAttribute("list", memberList);
    		       	rd=request.getRequestDispatcher("myProfile.jsp");
    		       	rd.forward(request, response);
    		     
    		 }
    	  }
    	   
    	     
       else
       {
    	request.setAttribute("updateProfile","error");
       	rd=request.getRequestDispatcher("error.jsp");
       	rd.forward(request, response);
       }
       	
       
		}
		catch(NullPointerException  e)
		{
			e.printStackTrace();
		}
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
