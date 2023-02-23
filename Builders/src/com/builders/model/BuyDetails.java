package com.builders.model;

import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.osgi.service.component.annotations.Component;

@Entity
@Component
public class BuyDetails implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int orderId;

	@Column(insertable = false, updatable = false)
	private int planId;

	private String order_date;

	String status = "success";

	public int getPlanId() {
		return planId;
	}

	public void setPlanId(int planId) {
		this.planId = planId;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	@Column(insertable = false, updatable = false)
	private int memberId;

	public String getOrder_date() {
		return order_date;
	}

	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "planId")
	private Plans plan;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "memberId")
	private Member member;

	/*
	 * public int getPlanId() { return planId; }
	 * 
	 * public void setPlanId(int planId) { this.planId = planId; }
	 * 
	 * public int getMemberId() { return memberId; }
	 * 
	 * public void setMemberId(int memberId) { this.memberId = memberId; }
	 */

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Plans getPlan() {
		return plan;
	}

	public void setPlan(Plans plan) {
		this.plan = plan;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

}
