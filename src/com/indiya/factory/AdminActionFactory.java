package com.indiya.factory;

import com.indiya.action.Action;
import com.indiya.action.admin.*;

public class AdminActionFactory {

private static Action memberListAction;   
private static Action memberDeleteAction;
private static Action qnaWriteAction;
private static Action qnaViewAction;
   
   
   static {
	   memberListAction = MemberListAction.getMemberListAction();
       memberDeleteAction = MemberDelectAction.getMemberDelectAction();
       qnaWriteAction = QnaWriteAction.getQnaWriteAction();
       qnaViewAction = QnaViewAction.getQnaViewAction();
   }


public static Action getMemberListAction() {
	return memberListAction;
}


public static Action getMemberDeleteAction() {
	return memberDeleteAction;
}


public static Action getQnaWriteAction() {
	return qnaWriteAction;
}


public static Action getQnaViewAction() {
	return qnaViewAction;
}




}