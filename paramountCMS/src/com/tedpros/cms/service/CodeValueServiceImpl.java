package com.tedpros.cms.service;

import org.springframework.stereotype.Service;

import com.tedpros.cms.dao.CmsDAOImpl;
import com.tedpros.cms.entity.CodeValueT;

@Service
public class CodeValueServiceImpl extends CmsDAOImpl implements CodeValueService {

	@Override
	public void addCodeValue(CodeValueT codeValue){
		persist(codeValue);
	}
}
