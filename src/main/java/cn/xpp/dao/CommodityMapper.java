package cn.xpp.dao;

import cn.xpp.pojo.Commodity;
import cn.xpp.pojo.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommodityMapper {
    //根据名字查询商品详情
    public Commodity getCommodityByName(@Param("name") String name);

    //查询用户所有订单
    public List<Order> getOrderAll(@Param("userid") int userid);

    //修改商品数量
    public int updateSize(@Param("size") int size,@Param("id") int id);

    //删除商品
    public int del(@Param("id") int id);

    //添加商品
    public int add(@Param("commodityId") int commodityId,@Param("UserId") int UserId);

    //根据名字查询商品(模糊查询)
    public List<Commodity> CommodityList(@Param("name") String name);
}
