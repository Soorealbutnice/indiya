package com.indiya.action.funding;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;

public class FundingModifyAction implements Action {

	private static FundingModifyAction fundingModifyAction;

	static {
		fundingModifyAction = new FundingModifyAction();
	}

	private FundingModifyAction() {
	}

	public static FundingModifyAction getFundingModifyAction() {
		return fundingModifyAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		return null;
	}

}
