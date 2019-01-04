package com.indiya.factory;

import com.indiya.action.Action;
import com.indiya.action.review.*;

public class ReviewActionFactory {

   private static Action reviewGetListAction;
   private static Action reviewMainListAction;


   static {
      reviewGetListAction = ReviewGetListAction.getReviewGetListAction();
      reviewMainListAction = ReviewMainListAction.getReviewMainListAction();
     
   }


   public static Action getReviewGetListAction() {
      return reviewGetListAction;
   }


   public static Action getReviewMainListAction() {
      return reviewMainListAction;
   }

   
}