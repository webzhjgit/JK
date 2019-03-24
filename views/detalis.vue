<template>
  <div>
      <Header></Header>
     <!-- 商品购买栏 -->
    <div class="shop_buy">
        <!-- 商品标题 -->
        <ul class="shop_title">
            <li>
                <a href="#" title="简居客家居">简居客家居</a>
            </li>
            <li>
                <a href="#" title="实木床">实木床</a>
            </li>
            <li>
               <span>{{com[0].ctitle}}</span>
            </li>
        </ul>
        <!-- 商品详情 -->
        <div class="shop_img">
            <!-- 图片 -->
            <div>
                <!-- 大图片 -->
                <div>
                    <img :src="pri[0].small" alt="" class="bigimg">
                </div>
                <!-- 小图片 -->
                <div class="shop_imgs">
                    <a class="aprev" @click="zuo" href="javascript:;">
                        <span></span>
                    </a>
                    <div class="img_min">
                        <ul :style="{'left':call + 'px'}">
                            <li class="min_img" v-for="(p,i) of pri" :key="i">
                                <a href="javascript:;">
                                   <img :src="p.bigimg" alt="">
                                </a>
                            </li>
                        </ul>
                    </div>
                    <a class="anext" @click="you" href="javascript:;">
                        <span></span>
                    </a>
                </div>
                <!-- 分享收藏 -->
                <ul class="share">
                    <li class="share_coll">
                      <span class="icon">分享</span>
                    </li>
                    <li class="share_coll">
                       <a href="javascript:;" class="icon">收藏商品</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 商品详情 -->
        <div class="shop_deta">
            <!-- 商品详情标题 -->
          <h4 class="deta_title">                
               {{com[0].ctitle}}
          </h4>
          <!-- 商品价格 -->
          <div>
              <!-- 商品价格 -->
             <table class="tab">
                 <tbody>
                     <tr>
                         <td class="td1">
                           <span id="font">促销价</span>
                         </td>
                         <td class="td2">
                           <strong class="yen">￥</strong>
                           <strong class="jum">{{com[0].cprice}}</strong>
                           <span id="font"> 市场价:
                           <del>￥{{com[0].sprice}}</del></span>
                         </td>
                         <td class="td3">
                             <span class="span_left"></span>
                             <p>
                                 <a id="font" href="javasxript:;">已售
                                     <span class="orange">{{com[0].sold}}</span>
                                 </a> <br>
                                 <a id="font" href="javascript:;">评价
                                     <span class="ping">{{com[0].eva}}</span>
                                 </a>
                             </p>
                         </td>
                     </tr>
                 </tbody>
             </table>
          </div>
          <!--购买选项 -->
          <div class="option">
              <!-- 购买选项 -->
              <div>
                  <dl>
                      <dt>颜色分类</dt>
                      <dd>
                          <a href="javascript:;" class="cunnte" v-for="(c,i) of com" :key="i">{{c.color}}<i></i> </a>
                      </dd>
                  </dl>
                  <dl>
                      <dt>门数量</dt>
                      <dd>
                          <a href="javascript:;" class="cunnte" v-for="(c,i) of com" :key="i">{{c.door}}<i></i> </a>
                      </dd>
                  </dl>
                  <dl>
                      <dt>是否组装</dt>
                      <dd>
                        <a href="javascript:;" class="cunnte">{{com[0].jieg}}<i></i></a>
                      </dd>
                  </dl>
              </div>
              <!-- 购买数量 -->
              <dl>
                  <dt>购买数量</dt>
                  <dd>
                      <el-input-number v-model="num8" controls-position="right" @change="handleChange" :min="1" :max="10"></el-input-number>
                  </dd>
              </dl>
              <!-- 购买按钮 -->
              <dl class="btnse">
                  <dd>
                      <a href="javascript:;" @click="shop" class="shopp_car">加入购物车</a>
                      <a href="javascript:;" class="shopping">立即购买</a>
                  </dd>
              </dl>
          </div>
        </div>
    </div>
    <!-- 商品详情 -->
    <div class="container">
        <!--商品左边 -->
        <div class="container_left">
            <!-- 人气推荐 -->
            <div class="popu">
                <h3>人气推荐</h3>
                <ul>
                    <li class="popu_li" v-for="d of deta" :key="d.rid">
                        <div class="popu_img">
                            <a href="javascript:;">
                                <img :src="d.rimg" alt="">
                            </a>
                        </div>
                        <div class="popu_title">
                            <a class="popu_a" href="#" target="_blank" :title="d.rtitle">
                                 {{d.rtitle}}
                            </a>
                        </div>
                        <p>
                            <a class="popu_a" href="javascript:;">￥{{d.price}}</a>
                            <a class="popu_as" href="javascript:;">
                                评价
                                <span class="red">{{d.eva}}</span>
                            </a>
                        </p>
                    </li>
                </ul>
            </div>
            <!-- 商品详情评论 -->
            <div class="comm">
                <div id="comm_frame">
                    <a href="#d1">商品详情</a>
                    <a href="#d2">规格参数</a>
                    <a href="#d3">评价 <span>(1228)</span> </a>
                    <a href="#d4">相关文章</a>
                    <a href="#d5">相关问答</a>
                </div>
                <!-- 图片介绍 -->
                <div id="d1" class="comm_img">
                     <div>
                       <img src="../jk_img/c750.jpg" alt="">
                     </div>
                    <div>
                       <img src="../jk_img/c750 (1).jpg" alt="">
                    </div>
                    <div>
                       <img src="../jk_img/c750 (1).jpg" alt="">
                    </div>
                     <div>
                      <img src="../jk_img/c750 (1).jpg" alt="">
                    </div>
                    <div>
                      <img src="../jk_img/c750 (1).jpg" alt="">
                    </div>
                    <div>
                      <img src="../jk_img/c750 (1).jpg" alt="">
                    </div>
                    <div class="img_table" id="d2">
                        <table>
                            <tbody class="tbodys">
                                <tr class="tr_first">
                                    <th colspan="2">详情信息</th>
                                </tr>
                                <tr>
                                    <td class="keys">产地:</td>
                                    <td> &nbsp;广东</td>
                                </tr>
                                <tr>
                                    <td class="keys">地市:</td>
                                    <td>佛山市</td>
                                </tr>
                                <tr>
                                    <td class="keys">出租车是否可运输:</td>
                                    <td>否</td>
                                </tr>
                                <tr>
                                    <td class="keys">包装体积:</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <td class="keys">品牌:</td>
                                    <td>槿慕轩</td>
                                </tr>
                                <tr>
                                    <td class="keys">型号:</td>
                                    <td>B9</td>
                                </tr>
                                <tr>
                                    <td class="keys">是否可预售:</td>
                                    <td>否</td>
                                </tr>
                                <tr>
                                    <td class="keys">款式定位:</td>
                                    <td>品质奢华型</td>
                                </tr>
                                <tr>
                                    <td class="keys">设计元素:</td>
                                    <td>原木 大师设计</td>
                                </tr>
                                <tr>
                                    <td class="keys">颜色分类:</td>
                                    <td>卡德加覅u附近的女深刻搭街坊喀什酱SFSDFSDJFLSDJFLSDFJL豆腐喀什酱豆腐看似简单率领的飞鸟时代疯狂世界东方粉丝地方</td>
                                </tr>
                                <tr>
                                    <td class="keys">适用人数:</td>
                                    <td>2人</td>
                                </tr>
                                <tr>
                                    <td class="keys">尺寸:</td>
                                    <td>其他</td>
                                </tr>
                                <tr>
                                    <td class="keys">是否带储物空间:</td>
                                    <td>否</td>
                                </tr>
                                <tr>
                                    <td class="keys">是否带软靠:</td>
                                    <td>否</td>
                                </tr>
                                <tr>
                                    <td class="keys">是否带护栏:</td>
                                    <td>否</td>
                                </tr>
                                <tr>
                                    <td class="keys">是否可定制:</td>
                                    <td>否</td>
                                </tr>
                                <tr>
                                    <td class="keys">材质:</td>
                                    <td>白蜡木</td>
                                </tr>
                                <tr>
                                    <td class="keys">工艺:</td>
                                    <td>其他</td>
                                </tr>
                                <tr>
                                    <td class="keys">风格:</td>
                                    <td>美式乡村</td>
                                </tr>
                                <tr>
                                    <td class="keys">家具结构:</td>
                                    <td>框架结构</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- 评价 -->
                <div id="d3">
                    <!-- 评价标题 -->
                    <div class="tit_header">
                        <ul>
                            <li>评价(649)</li>
                        </ul>
                    </div>
                    <!-- 评价内容 -->
                    <div>
                        <div class="tit_body" v-for="u of user" :key="u.rid">
                            <div class="body_tit">
                                <img :src="u.rimg" alt="" class="img_tit">
                            </div>
                            <div class="tit_bodys">
                                <p class="tit_p">
                                    {{u.uname}}
                                    <span class="pull-right">{{u.utime}}</span>
                                </p>
                                <p>
                                   {{u.rtitle}} 
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- 评价分页 -->
                    <div>
                        <ul class="ul_page">
                            <li class="page selected">
                                <a href="javascript:;">1</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 相关文章 -->
                <div id="d4">
                    <div class="tit_header">
                        <ul>
                            <li>实木床相关文章</li>
                        </ul>
                    </div>
                    <div class="tit_body" v-for="a of artc" :key="a.rid">
                        <div class="body_tit">
                            <a href="#" target="_blank">
                                <img :src="a.rimg" alt="" class="img_tit">
                            </a>
                        </div>
                        <div>
                            <h3 class="tit_h">
                                <a href="#" target="_blank" :title="a.uname">
                                    {{a.uname}}
                                </a>
                            </h3>
                            <p class="tit_p">               
                                 <a href="#" target="_blank" :title="a.rtitle">{{a.rtitle}}</a>
                            </p>
                        </div>
                    </div>
                </div>
                <!-- 相关问题 -->
                <div id="d5">
                    <div class="tit_header">
                        <ul>
                            <li>床头柜相关问题</li>
                        </ul>
                    </div>
                    <div class="problem" v-for="p of pros" :key="p.rid">
                       <div>
                           <h3 class="tit_h"><a href="#" target="_blank" :title="p.rtitle">{{p.rtitle}}</a></h3>
                           <p class="tit_hp"></p>
                       </div>
                       <div>
                           <div class="user">
                               <img :src="p.rimg" alt="">
                           </div>
                           <div class="user">
                               <p>{{p.uname}}</p> 
                           </div> 
                       </div>
                       <div class="contents">
                            {{p.unei}} 
                       </div>
                       <p class="info">
                        <span>{{p.utime}}</span>
                        <span>{{p.look}} 查看</span>
                        <span>{{p.da}} 回答</span>
                       </p>
                    </div>    
                </div>
            </div>
        </div>
        <!-- 看了又看 -->
        <div class="container_right">
            <div class="right_title">
                <div class="title_look">
                   <span>看了又看</span>
                </div>
                <div class="line"></div>
            </div>
            <ul class="look_right">
                <li class="look_li" v-for="l of look" :key="l.rid">
                    <a href="#" target="_blank">
                        <img :src="l.rimg"  alt="">
                    </a>
                    <p class="look">
                        <a href="#" target="_blank" :title="l.rtitle">
                                {{l.rtitle}}
                        </a>
                    </p>
                    <p class="look">￥{{l.price}}</p>
                </li>
            </ul>
            </div>
        </div>
  </div>    
