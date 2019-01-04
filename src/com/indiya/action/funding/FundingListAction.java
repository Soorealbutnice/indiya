package com.indiya.action.funding;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.funding.model.FundingDto;
import com.indiya.funding.service.FundingServiceImpl;
import com.indiya.util.ParameterCheck;

public class FundingListAction implements Action {

	private static FundingListAction fundingListAction;

	static {
		fundingListAction = new FundingListAction();
	}

	private FundingListAction() {
	}

	public static FundingListAction getFundingListAction() {
		return fundingListAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int pg = ParameterCheck.naNToZero(request.getParameter("pg"));
		String key = ParameterCheck.nullToBlank(request.getParameter("key"));
		String word = ParameterCheck.nullToBlank(request.getParameter("word"));
		
		List<FundingDto> list = FundingServiceImpl.getFundingService().getFundingList(pg, key, word);
//		PageNavigation navigator = CommonServiceImpl.getCommonService().getPageNavigation(bcode, pg, key, word);
//		navigator.setRoot(request.getContextPath());		//반환받은 navigator에 root세팅
//		navigator.makeNavigator();
//		System.out.println("print in reboardlistaction list size : "+list.size());
		request.setAttribute("list", list);
//		request.setAttribute("navigator", navigator);
		return "/funding/list.jsp?";
	}

}
