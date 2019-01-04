package com.indiya.action.funding;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;

public class FundingBackingAction implements Action {

	private static FundingBackingAction fundingBackingAction;

	static {
		fundingBackingAction = new FundingBackingAction();
	}

	private FundingBackingAction() {
	}

	public static FundingBackingAction getFundingBackingAction() {
		return fundingBackingAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		return null;
	}

}
