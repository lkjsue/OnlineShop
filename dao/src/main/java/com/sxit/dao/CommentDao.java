package com.sxit.dao;

import com.sxit.bean.CommentBean;

import java.util.List;

public interface CommentDao {

    Integer addComment(CommentBean bean);

    List<CommentBean> queryByDetailId(Long detailId);
}
