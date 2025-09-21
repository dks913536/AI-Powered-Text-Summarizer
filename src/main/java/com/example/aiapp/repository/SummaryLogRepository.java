package com.example.aiapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.aiapp.entity.SummaryLog;

public interface SummaryLogRepository extends JpaRepository<SummaryLog, Long>
{

}
