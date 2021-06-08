package cn.xpp.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order {
    private int id;
    private int commodityId;
    private int commoditySize;
    private String commodityName;
    private String src;
    private int price;
}
