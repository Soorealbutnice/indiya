package com.indiya.common.dao;

import java.util.Map;

public interface CommonDao {

	int getNextSeq();
	void updateHit(int seq);
	
	int getNewArticleCount();
	int getTotalArticleCount(Map<String, String> map);
	
}
