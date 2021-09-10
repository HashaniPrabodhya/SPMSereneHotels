/*package com.booking;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateBookingServlet")
public class UpdateBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String bookingId=request.getParameter("bookingId");
		String customerName=request.getParameter("customerName");
		String accomodationType=request.getParameter("accomodationType");
		String from=request.getParameter("from");
		String to	=request.getParameter("to");	
		String noNights=request.getParameter("noNights");
		String noAdults=request.getParameter("noAdults");
		String noChildren=request.getParameter("noChildren");
		String phone=request.getParameter("phone");
		String userName=request.getParameter("userName");
		
		boolean isTrue;
		
		isTrue=BookingDBUtil.updateBooking(bookingId, customerName, accomodationType, from, to, noNights, noAdults, noChildren, phone, userName);
		
		if(isTrue == true) {
			
			List<Booking>bookingDetails=BookingDBUtil.getBookingDetails(bookingId);
			request.setAttribute("bookingDetails", bookingDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("Bookings.jsp");
			dis.forward(request, response);
		}
		else {
			List<Booking>bookingDetails=BookingDBUtil.getBookingDetails(bookingId);
			request.setAttribute("bookingDetails", bookingDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("Bookings.jsp");
			dis.forward(request, response);
		}
	}

}*/
