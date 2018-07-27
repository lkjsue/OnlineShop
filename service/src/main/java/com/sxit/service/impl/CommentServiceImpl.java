package com.sxit.service.impl;

import com.sxit.bean.CommentBean;
import com.sxit.dao.CommentDao;
import com.sxit.service.CommentService;

import org.springframework.stereotype.Service;

import java.util.List;

import javax.annotation.Resource;

/**
 * Created by 孙淼 on 2018/5/30 10:43
 */
@Service
public class CommentServiceImpl implements CommentService {

    @Resource
    private CommentDao commentDao;
    @Override
    public void addComment(CommentBean bean) throws Exception {
        Integer integer = commentDao.addComment(bean);
        if (integer!=1){
            throw new Exception("评论失败");
        }
    }

    @Override
    public List<CommentBean> query(Long detailId) {
        return commentDao.queryByDetailId(detailId);
    }
}