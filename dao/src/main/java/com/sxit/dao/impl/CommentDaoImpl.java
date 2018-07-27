package com.sxit.dao.impl;

import com.sxit.bean.CommentBean;
import com.sxit.dao.BaseDao;
import com.sxit.dao.CommentDao;

import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 孙淼 on 2018/5/30 10:42
 */
@Repository
public class CommentDaoImpl extends BaseDao implements CommentDao {
    @Override
    protected String getNameSpace() {
        return "tcomment";
    }

    @Override
    public Integer addComment(CommentBean bean) {
        return this.getSqlSessionTemplate().insert("insertComment",bean);
    }

    @Override
    public List<CommentBean> queryByDetailId(Long detailId) {
        return this.getSqlSessionTemplate().selectList("queryComment",detailId);
    }
}