</template>
<script>
  import {Toast} from "mint-ui"
  import Header from '@/components/Header.vue'
export default {
    data(){
        return{
            Header:true,
            look:[],
            deta:[],
            user:[],
            artc:[],
            pros:[{},{},{},{},{}],
            com:[{},{},{}],
            pri:[{},{},{},{},{}],
            num8:1,
            pid:"",
            call:0
        }
    },
    methods:{
        lool(){
            var url="http://localhost:3000/detalis/lool";
            this.axios.get(url).then((res)=>{
                this.look=res.data.data[0];
                this.deta=res.data.data[1];
                this.user=res.data.data[2];
                 this.artc=res.data.data[3];
                 this.artc=res.data.data[4];
                 this.pros=res.data.data[5];
            })
        },
        comm(){
            var pro=this.$route.query.pid;
            this.pid=pro
            var url="http://localhost:3000/detalis/comm?pid="+pro;
            this.axios.get(url).then((res)=>{
               this.com=res.data.data[0]
               this.pri=res.data.data[1]
            })
        },
        handleChange(value) {
      },
      click(){
          $(function(){
             $(".cunnte").click(function(e){
                var $a=$(this);
                var $da=$("dd")
                $a.siblings().removeClass("pure").children("i").css("display","none")
                $a.addClass("pure").children("i").css("display","block")
                })
           })
      },
      zuo(){
          this.call+=98;
          if(this.call>98){
              this.call=0
          }
      },
      you(){
          this.call -=98;
           if (this.call < -98) {
           this.call =0;
           }
      },
      shop(){
        var img=this.pri[0].bigimg;
        var title=this.com[0].ctitle;
        var size=this.com[0].size;
        var color=this.com[0].color;
        var price=this.com[0].cprice
        var num=1
        var url="http://localhost:3000/detalis/shop?"
            url+="img="+img;
            url+="&title="+title;
            url+="&size="+size;
            url+="&color="+color;
            url+="&price="+price;
            url+="&num="+num;
        this.axios.get(url).then((res)=>{
            console.log(res.data)
            if(res.data.code== -1){
                Toast("请登录")
            }else{
                Toast("添加成功")
            }
        })
      }  
    },
    created(){
        this.lool();
        this.comm();
        this.click();
    },
      components: {
    "Header":Header
  },
}
</script>
<style>
*{
    margin:0;
    padding: 0;
}
ul{
    list-style: none;
}
body{
    line-height: 1.75;
}
a{
    text-decoration: none;
    color:#ccc;
}
a:hover{
    opacity: .8;
}
/* 商品购买栏 */
div.shop_buy{
    width:1200px;
    margin:20px auto;
    display: flex;
    flex-wrap: wrap;
}
.bigimg{
    width:469px;
    height:375px;
}
/* 商品标题 */
ul.shop_title{
    width:1200px;
    height:24px;
    display: flex;
    font-size: 14px;
    color:#ccc;
    margin-bottom: 20px;
}
/* 在li中间添加/ */
ul.shop_title>li+li::before{
    content: "/";
    color:#ccc;
    padding: 0 5px;
}
/*商品图片 */
div.shop_img{
    width:470px;
    margin-right: 20px;
}
/* 商品图片小图父元素 */
div.shop_imgs{
    overflow: hidden;
    zoom: 1;
    padding: 0;
    position: relative;
    width: 470px;
    height: 70px;
    margin-top: 6px
}
/* 小图片左右箭头 */
a.aprev,a.anext{
    position: absolute;
    top: 2px;
    width: 36px;
    height: 65px;
    border: none;
    z-index: 99;
    text-decoration: none;
    text-align: center;
    line-height: 65px;
    color: #fff;
    background: rgba(0,0,0,.3);
}
/* 右边箭头靠右 */
a.anext{
    right:0;
}
/* 箭头图片父元素span */
a.aprev>span,a.anext>span{
    width: 36px;
    height: 36px;
    display: block;
    position: absolute;
    top: 50%;
    margin-top: -18px;
    right: 0;
}
/* 左边箭头图片 */
a.aprev>span{
    background:url(../jk_img/as1.png) center no-repeat 
}
/* 右边箭头span */
a.anext>span{
    background:url(../jk_img/as2.png) center no-repeat 
}
/* 小图片父元素 */
div.img_min{
    width:432px;
    overflow: hidden;
    position: relative;
}
/* 小图片ul */
div.img_min>ul{
    width: 700px;
    position: relative;
    overflow: hidden;
    padding: 0px;
    margin: 0px;
    /* left: -108px; */
}
/* 小图片每个li */
li.min_img{
    width:102px;
    float: left;
    margin: 0 6px 0 0;
}
/* 小图片图片大小 */
li.min_img>a>img{
    width: 98px;
    height: 65px;
    display: block;
}
/* 分享栏 */
ul.share{
    width:470px;
    height:20px;
    margin-top:20px;
}
/* 分享栏li */
li.share_coll{
    float: left;
    margin-right:22px;
    color:#ccc;
    font-size: 14px;
}
/*分享字体属性 */
.icon{
    height:20px;
    padding-left:18px; 
}
/* 收藏商品属性 */
a.icon{
    height:20px;
    padding-left:18px; 
}
/* 背景图片 */
span.icon{
    background:url(../jk_img/sh.png)  -283px -44px no-repeat;
}
a.icon{
    background:url(../jk_img/sh.png)  -283px -64px no-repeat;
}
/* 商品详情 */
div.shop_deta{
    width:710px;
}
/* 商品标题 */
.deta_title{
    color: #666;
    font-size: 16px;
    margin-bottom: 20px;
}
/* 商品价格 */
table.tab{
    width:100%;
    height: auto;
    margin-bottom:20px;
    padding:13px 10px 13px 10px;
    background: #f7f7f7;
}
/* 第一个td宽度 */
td.td1{
    width:63px;
}
/* 最后一个td宽度 */
td.td3{
    width:80px;
}
/* 已售左竖线 */
.span_left{
    float: left;
    width: 0;
    height: 28px;
    vertical-align: top;
    margin-top: 2px;
    margin-right: 10px;
    border-left: dotted 1px #c9c9c9;
}
/* 字体样式 */
#font{
    font-size:13px;
    color:#999;
}
/* 人民币符号样式 */
.td2>strong.yen{
    font-size: 20px;
    font-weight: 400;
    padding-top: 8px;
}
/* 价钱数量 */
.td2>strong.jum{
    font-size: 27px;
    font-weight: 400;
    margin-left:-7px;
}
/* 字体颜色 */
.td2>strong.yen,.td2>strong.jum,.orange{
    color:#f60;
}
/* 评价数量颜色 */
.ping{
    color:#89acd6;
}
/* 购买选项 */
div.option{
    width:100%;
    font-size: 13px;
}
/* 选项父元素 */
dl{
    margin-bottom:11px;
}
/* 防止选项高度坍塌 */
dl::after{
    content: '.';
    display: block;
    height: 0;
    clear: both;
    visibility: hidden;
}
/* 选项标题 */
dt{
    width:53px;
    color:#999;
    float: left;
}
/* 选项内容父元素 */
dd{
    width:610px;
    float: right;
}
/* 选项a标签样式 */
.cunnte{
    display: inline-block;
    line-height: 22px;
    padding: 1px 8px;
    margin: 0 6px 6px 0;
    background: #fff;
    position: relative;
    border: 1px solid #ccc;
    color: #b3b3b3;
    cursor: default;
}
/* 选项鼠标效果 */
.cunnte:hover{
    padding: 0 7px;
    color: #666;
    border: 2px solid #c9033b;
}
/* 选中选项效果 */
.pure{
    padding: 0 7px;
    color: #666!important;
    text-decoration: none;
    border: 2px solid #c9033b;
}
/* 选中框右下角对勾 */
a>i{
    display: none;
    width: 12px;
    height: 12px;
    position: absolute;
    right: -2px;
    bottom: -2px;
    background: url(../jk_img/sh.png) -156px -41px no-repeat;
}
.is{
    display: block;
}
/* 数量栏 */
div.input{
    width:69px;
    height:28px;
    border:1px solid #ccc;
}
/* 数量数值框 */
div.input>input{
    width:50px;
    height:26px;
    outline:0;
    border:0;
    float: left;
    text-align: center;
}
/* 加减号按钮父元素 */
div.click{
    width: 16px;
    height: 28px;
    overflow: hidden;
    float: right;
    border:1px solid #ccc;
    border-right:0;
    margin-top:-1px;
}
/* 加减号样式 */
div.click>a{
    display: block;
    width: 16px;
    height: 14px;
    font-weight: 800;
    font-size: 16px;
    text-align: center;
    line-height: 14px;
    overflow: hidden;
}
/* 边框 */
a.adown{
    border-bottom:1px solid #ccc;
}
/* 购买按钮 */
dl.btnse{
    margin-top:30px;
}
/* 购买按钮样式 */
.shopp_car,.shopping{
    display:inline-block;
    width: 181px;
    height: 45px;
    margin-top: 1px;
    background: #fff;
    color: #cf000e;
    font-size: 18px;
    text-align: center;
    line-height: 45px;
    border: 1px solid #cf000e;
}
/* 立即购买样式 */
.shopping{
    background: #cf000e;
    color: #fff;
}
/* 商品详情父元素 */
div.container{
    width:1200px;
    margin:20px auto;
    display: flex;
    justify-content:space-between;
}
/* 左侧商品 */
div.container_left{
    width:980px;
    display: flex;
    justify-content: space-between;
    position: relative;
}
/* 人气推荐 */
div.popu{
    width:210px;
}
/* 商品详情评论 */
div.comm{
    width:750px;
}
/* 人气推荐 */
div.popu>h3{
    height: 38px;
    line-height: 38px;
    padding: 0 10px;
    border: 1px solid #e6e6e6;
    background: #fafafa;
    font-size: 14px;
    color: #444;
}
/* 推荐图片 */
.popu_li{
    margin-bottom:10px;
}
/* 推荐图片大小 */
div.popu_img>a>img{
    width:210px;
    height:129px;
    padding:10px 0 0 0;
}
/* 图片标题 */
div.popu_title{
    width:210px;
    height:25px;
    overflow: hidden;
}
/* 图片价格 */
.popu_a{
    font-size: 13px;
    color:#666;
}
/* 评价 */
.popu_as{
    color:#ccc;
    font-size: 13px;
    float: right;
    padding-top:3px;
}
/* 评价数量颜色 */
.red{
    color:#cf000e;
}
/* 商品详情评论 */
div.comm{
    width:750px;
    position: relative;
}
/* 商品详情评论父元素 */
#comm_frame{
   width:750px;;
   height:38px;
   border:1px solid #e6e6e6;
   background:#fafafa;
}
 .comms{
     position: fixed;
     top:0px;  
     z-index: 15;
 }  

