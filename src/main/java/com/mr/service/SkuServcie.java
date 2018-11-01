package com.mr.service;

import com.mr.model.TMallProduct;
import com.mr.model.TMallSkuVO;

import java.util.List;

/**
 * Created by root on 2018/10/31.
 */
public interface SkuServcie {
    List<TMallProduct> selectSpu(TMallProduct spu);

    void saveSku(TMallSkuVO skuVO);
}
