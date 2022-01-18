package com.wirepick.wirepayDirect.repository.userTransactions;

import com.wirepick.wirepayDirect.model.userTransactions.AsycudaTransactionsModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface AsycudaTransactionsRepository extends JpaRepository<AsycudaTransactionsModel, Integer> {

    @Override
    List<AsycudaTransactionsModel> findAll();

}