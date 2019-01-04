package com.indiya.action.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.review.model.ReviewDto;
import com.indiya.review.service.ReviewServiceImpl;

public class ReviewGetListAction implements Action {
	
	
	private static ReviewGetListAction reviewGetListAction;
	
	static {
		reviewGetListAction = new ReviewGetListAction();
	}
	
	private ReviewGetListAction() {
		
	}

	public static ReviewGetListAction getReviewGetListAction() {
		return reviewGetListAction;
	}
	

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String path = "/Review/ReviewViewMain.jsp?";
		int reviewNo = Integer.parseInt(request.getParameter("reviewNo"));
		ReviewDto reviewDto = ReviewServiceImpl.getReviewService().getReview(reviewNo);
		request.setAttribute("review", reviewDto);
		path = "/Review/reviewView.jsp?";
		return path;

	}

}