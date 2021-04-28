package com.late.noblog.service;

import com.late.noblog.po.Comment;

import java.util.List;

/**
 * Created by Link on 21-4-27.
 */
public interface CommentService {

    List<Comment> listCommentByBlogId(Long blogId);

    Comment saveComment(Comment comment);
}
