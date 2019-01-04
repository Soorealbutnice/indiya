package com.indiya.util;

import com.indiya.util.IndiyaConstance;

public class PageNavigation {

	private String root;
	private int pageNo;
	private int newArticleCount;
	private int totalArticleCount;
	private int totalPageCount;
	private boolean nowFirst;
	private boolean nowEnd;
	private String navigator;

	public String getRoot() {
		return root;
	}

	public void setRoot(String root) {
		this.root = root;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getNewArticleCount() {
		return newArticleCount;
	}

	public void setNewArticleCount(int newArticleCount) {
		this.newArticleCount = newArticleCount;
	}

	public int getTotalArticleCount() {
		return totalArticleCount;
	}

	public void setTotalArticleCount(int totalArticleCount) {
		this.totalArticleCount = totalArticleCount;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public boolean isNowFirst() {
		return nowFirst;
	}

	public void setNowFirst(boolean nowFirst) {
		this.nowFirst = nowFirst;
	}

	public boolean isNowEnd() {
		return nowEnd;
	}

	public void setNowEnd(boolean nowEnd) {
		this.nowEnd = nowEnd;
	}

	public String getNavigator() {
		return navigator;
	}

	public void makeNavigator() {
		StringBuffer tmpNavigator = new StringBuffer();
		int listSize = IndiyaConstance.BOARD_LIST_SIZE;//TODO 나중에 사진이랑 비교...
		int pageSize = IndiyaConstance.NAVIGATOR_SIZE;
		System.out.println("pageNO >>>>>>>>>>>" + pageNo);
		int preEnd = (pageNo - 1) / pageSize * pageSize;
		System.out.println("preend >>>>>>>>>>>> " + preEnd);
		

		tmpNavigator.append(" <ul>\n");
		if (this.isNowFirst()) {
			tmpNavigator.append("  <li class=\"active\"><a href=\"#\">&laquo;&laquo;</a></li> \n");
			tmpNavigator.append("  <li class=\"active\"><a href=\"#\">&laquo;</a></li> \n");
		} else {
			tmpNavigator.append("  <li><a href='javascript:totalArticle()'>&laquo;&laquo;</a></li> \n");
			tmpNavigator.append("  <li><a href='javascript:listArticle(" + preEnd + ")'>&laquo;</a></li> \n");
		}

		int startPage = preEnd + 1;
		int endPage = preEnd + pageSize;
		if(endPage > totalPageCount)
			endPage = totalPageCount;
		System.out.println("start ::: " + startPage + "\tend ::: " + endPage);
		for (int i = startPage; i <= endPage; i++) {
			if (pageNo == i) {
				tmpNavigator.append("  <li class=\"active\"><a href=\"#\">" + i + "</a></li> \n");
			} else {
				tmpNavigator.append("  <li class=\"active\"><a href='javascript:listArticle(" + i + ")'>" + i + "</a></li> \n");
			}
		}

		if (this.isNowEnd()) {
			tmpNavigator.append("  <li class=\"active\"><a href=\"#\">&raquo;</a></li> \n");
			tmpNavigator.append("  <li class=\"active\"><a href=\"#\">&raquo;&raquo;</a></li> \n");

		} else {
			tmpNavigator.append("  <li class=\"active\"><a href='javascript:listArticle(" + (preEnd + pageSize + 1) + ")'>&raquo;</a></li> \n");
			tmpNavigator.append("  <li class=\"active\"><a href='javascript:listArticle(" + totalPageCount + ")'>&raquo;&raquo;</a></li> \n");
		}

		tmpNavigator.append(" </ul>\n");


		this.navigator = tmpNavigator.toString();
	}

	@Override
	public String toString() {
		return "PageNavigation [root=" + root + ", pageNo=" + pageNo + ", newArticleCount=" + newArticleCount
				+ ", totalArticleCount=" + totalArticleCount + ", totalPageCount=" + totalPageCount + ", nowFirst="
				+ nowFirst + ", nowEnd=" + nowEnd + "]";
	}

}
