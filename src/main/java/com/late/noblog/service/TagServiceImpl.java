package com.late.noblog.service;

import com.late.noblog.NotFoundException;
import com.late.noblog.dao.TagRepository;
import com.late.noblog.po.Tag;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;


@Service
public class TagServiceImpl implements TagService{

    @Autowired
    private TagRepository tagRepository;

    @Transactional
    @Override
    public Tag saveTag(Tag tag) {
        return tagRepository.save(tag);
    }

    @Transactional
    @Override
    public Tag getTag(Long id) {
        return tagRepository.findById(id).orElse(null);
    }


    @Override
    public Tag getTagByName(String name) {
        return tagRepository.findByName(name);
    }

    @Transactional
    @Override
    public Page<Tag> listTag(Pageable pageable) {
        return tagRepository.findAll(pageable);
    }

    @Override
    public List<Tag> listTag() {
        return tagRepository.findAll();
    }

    @Override
    public List<Tag> listTagTop(Integer size) {
        Pageable pageable = PageRequest.of(0, size, Sort.by(Sort.Direction.DESC, "blogs.size"));
        return tagRepository.findTop(pageable);
    }

    @Override
    public List<Tag> listTag(String ids) { //1,2,3
        return tagRepository.findAllById(convertToList(ids));
    }

    private List<Long> convertToList(String ids) {
        List<Long> list = new ArrayList<>();
        if (!"".equals(ids) && ids != null) {
            String[] idarray = ids.split(",");
            for (int i=0; i < idarray.length;i++) {
                list.add(new Long(idarray[i]));
            }
        }
        return list;
    }

    // 实现 blog-input 页面直接新增 tag
    public List<String> toSList(String ids){
        List<String> list =new ArrayList<>();
        if (!"".equals(ids)&& ids!=null){
            String[] idss=ids.split(",");
            for (int i=0;i<idss.length;i++){
                list.add(idss[i]);
            }
        }
        return list;
    }

    // 实现 blog-input 页面直接新增 tag，拿到前端传来的值后，与 DB 进行比对，若没有，则新增 tag。
    public List<Tag> matchTag(String ids) {
        List<Tag> tags=new ArrayList<>();
        Pattern pattern = Pattern.compile("[0-9]+");
        for (String s : toSList(ids)) {
            if (pattern.matcher(s).matches()){
                tags.add(tagRepository.getOne(Long.valueOf(s)));
            }else{
                Tag tag=new Tag();
                tag.setName(s);
                tagRepository.save(tag);
                tags.add(tagRepository.findByName(s));
            }
        }
        return tags;
    }

    @Transactional
    @Override
    public Tag updateTag(Long id, Tag tag) {
        Tag t = tagRepository.findById(id).orElse(null);
        if(t == null){
            throw new NotFoundException("Tag not exists");
        }
        BeanUtils.copyProperties(tag, t);
        return tagRepository.save(t);
    }

    @Transactional
    @Override
    public void deleteTag(Long id) {
        tagRepository.deleteById(id);
    }
}
