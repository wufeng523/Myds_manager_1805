package com.mr.service;

import com.mr.mapper.TreeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import com.mr.model.Tree;
/**
 * Created by root on 2018/10/31.
 */
@Service
public class TreeServiceImpl implements TreeService {

    @Autowired
    private TreeMapper treeMapper;

    @Override
    public List<Tree> queryTree() {

        List<Tree> list = treeMapper.queryTree(0);
        this.name(list);
        return list;
    }

    public void name(List<Tree> list) {
        for (Tree tree : list) {
            List<Tree> list2 = treeMapper.queryTree(tree.getId());
            tree.setChildren(list2);
            this.name(list2);
        }
    }
}