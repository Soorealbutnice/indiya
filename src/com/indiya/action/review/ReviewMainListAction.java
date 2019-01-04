package com.indiya.action.review;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.review.model.ReviewDto;
import com.indiya.review.service.ReviewServiceImpl;

public class ReviewMainListAction implements Action {

private static ReviewMainListAction reviewMainListAction;
	
	static {
		reviewMainListAction = new ReviewMainListAction();
	}
	
	private ReviewMainListAction() {}

	public static ReviewMainListAction getReviewMainListAction() {
		return reviewMainListAction;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<ReviewDto> list = ReviewServiceImpl.getReviewService().mainList();
		request.setAttribute("review", list);
		String path = "/Review/ReviewViewMain.jsp?";
		return path;
	}

}
