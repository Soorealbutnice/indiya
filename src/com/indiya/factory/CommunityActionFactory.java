package com.indiya.factory;

import com.indiya.action.*;
import com.indiya.action.community.*;

public class CommunityActionFactory {
	
	private static Action communityDeleteAction;
	private static Action communityListAction;
	private static Action communityModifyAction;
	private static Action communityViewAction;
	private static Action communityWriteAction;
	private static Action communityGetArticleAction;
	private static Action communityWriteCommentAction;
	private static Action communityDeleteCommentAction;
	private static Action communityAdminListAction;
	
	
	static {
		communityDeleteAction = CommunityDeleteAction.getCommunityDeleteAction();
		communityListAction = CommunityListAction.getCommunityListAction();
		communityModifyAction = CommunityModifyAction.getCommunityModifyAction();
		communityViewAction = CommunityViewAction.getcommunityViewAction();
		communityWriteAction = CommunityWriteAction.getCommunityWriteAction();
		communityGetArticleAction = CommunityGetArticleAction.getCommunityGetArticleAction();
		communityWriteCommentAction = CommunityWriteCommentAction.getCommunityWriteCommentAction();
		communityDeleteCommentAction = CommunityDeleteCommentAction.getCommunityDeleteCommentAction();
	    communityAdminListAction = CommunityAdminListAction.getCommunityAdminListAction();
	}


	public static Action getCommunityGetArticleAction() {
		return communityGetArticleAction;
	}


	public static Action getCommunityDeleteAction() {
		return communityDeleteAction;
	}


	public static Action getCommunityListAction() {
		return communityListAction;
	}


	public static Action getCommunityModifyAction() {
		return communityModifyAction;
	}


	public static Action getCommunityViewAction() {
		return communityViewAction;
	}


	public static Action getCommunityWriteAction() {
		return communityWriteAction;
	}


	public static Action getCommunityWriteCommentAction() {
		return communityWriteCommentAction;
	}


	public static Action getCommunityDeleteCommentAction() {
		return communityDeleteCommentAction;
	}
	
   public static Action getCommunityAdminListAction() {
	      return communityAdminListAction;
	   }

}