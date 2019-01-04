package com.indiya.common.service;
import com.indiya.util.PageNavigation;

public interface CommonService {

	PageNavigation getPageNavigation(int pg, String key, String word);
	
}

