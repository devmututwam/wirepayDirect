package com.wirepick.wirepayDirect.repository.security;

import com.wirepick.wirepayDirect.model.security.SecUserModel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SecUserRepository extends JpaRepository<SecUserModel, Integer> {

    @Override
    List<SecUserModel> findAll();

    SecUserModel findById(int id);

    SecUserModel findByUsername(String username);
}
