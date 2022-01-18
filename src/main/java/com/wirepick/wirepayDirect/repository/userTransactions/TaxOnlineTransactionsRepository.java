package com.wirepick.wirepayDirect.repository.userTransactions;

import com.wirepick.wirepayDirect.model.userTransactions.TaxOnlineTransactionsModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TaxOnlineTransactionsRepository extends JpaRepository<TaxOnlineTransactionsModel, Integer> {

    @Override
    List<TaxOnlineTransactionsModel> findAll();

}
