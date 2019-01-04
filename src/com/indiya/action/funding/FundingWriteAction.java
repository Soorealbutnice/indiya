package com.indiya.action.funding;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.indiya.action.Action;
import com.indiya.funding.model.FundingDto;
import com.indiya.funding.model.FundingRewardDto;
import com.indiya.funding.service.FundingServiceImpl;

public class FundingWriteAction implements Action {

	private static FundingWriteAction fundingWriteAction;

	static {
		fundingWriteAction = new FundingWriteAction();
	}

	private FundingWriteAction() {
	}

	public static FundingWriteAction getFundingWriteAction() {
		return fundingWriteAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "/reboard/writefail.jsp?";
		
		Map<String, String[]> map = request.getParameterMap();
		Set<String> keys = map.keySet();
		Object[] keyArr = keys.toArray();
		String nums = "";
		for(int i=0; i<keyArr.length; i++) {
			System.out.println("keyStr " +i +" : "+keyArr[i]);
			String keyStr = keyArr[i].toString();
			if(keyStr.startsWith("reward_pic")) {
				nums += keyStr.charAt(keyStr.length()-1);
			}
		}
		
		System.out.println("nums : "+nums);
		List<FundingRewardDto> list = new ArrayList<>();
		HttpSession session = request.getSession();
		// MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		// if(memberDto != null) {
		// TODO Login check
		
		System.out.println("-----------------------");
		if (true) {
			FundingDto fundingDto = new FundingDto();
			fundingDto.setMusician_id(request.getParameter("musician_id"));
			fundingDto.setPic(request.getParameter("pic"));
			fundingDto.setCategory(request.getParameter("category"));
			fundingDto.setGoal(Integer.parseInt(request.getParameter("goal")));
			fundingDto.setOpen(request.getParameter("open"));
			fundingDto.setClose(request.getParameter("close"));
			fundingDto.setTitle(request.getParameter("title"));
			fundingDto.setContents(request.getParameter("contents"));

			int seq = FundingServiceImpl.getFundingService().writeFunding(fundingDto);
			if (seq != 0) {
				for(int i=0; i<nums.length(); i++) {
					FundingRewardDto rewardDto = new FundingRewardDto();
					char idx = nums.charAt(i);
					rewardDto.setNo(seq);
					rewardDto.setPic(request.getParameter("reward_pic" + idx));
					rewardDto.setTitle(request.getParameter("reward_title" + idx));
					rewardDto.setAmount(Integer.parseInt(request.getParameter("reward_amount" + idx)));
					rewardDto.setContents(request.getParameter("reward_contents" + idx));
					list.add(rewardDto);
				}

				FundingServiceImpl.getFundingService().writeFundingReward(list);
				path = "funding/list.jsp?seq=" + seq + "&";
			} else {
				path = "/funding/index.jsp?";
			}
		}
		return path;
	}
}

