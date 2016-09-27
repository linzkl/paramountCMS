package com.tedpros.cms.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="CODE_VALUE_T")
public class CodeValueT extends DomainEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id @GeneratedValue
	@Column(name = "OBJECTID", unique=true, nullable=false, updatable=false, precision=18)
	private Long objectid;

	@Column(name = "CODE", nullable=false, length=50, columnDefinition="nchar(50)")
	private String code;

   @Column(name = "CODE_GROUP", nullable=false, length=50, columnDefinition="nchar(50)")
   private String codeGroup;

   @Column(name = "SHORT_DESCRIPTION", nullable=false, length=100, columnDefinition="nchar(100)")
   private String shortDescription;  
   
   @Column(name = "LONG_DESCRIPTION", length=500, columnDefinition="nchar(500)")
   private String longDescription;  
   
   @Temporal(TemporalType.TIMESTAMP)
   @Column(name = "EFFECTIVE_DATETIME")
   private String effectiveDateTime;  
   
   @Temporal(TemporalType.TIMESTAMP)
   @Column(name = "EFFECTIVE_THRU_DATETIME")
   private String effectiveThruDateTime;

	@Override
	public Long getObjectid() {
		return objectid;
	}
	
	@Override
	public void setObjectid(Long objectid) {
		this.objectid = objectid;
	}

	public String getCode() {
		return code;
	}
	
	public void setCode(String code) {
		this.code = code;
	}
	
	public String getCodeGroup() {
		return codeGroup;
	}
	
	public void setCodeGroup(String codeGroup) {
		this.codeGroup = codeGroup;
	}
	
	public String getShortDescription() {
		return shortDescription;
	}
	
	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}
	
	public String getLongDescription() {
		return longDescription;
	}
	
	public void setLongDescription(String longDescription) {
		this.longDescription = longDescription;
	}
	
	public String getEffectiveDateTime() {
		return effectiveDateTime;
	}
	
	public void setEffectiveDateTime(String effectiveDateTime) {
		this.effectiveDateTime = effectiveDateTime;
	}
	
	public String getEffectiveThruDateTime() {
		return effectiveThruDateTime;
	}
	
	public void setEffectiveThruDateTime(String effectiveThruDateTime) {
		this.effectiveThruDateTime = effectiveThruDateTime;
	}

}
