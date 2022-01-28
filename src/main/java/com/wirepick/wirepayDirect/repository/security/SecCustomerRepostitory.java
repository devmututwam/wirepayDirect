package com.wirepick.wirepayDirect.repository.security;


import com.wirepick.wirepayDirect.model.security.SecCustomerModel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SecCustomerRepostitory extends JpaRepository<SecCustomerModel, Integer> {

    @Override
    List<SecCustomerModel> findAll();

    SecCustomerModel findById(int id);

    SecCustomerModel findByUserId(Integer userId);

}
