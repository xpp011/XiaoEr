package cn.xpp.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Commodity {
    private int id;
    private String name;
    private String describe;
    private String src;
    private int price;

}
