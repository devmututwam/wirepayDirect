package com.wirepick.wirepayDirect.repository.accounts;

import com.wirepick.wirepayDirect.model.accounts.UserAccountModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserAccountRepository extends JpaRepository<UserAccountModel, Integer> {

    @Override
    List<UserAccountModel> findAll();

    List<UserAccountModel> findAllByidNumber(String idNumber);

    UserAccountModel findByAccountNumber(String accountNumber);

}