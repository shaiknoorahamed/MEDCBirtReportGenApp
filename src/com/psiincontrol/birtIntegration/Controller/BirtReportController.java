package com.psiincontrol.birtIntegration.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.psiincontrol.birtIntegration.birtViewer.ReportProcessor;


public class BirtReportController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//this is the single tone class.
	private ReportProcessor processor ;
	
	
	@Override
	public void  init(){
	 
		processor = ReportProcessor.getReportProcessor();
		processor.initilizeBirtEngine();
		System.out.println("Engine Initilized!!");
		
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("processing report complete");
		processor.processReport(request, response);
		
	}
	@Override
	  public void doPost(HttpServletRequest request,
              HttpServletResponse response)
            throws ServletException, IOException {
		  doGet(request, response);
     }
	
	@Override
	public void  destroy(){

	   processor.shutDownBirtEngine();
	   
	   
	}
	
}
