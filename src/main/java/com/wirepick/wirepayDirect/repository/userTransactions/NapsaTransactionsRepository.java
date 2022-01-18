package com.wirepick.wirepayDirect.repository.userTransactions;

import com.wirepick.wirepayDirect.model.userTransactions.NapsaTransactionsModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NapsaTransactionsRepository extends JpaRepository<NapsaTransactionsModel, Integer> {

    @Override
    List<NapsaTransactionsModel> findAll();

}