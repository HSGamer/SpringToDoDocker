package me.hsgamer.databasetodowebproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import me.hsgamer.databasetodowebproject.entity.ToDoItem;

public interface ToDoRepository extends JpaRepository<ToDoItem, Integer> {

}
