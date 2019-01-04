package com.indiya.action.funding;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;

public class FundingStatusAction implements Action {

	private static FundingStatusAction fundingStatusAction;

	static {
		fundingStatusAction = new FundingStatusAction();
	}

	private FundingStatusAction() {
	}

	public static FundingStatusAction getFundingStatusAction() {
		return fundingStatusAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		return null;
	}

}
