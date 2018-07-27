package com.sxit.service;

import com.sxit.bean.CommentBean;

import java.util.List;

public interface CommentService {

    void addComment(CommentBean bean) throws Exception;

    List<CommentBean> query(Long detailId);
}
