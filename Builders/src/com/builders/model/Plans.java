package com.builders.model;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.OneToOne;

import org.osgi.service.component.annotations.Component;

@Entity
@Component
public class Plans implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int planId;
	@Column(unique = true)
	private String planName;
	private String planDescription;
	private int amount;

	public int getMembershipId() {
		return planId;
	}

	public void setMembershipId(int membershipId) {
		this.planId = membershipId;
	}

	public String getPlanName() {
		return planName;
	}

	public void setPlanName(String planName) {
		this.planName = planName;
	}

	public String getPlanDescription() {
		return planDescription;
	}

	public void setPlanDescription(String planDescription) {
		this.planDescription = planDescription;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getPlanId() {
		return planId;
	}

	public void setPlanId(int planId) {
		this.planId = planId;
	}

	@OneToOne(cascade = CascadeType.ALL)
	private BuyDetails order;

	public BuyDetails getOrder() {
		return order;
	}

	public void setOrder(BuyDetails order) {
		this.order = order;
	}

}
