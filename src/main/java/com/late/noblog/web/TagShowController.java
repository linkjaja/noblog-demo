package com.late.noblog.web;

import com.late.noblog.po.Tag;
import com.late.noblog.service.BlogService;
import com.late.noblog.service.TagService;
import com.late.noblog.vo.BlogQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

/**
 * Created by Link on 21-4-27.
 */
@Controller
public class TagShowController {

    @Autowired
    private TagService TagService;

    @Autowired
    private BlogService blogService;

    @GetMapping("/tags/{id}")
    public String Tags(@PageableDefault(size = 2, sort = {"updateTime"}, direction = Sort.Direction.DESC) Pageable pageable,
                        @PathVariable Long id, Model model){

        List<Tag> tags = TagService.listTagTop(1000);
        if( id == -1 ){
            id = tags.get(0).getId();
        }

        model.addAttribute("tags", tags);
        model.addAttribute("page", blogService.listBlog(id, pageable));
        model.addAttribute("activeTagId", id);
        return "tags";
    }
}
