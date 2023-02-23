package com.builders.dao;

import java.util.List;

import com.builders.model.Plans;

public interface PlanDao {

	public boolean addPlan(Plans plan);

	public boolean deletePlan(int planId);

	public boolean updatePlan(Plans plan);

	public Plans getPlanById(int planId);

	public List<Plans> getPlanByName(String planName);

	public List<Plans> getAllPlan();

}
