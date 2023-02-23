package com.builders.dao;


import java.util.List;

import com.builders.model.BuyDetails;
import com.builders.model.Plans;

public interface UserOrderDao {

	public boolean addOrder(BuyDetails order);

	public boolean deleteOrder(int orderId);

	public boolean updateOrder(BuyDetails order);

	public Plans getOrderById(int orderId);

	public List<BuyDetails> getAllOrder();

	public Integer getPlanIdByMemberId(int memberId);

	public String getOrderDateByPlanId(int planId);

	public boolean MemberIdAndPlanIdExist(int memberId);

	public long CountTotalOrders();

	public List<Object[]> getRecentFiveOrders();

	public double orderTotal();
}
