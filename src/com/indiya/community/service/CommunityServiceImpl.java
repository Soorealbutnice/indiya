package com.indiya.community.service;

import java.util.*;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.indiya.common.dao.CommonDaoImpl;
import com.indiya.community.dao.CommunityDao;
import com.indiya.community.dao.CommunityDaoImpl;
import com.indiya.community.model.CommentDto;
import com.indiya.community.model.CommunityDto;
import com.indiya.util.IndiyaConstance;

public class CommunityServiceImpl implements CommunityService {
	
	
	private static CommunityService communityService;
	
	static {
		communityService = new CommunityServiceImpl();
	}
	
	private CommunityServiceImpl() {}
	
	public static CommunityService getCommunityService() {
		return communityService;
	}

	@Override
	public int writeArticle(CommunityDto communitydto) {
		System.out.println("dao가기전");
		int no = CommonDaoImpl.getCommonDao().getNextSeq();
		
		System.out.println("시퀀스 만듦?"+no);
		communitydto.setNo(no);
		System.out.println(communitydto.getContents());
		System.out.println(communitydto.getMember_id());
		
		return CommunityDaoImpl.getCommunityDao().writeArticle(communitydto) == 0 ? 0 : no;
	}

	@Override
	public List<CommunityDto> listArticle(int pg, String key, String word) {
		int end = pg * IndiyaConstance.BOARD_LIST_SIZE;
		int start = end - IndiyaConstance.BOARD_LIST_SIZE;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("start", start + "");
		map.put("end", end + "");
		map.put("key", key);
		map.put("word", word);
		return CommunityDaoImpl.getCommunityDao().listArticle(map);
	}

	@Override
	public CommunityDto viewArticle(int no) {
		CommonDaoImpl.getCommonDao().updateHit(no);
		CommunityDto communityDto = CommunityDaoImpl.getCommunityDao().viewArticle(no);
			if(communityDto != null) {
				communityDto.setContents(communityDto.getContents().replaceAll("\n", "<br>"));
			}
		return communityDto;
	}

	@Override
	public CommunityDto getArticle(int no) {
		CommunityDto communityDto = CommunityDaoImpl.getCommunityDao().getArticle(no);
		if(communityDto != null) {
			communityDto.setContents(communityDto.getContents().replaceAll("\n", "<br>"));
		}
		return communityDto;
	}

	@Override
	public void modifyArticle(CommunityDto communityDto) {
		CommunityDaoImpl.getCommunityDao().modifyArticle(communityDto);
	}

	@Override
	public void deleteArticle(int no) {

		CommunityDaoImpl.getCommunityDao().deleteArticle(no);
	}

	
	@Override
	public List<CommentDto> commentList(int no) {
		return CommunityDaoImpl.getCommunityDao().commentList(no);
	
	}

	@Override
	public int writeComment(CommentDto commentdto) {
		int no = CommonDaoImpl.getCommonDao().getNextSeq();
		commentdto.setNo(no);
		return CommunityDaoImpl.getCommunityDao().writeComment(commentdto) == 0? 0 : commentdto.getBoard_no();
	}

	@Override
	public void deleteComment(int boardno, int no) {
		CommunityDaoImpl.getCommunityDao().deleteComment(boardno, no);
	}

	@Override
	   public List<CommunityDto> mainListArticle() {
	      List<CommunityDto> list = CommunityDaoImpl.getCommunityDao().mainList();
	      System.out.println("서비스list" + list.size());
	      return list;
	   }

   @Override
   public List<CommunityDto> mainHotListArticle() {
      List<CommunityDto> hotlist = CommunityDaoImpl.getCommunityDao().mainHotList();
      System.out.println("서비스hotlist" + hotlist.size());

      return hotlist;
   }


}
