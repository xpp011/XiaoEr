<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="title.jsp"%>
<html>
  <head>
    <title>小二杂货铺</title>
  </head>


  <body>

  <link href="images/logo.ico" rel="icon" type="image/x-ico">

  <link rel="stylesheet" href="css/reset.css" />
  <link rel="stylesheet" href="css/index.css" />
  <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <!-- 开发环境版本，包含了有帮助的命令行警告 -->
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>


  <!-- banner部分开始 -->
  <div class="banner">
    <div class="banner_c">
      <ul>
        <li class="cur">
          <a href="#"><img :src="src" alt="" /></a>
        </li>
      </ul>
    </div>
    <div class="btns">
      <ol>
        <li :class="{cur:tf1}" @click="replace(1)"></li>
        <li :class="{cur:tf2}" @click="replace(2)"> </li>
        <li :class="{cur:tf3}" @click="replace(3)"></li>
      </ol>
    </div>
  </div>
  <!-- banner部分结束 -->
  <!-- 新品推荐部分 -->
  <div class="new_pro">
    <div class="common_title">
      <h3>新品推荐，精心挑选</h3>
      <p>家居必备实用小单品</p>
    </div>
    <div class="pro_detail inner_c">
      <ul>
        <li class="common_prduct">
          <div class="pic">
            <a href="${pageContext.request.contextPath}/Commodity/getCommodity/便携简约清扫扫帚">
              <img src="images/img02.png" alt="" /></a>
          </div>
          <div class="content">
            <p>便携简约清扫扫帚</p>
            <span>￥234</span>
          </div>
        </li>
        <li class="common_prduct">
          <div class="pic">
            <a href="${pageContext.request.contextPath}/Commodity/getCommodity/翻毛皮垃圾桶">
              <img src="images/img05.png" alt="" /></a>
          </div>
          <div class="content">
            <p>翻毛皮垃圾桶</p>
            <span>￥348</span>
          </div>
        </li>
        <li class="common_prduct">
          <div class="pic">
            <a href="${pageContext.request.contextPath}/Commodity/getCommodity/点点积木块">
              <img src="images/img03.png" alt="" /></a>
          </div>
          <div class="content">
            <p>点点积木块</p>
            <span>￥254</span>
          </div>
        </li>
        <li class="common_prduct">
          <div class="pic">
            <a href="${pageContext.request.contextPath}/Commodity/getCommodity/黑白笔筒">
              <img src="images/img04.png" alt="" /></a>
          </div>
          <div class="content">
            <p>黑白笔筒</p>
            <span>￥134</span>
          </div>
        </li>
      </ul>
      <div class="btns">
        <a href="#" class="left">&lt;</a>
        <a href="#" class="right">&gt;</a>
      </div>
    </div>
  </div>
  <!-- 新品推荐部分结束 -->
  <!-- 专题活动部分 -->
  <div class="special inner_c">
    <div class="common_title">
      <h3>专题活动，限时促销</h3>
      <p>严选材质，用心设计，精致家居生活</p>
    </div>
    <div class="content">
      <div class="left pic">
        <a href="#">
          <img src="images/img31.jpg" alt="" />
        </a>
        <span></span>
      </div>
      <div class="right">
        <div class="r_top pic">
          <a href="#">
            <img src="images/img32.jpg" alt="" />
          </a>
          <span></span>
        </div>
        <div class="r_bottom pic">
          <a href="#">
            <img src="images/img33.jpg" alt="" />
          </a>
          <span></span>
        </div>
      </div>
    </div>
  </div>
  <!-- 专题活动部分结束 -->
  <!-- 青竹良品部分 -->
  <div class="qingzhu inner_c">
    <div class="common_title">
      <h3>青竹良品，你的家具首选</h3>
      <p>天然之源，诚挚之礼，严格质检</p>
    </div>
    <div class="content" id="conent">
      <div class="qz_common">
        <ul>
          <li class="common_prduct">
            <div class="pic">
              <img src="images/img40.jpg" alt=""/>
            </div>
            <div class="content">
              <p>简约原木餐盘</p>
              <span>￥300</span>
            </div>
            <a href="" class="mask"> </a>
          </li>
          <li class="common_prduct">
            <div class="pic">
              <img src="images/img41.png" alt="" />
            </div>
            <div class="content">
              <p>翻毛皮垃圾桶</p>
              <span>￥234</span>
            </div>
            <a href="${pageContext.request.contextPath}/Commodity/getCommodity/翻毛皮垃圾桶" class="mask" >
              <span class="btn" >查看详情</span>
            </a>
          </li>
          <li class="common_prduct">
            <div class="pic">
              <img src="images/img42.png" alt="" />
            </div>
            <div class="content">
              <p>黑白笔筒</p>
              <span>￥300</span>
            </div>
            <a href="${pageContext.request.contextPath}/Commodity/getCommodity/黑白笔筒" class="mask">
              <span class="btn" >查看详情</span>
            </a>
          </li>
          <li class="common_prduct">
            <div class="pic">
              <img src="images/img43.png" alt="" />
            </div>
            <div class="content">
              <p>创意水壶</p>
              <span>￥300</span>
            </div>
            <a href="${pageContext.request.contextPath}/Commodity/getCommodity/创意水壶" class="mask">
              <span class="btn" >查看详情</span>
            </a>
          </li>
          <li class="common_prduct last">
            <div class="pic">
              <img src="images/img44.png" alt="" />
            </div>
            <div class="content">
              <p>时尚夜灯</p>
              <span>￥300</span>
            </div>
            <a href="${pageContext.request.contextPath}/Commodity/getCommodity/时尚时钟" class="mask">
              <span class="btn" >查看详情</span>
            </a>
          </li>
        </ul>
      </div>
      <div class="qz_common">
        <ul>
          <li class="common_prduct">
            <div class="pic">
              <img src="images/img45.jpg" alt="" />
            </div>
            <div class="content">
              <p>时尚夜灯</p>
              <span>￥300</span>
            </div>
            <a href="" class="mask"> </a>
          </li>
          <li class="common_prduct">
            <div class="pic">
              <img src="images/img46.png" alt="" />
            </div>
            <div class="content">
              <p>时尚夜灯</p>
              <span>￥300</span>
            </div>
            <a href="javascript:void(0);" class="mask">
              <span class="btn" @click="redirects('/detail46.html')">查看详情</span>
            </a>
          </li>
          <li class="common_prduct">
            <div class="pic">
              <img src="images/img47.png" alt="" />
            </div>
            <div class="content">
              <p>银质挖耳勺</p>
              <span>￥300</span>
            </div>
            <a href="${pageContext.request.contextPath}/Commodity/getCommodity/银质挖耳勺" class="mask">
              <span class="btn">查看详情</span>
            </a>
          </li>
          <li class="common_prduct">
            <div class="pic">
              <img src="images/img48.png" alt="" />
            </div>
            <div class="content">
              <p>银质夹子</p>
              <span>￥300</span>
            </div>
            <a href="${pageContext.request.contextPath}/Commodity/getCommodity/银质夹子" class="mask">
              <span class="btn" >查看详情</span>
            </a>
          </li>
          <li class="common_prduct last">
            <div class="pic">
              <img src="images/img49.png" alt="" />
            </div>
            <div class="content">
              <p>银质汤勺</p>
              <span>￥300</span>
            </div>
            <a href="${pageContext.request.contextPath}/Commodity/getCommodity/银质汤勺" class="mask">
              <span class="btn" >查看详情</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <!-- 青竹良品部分结束 -->
  <!-- 全球大牌部分开始 -->
  <div class="global inner_c">
    <div class="common_title inner_c">
      <h3>全球大牌优选，买手用心挑选</h3>
      <p>全球好货 原装正品 海外直邮 自有保税仓</p>
    </div>
    <div class="content">
      <div class="gl_top">
        <div class="glo4 pic">
          <a href="#">
            <img src="images/img54.jpg" alt="" />
          </a>
          <span></span>
        </div>
        <div class="glo1 pic">
          <a href="#">
            <img src="images/img51.jpg" alt="" />
          </a>
          <span></span>
        </div>
        <div class="glo2 gol_common pic">
          <a href="#">
            <img src="images/img52.jpg" alt="" />
          </a>
          <span></span>
        </div>
        <div class="glo3 gol_common pic">
          <a href="#">
            <img src="images/img53.jpg" alt="" />
          </a>
          <span></span>
        </div>
      </div>
      <div class="gl_bottom">
        <div class="gl_chara">
          <a href="#">
            <img src="images/img55.png" alt="" />
          </a>
          <p>自然生活，精选用料</p>
        </div>
        <div class="gl_chara">
          <a href="#">
            <img src="images/img56.png" alt="" />
          </a>
          <p>自然生活，精选用料</p>
        </div>
        <div class="gl_chara">
          <a href="#">
            <img src="images/img57.png" alt="" />
          </a>
          <p>自然生活，精选用料</p>
        </div>
        <div class="gl_chara">
          <a href="#">
            <img src="images/img58.png" alt="" />
          </a>
          <p>自然生活，精选用料</p>
        </div>
        <div class="gl_chara last">
          <a href="#">
            <img src="images/img59.png" alt="" />
          </a>
          <p>自然生活，精选用料</p>
        </div>
      </div>
    </div>
  </div>
  <!-- 全球大牌部分结束 -->
  <!-- 良品体验 -->
  <div class="lp_ty">
    <div class="lp_inner inner_c">
      <div class="common_title inner_c">
        <h3>良品体验</h3>
        <p>用户反馈，使我们改进的目标</p>
      </div>
      <div class="content">
        <ul>
          <li class="ty_content">
            <div class="ty_top">
              <img src="images/img62.png" alt="" />
            </div>
            <div class="ty_bottom">
              <p class="title">
                <span class="tit_name"> 天草陶石咖啡杯套装 </span>
                <span class="tit_pri">¥299</span>
              </p>
              <p class="detail">
                挺好的，特别暖，尺码真的很正！就是靴口太小了，要提着穿，心好累哦，本来都是一脚蹬来着，不过看在你这么暖的份上就原谅你了哈哈哈。真的可以媲美油叽叽，很开心。------三石是我男神
              </p>
              <p class="footer">爱丽丝 2016-12-10 07:59</p>
            </div>
          </li>
          <li class="ty_content">
            <div class="ty_top">
              <img src="images/img61.png" alt="" />
            </div>
            <div class="ty_bottom">
              <p class="title">
                <span class="tit_name"> 天草陶石咖啡杯套装 </span>
                <span class="tit_pri">¥299</span>
              </p>
              <p class="detail">
                挺好的，特别暖，尺码真的很正！就是靴口太小了，要提着穿，心好累哦，本来都是一脚蹬来着，不过看在你这么暖的份上就原谅你了哈哈哈。真的可以媲美油叽叽，很开心。------三石是我男神
              </p>
              <p class="footer">爱丽丝 2016-12-10 07:59</p>
            </div>
          </li>
          <li class="ty_content">
            <div class="ty_top">
              <img src="images/img62.png" alt="" />
            </div>
            <div class="ty_bottom">
              <p class="title">
                <span class="tit_name"> 天草陶石咖啡杯套装 </span>
                <span class="tit_pri">¥299</span>
              </p>
              <p class="detail">
                挺好的，特别暖，尺码真的很正！就是靴口太小了，要提着穿，心好累哦，本来都是一脚蹬来着，不过看在你这么暖的份上就原谅你了哈哈哈。真的可以媲美油叽叽，很开心。------三石是我男神
              </p>
              <p class="footer">爱丽丝 2016-12-10 07:59</p>
            </div>
          </li>
          <li class="ty_content last">
            <div class="ty_top">
              <img src="images/img63.png" alt="" />
            </div>
            <div class="ty_bottom">
              <p class="title">
                <span class="tit_name"> 天草陶石咖啡杯套装 </span>
                <span class="tit_pri">¥299</span>
              </p>
              <p class="detail">
                挺好的，特别暖，尺码真的很正！就是靴口太小了，要提着穿，心好累哦，本来都是一脚蹬来着，不过看在你这么暖的份上就原谅你了哈哈哈。真的可以媲美油叽叽，很开心。------三石是我男神
              </p>
              <p class="footer">爱丽丝 2016-12-10 07:59</p>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <!-- 良品体验结束 -->
  <!-- footer部分 -->
  <div class="footer">
    <div class="footer_c inner_c">
      <div class="f_top">
        <div class="copy">
          <a href="#">
            <img src="images/logo.png" alt="" />
          </a>
          <p>
            小二杂货铺原创生活类电商品牌，秉承一贯的严谨态度，我们深入世界各地，从源头全程严格把控商品生产环节，力求帮消费者甄选到最优质的商品，全线采用天然原材料，控制甲醛低量无害，采用进口工艺，国际生产线不断优化，食材保证核心原产地新鲜直供，让你享受品质生活
          </p>
        </div>
        <dl class="about">
          <dt>关于我们</dt>
          <dd>我的品牌</dd>
          <dd>公司动态</dd>
          <dd>经历发展</dd>
          <dd>商品推广</dd>
        </dl>
        <dl class="about">
          <dt>关于我们</dt>
          <dd>我的品牌</dd>
          <dd>公司动态</dd>
          <dd>经历发展</dd>
          <dd>商品推广</dd>
        </dl>
        <dl class="about">
          <dt>关于我们</dt>
          <dd>我的品牌</dd>
          <dd>公司动态</dd>
          <dd>经历发展</dd>
          <dd>商品推广</dd>
        </dl>
        <div class="wx ewm">
          <img src="images/weixin.png" alt="" />
          <span>微信公众号</span>
        </div>
        <div class="wb ewm">
          <img src="images/weixin.png" alt="" />
          <span>微博公众号</span>
        </div>
      </div>
      <div class="f_bottom">
        <div class="f_icon">
          <p>2019&copy;youhaosuda.com</p>
          <div>
            <img src="images/img81.png" alt="" />
            <img src="images/img82.png" alt="" />
            <img src="images/img83.png" alt="" />
            <img src="images/img84.png" alt="" />
            <img src="images/img85.png" alt="" />
            <img src="images/img86.png" alt="" />
            <img src="images/img87.png" alt="" />
          </div>
        </div>
        <div class="f_right">
          <img src="images/img881.png" alt="" />
          <img src="images/img891.png" alt="" />
          <img src="images/img901.png" alt="" />
        </div>
      </div>
    </div>
  </div>

  <div >
    ${index}
    ${pricesum}
  </div>

  <script>
    function re(){
      window.location.href="${pageContext.request.contextPath}/Commodity/SC";
    }


    var conent=new Vue({
      el:"#conent",
      methods:{
        redirects:function(src){
          window.location.href=src;
        }
      }
    });

    var banner=new Vue({
      el:".banner",
      data:{
        src:"images/img11.png",
        tf1:true,
        tf2:false,
        tf3:false
      },
      methods:{
        replace:function(i){
          this.tf1=false;
          this.tf2=false;
          this.tf3=false;
          if(i==1){
            this.tf1=true;
            this.src="images/img11.png";
          }
          if(i==2){
            this.tf2=true;
            this.src="images/img12.png";
          }
          if(i==3){
            this.tf3=true;
            this.src="images/img13.png";
          }

        }
      }
    });

    var app=new Vue({
      el:"#app",
      data:{
        name:"${username}",
        tf:("${username}")===""
      }
    });

  </script>
  </body>
</html>
