package com.late.noblog.dao;

import com.late.noblog.po.Tag;
import com.late.noblog.po.Type;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;


public interface TagRepository extends JpaRepository<Tag, Long> {

    Tag findByName(String name);

    // enquiry tags by passing in number of size
    @Query(value = "select t from t_tag t")
    List<Tag> findTop(Pageable pageable);

}
