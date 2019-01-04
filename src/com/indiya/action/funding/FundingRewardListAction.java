package com.indiya.action.funding;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;

public class FundingRewardListAction implements Action {

	private static FundingRewardListAction fundingRewardListAction;

	static {
		fundingRewardListAction = new FundingRewardListAction();
	}

	private FundingRewardListAction() {
	}

	public static FundingRewardListAction getFundingRewardListAction() {
		return fundingRewardListAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		return null;
	}

}
