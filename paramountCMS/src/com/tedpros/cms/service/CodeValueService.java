package com.tedpros.cms.service;

import com.tedpros.cms.dao.CmsDAO;
import com.tedpros.cms.entity.CodeValueT;

public interface CodeValueService extends CmsDAO{

	void addCodeValue(CodeValueT codeValue);
}
