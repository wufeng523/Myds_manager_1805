package com.mr.controller;

import com.mr.service.TreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import com.mr.model.Tree;
/**
 * Created by root on 2018/10/31.
 */
@Controller
@RequestMapping("tree")
public class TreeController {

    @Autowired
    private TreeService treeService;

    @ResponseBody
    @RequestMapping("queryTree")
    public List<Tree> queryTree() {
            List<Tree> list = treeService.queryTree();
            return list;
    }
}
