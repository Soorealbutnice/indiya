package com.indiya.action.funding;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;

public class FundingDeleteAction implements Action {

	private static FundingDeleteAction fundingDeleteAction;

	static {
		fundingDeleteAction = new FundingDeleteAction();
	}

	private FundingDeleteAction() {
	}

	public static FundingDeleteAction getFundingDeleteAction() {
		return fundingDeleteAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		return null;
	}

}
