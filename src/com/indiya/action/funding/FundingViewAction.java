package com.indiya.action.funding;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.indiya.action.Action;
import com.indiya.funding.model.FundingDto;
import com.indiya.funding.model.FundingRewardDto;
import com.indiya.funding.service.FundingServiceImpl;
import com.indiya.util.ParameterCheck;

public class FundingViewAction implements Action {

	private static FundingViewAction fundingViewAction;

	static {
		fundingViewAction = new FundingViewAction();
	}

	private FundingViewAction() {
	}

	public static FundingViewAction getFundingViewAction() {
		return fundingViewAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "/index.jsp?";
		HttpSession session = request.getSession();
//		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
//		if(memberDto != null) {		//회원정보가 있을 때
		//TODO login check
		if(true) {
			int seq = ParameterCheck.naNToZero(request.getParameter("seq"));
			if(seq != 0) {
				FundingDto fundingDto = FundingServiceImpl.getFundingService().viewFundingDetail(seq);
				request.setAttribute("detail", fundingDto);
				List<FundingRewardDto> list = FundingServiceImpl.getFundingService().getFundingRewardList(seq);
				request.setAttribute("rewardlist", list);
				path = "/funding/view.jsp?";
			}
		}else {
			path = "/index.jsp?";
		}
		return path;
	}

}
