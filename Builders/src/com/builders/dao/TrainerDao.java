package com.builders.dao;

import java.util.List;

import com.builders.model.Trainer;

public interface TrainerDao {

	public boolean addTrainer(Trainer trainer);

	public boolean deleteTrainer(int trainerId);

	public boolean updateTrainer(Trainer trainer);

	public Trainer getTrainerById(int memeberId);

	public List<Trainer> getTraingerByName(String userName);

	public List<Trainer> getAllTrainer();

}
