package com.mr.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * Created by root on 2018/10/29.
 */
@Controller
public class IndexController {


    @RequestMapping("toSpuPage")
    public String toSpuPage(){

        return "spu";
    }
    @RequestMapping("toAttrPage")
    public String toAttrPage(){

        return "attr";
    }
    @RequestMapping("toskuPage")
    public String toskuPage(){

        return "sku";
    }



}
