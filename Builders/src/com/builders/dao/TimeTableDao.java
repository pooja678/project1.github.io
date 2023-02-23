package com.builders.dao;

import java.util.List;

import com.builders.model.TimeTable;

public interface TimeTableDao {

	public boolean addSchedule(TimeTable timeTable);

	public boolean deleteSchedule(int scheduleId);

	public boolean updateSchedule(TimeTable timeTable);

	public TimeTable getScheduleById(int scheduleId);

	public List<TimeTable> getScheduleByDay(String day);

	public List<TimeTable> getAllSchedule();

}
