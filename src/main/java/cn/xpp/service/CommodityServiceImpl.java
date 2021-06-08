package cn.xpp.service;

import cn.xpp.dao.CommodityMapper;
import cn.xpp.pojo.Commodity;
import cn.xpp.pojo.Order;

import java.util.List;

public class CommodityServiceImpl implements CommodityService{

    private CommodityMapper commodityMapper;

    public void setCommodityMapper(CommodityMapper commodityMapper) {
        this.commodityMapper = commodityMapper;
    }

    @Override
    public Commodity getCommodityByName(String name) {
        return commodityMapper.getCommodityByName(name);
    }

    @Override
    public List<Order> getOrderAll(int userid) {
        return commodityMapper.getOrderAll(userid);
    }

    @Override
    public int updateSize(int size, int id) {
        return commodityMapper.updateSize(size,id);
    }

    @Override
    public int del(int id) {
        return commodityMapper.del(id);
    }

    @Override
    public int add(int commodityId, int UserId) {
        return commodityMapper.add(commodityId,UserId);
    }

    @Override
    public List<Commodity> CommodityList(String name) {
        name="%"+name+"%";
        return commodityMapper.CommodityList(name);
    }
}