div#comm_frame>a{
    display: inline-block;
    width:115px;
    height:36px;
    line-height: 36px;
    color:#444;
    font-size:14px;
    padding:1px 0;
    text-align: center;
    font-weight: 700;
    border-right:1px solid #e6e6e6
}
div#comm_frame>a>span{
    font-weight: 400;
}
/* 商品详情图片 */
div.comm_img{
    width:750px;
    margin-bottom: 20px;
}
/* 详情信息 */
div.img_table{
    margin-top:10px;
}
/* 表格 */
table{
    width:100%;
    border:1px solid #e6e6e6;
}
/* 每一列 */
.tbodys tr td,.tbodys tr th{
    border-top: solid 1px #eaeaea;
    line-height: 18px;
    padding: 6px 0;
    vertical-align: top;
}
/* 详情信息列 */
.tbodys .tr_first th{
    background: #f8f8f8;
    text-align: left;
    color: #333;
    border-top:none;
    padding-left: 35px;
}
/* 标题列 */
.keys{
    text-align: right;
    width: 18%;
    border-right: none;
}
/* 每一行td */
.tbodys tr td{
    border-top: solid 1px #eaeaea;
    line-height: 18px;
    padding: 6px 0;
    vertical-align: top;
    color: #666;
    padding-left: 23px;
    font-size:13px;
}
/* 评价 */
.tit_header{
    height: 37px;
    padding-right: 30px;
    position: relative;
    border-bottom: 1px solid #F2F2F2;
    margin-bottom: 20px;
}
.tit_header>ul{
    height: 37px;
    border-left: solid 1px #e6e6e6;
    position: absolute;
}
.tit_header>ul>li{
    border-top: solid 2px #c9033b;
    color: #c9033b;
    background: #fff;
    line-height: 36px;
    padding: 0 30px;
    font-size: 14px;
    font-weight: 700;
    border-right: solid 1px #e6e6e6;
}
/* 评论内容 */
.tit_body{
    margin-bottom: 15px;
}
.tit_body>div{
    border-bottom: 1px solid #F2F2F2;
    padding-bottom: 15px;
}
.img_tit{
    width:48px;
    height:48px;
    border-radius:50%; 
}
.body_tit{
    display:table-cell;
}
.pull-right{
    display:inline-block;
}
.tit_body{
    display: flex;
}
.tit_bodys{
    width:100%;
}
p.tit_p{
    color: #999;
    font-size: 12px;
    display: -webkit-box;
    text-overflow: ellipsis;
    overflow: hidden;
    height:20px;
    margin-bottom:10px;
}
.tit_bodys>p:last-child{
    font-size: 13px;
}
.body_tit{
    padding-right:10px; 
}
.ul_page{
    margin: 0 auto 30px;
    display: flex;
    justify-content: center;
    align-items: center;
    padding-top: 20px;
}
li.page{
    float: left;
    margin-right:5px;
}
li.selected>a{
    padding: 9px 10px;
    border: 0;
    border-radius: 3px;
    background: #f2f2f2;
    color: #333;
    font-size:12px;
}
.page_s{
    padding: 5px 9px;
    border: 1px solid #ccc;
    border-radius: 3px;
    background: #fff;
    display: block;
    color:#333;
    font-size:12px;
}
.page_s:hover{
    border:1px solid #eaeaea;
}
.tit_h>a{
    font-size: 14px;
    margin-bottom: 10px;
    margin-top: 0;
    padding-top: 0;
    font-weight: 700;
    color:#333;
}
.tit_hp{
    margin-top:10px;
}
.problem{
    padding-bottom: 20px;
    margin-bottom: 20px;
    border-bottom:1px solid #f2f2f2;
}
.problem img{
    width:24px;
    height:24px;
    border-radius: 50%;
}
.user{
    display: inline-block;
    vertical-align: top;
    padding-right: 5px;
}
.user,.contents,.info{
    font-size: 13px;
}
.info{
    margin-top:10px;
    color:#999;
}





/* 看了又看父元素 */
div.container_right{
    width:200px;
}
/* 看了又看父元素 */
div.right_title{
    height: 16px;
    position: relative;
    text-align: center;
    color: #999;
    font-size:13px;
}
/* 看了又看标题 */
div.title_look{
    position: absolute;
    left:55px;top:3px;
}
/* 看了又看字体 */
div.title_look span{
    display: inline-block;
    padding: 0 15px;
    background: #fff;
}
/* 标题虚线 */
div.line{
    height:8px;
    border-bottom:1px dotted #c9c9c9;
}

ul.look_right{
    width:100%;
    margin-top:15px;
}
.look_li{
   margin-bottom:40px;   
}
ul.look_right li a img{
    width:200px;
    height:113px;
}
.look>a,.look{
    font-size:13px;
    text-align: center;   
    color:#333;
    height: 18px;
    line-height: 18px;
    overflow: hidden;
}
p.look{
    color:red;
}
</style>


