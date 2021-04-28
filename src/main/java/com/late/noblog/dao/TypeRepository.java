package com.late.noblog.dao;

import com.late.noblog.po.Type;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;


public interface TypeRepository extends JpaRepository<Type, Long> {

    Type findByName(String name);

    // enquiry types by passing in number of size
    @Query(value = "select t from t_type t")
    List<Type> findTop(Pageable pageable);

}
