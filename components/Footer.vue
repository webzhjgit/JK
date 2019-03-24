<template>
  <div>
      <p id="pa">
      <a href="#" target="_blank"><strong>简居客家居</strong></a>是一家专业从事<a href="#" target="_blank"><strong>家具网</strong></a>上销售的互联网平台，公司成立于2017年。2017年以来，一面是中国电子商务的飞速发展；一面是家居、家具行业日益激烈的市场竞争，简居客家具网正是在这样的背景下应运而生并谋求发展。2018年，简居客率先开辟家居电商行业B2B2C营销模式，并在2年内实现10倍颠覆式增长。2018年初，简居客拓展多种家具供应链，成为中国唯一在海外建立大规模家具采购体系的电商。专业提供各类中法欧韩美式家具，各种<a href="#" target="_blank"><strong>实木家具、实木床、衣柜</strong></a>定制化销售服务。同时，简居客进入飞速发展时代，首创家居电商行业“全球购”服务，全面启动B2B2C平台开放、“家私全球购”业务、大城市计划、全国家具免费包邮等战略举措，用互联网思维颠覆传统家具行业，奠定简居客中国家具电商前列品牌的地位。      
   </p>
<!--商标-->
  <div class="biao">
     <a href="#">
       <p id="p1"></p>
       <span>网商</span>
     </a>
     <a href="#">
       <p id="p2"></p>
       <span>100%正品</span>
     </a>
     <a href="#">
       <p id="p3"></p>
       <span>双重质检</span>
     </a>
     <a href="#">
       <p id="p4"></p>
       <span>全球化采购</span>
     </a>
     <a href="#">
       <p id="p5"></p>
       <span>无理由退货</span>
     </a>
     <a href="#">
       <p id="p6"></p>
       <span>贵就赔</span>
     </a>
     <a href="#">
       <p id="p7"></p>
       <span>万千口碑</span>
     </a>
  </div>
  <!--指南-->
  <div class="zhi">
    <!--用户热线-->
    <ul class="tel">
       <li>客服热线（9:00-22:00）</li>
       <li>023-68804769</li>
    </ul>
    <!--关于-->
    <div class="nan">
      <ul class="G">
         <li id="h">关于简客居</li>
         <li><a href="#">公司简介</a></li>
         <li><a href="#">隐私保护</a></li>
         <li><a href="#">免责声明</a></li>
         <li><a href="#">联系我们</a></li>
      </ul>
      <!--新手指南-->
      <ul>
         <li id="h">新手指南</li>
         <li><a href="#">新用户注册</a></li>
      </ul>
      <!--配送安装-->
      <ul>
         <li id="h">配送安装</li>
         <li><a href="#">收货指南</a></li>
         <li><a href="#">物流配送</a></li>
      </ul>
      <!--售后服务-->
      <ul>
         <li id="h">售后服务</li>
         <li><a href="#">45天无理由退换货</a></li>
         <li><a href="#">维修补件说明</a></li>
      </ul>
      <!--购物保障-->
      <ul>
         <li id="h">购物保障</li>
         <li><a href="#">正品保障</a></li>
         <li><a href="#">注册协议</a></li>
      </ul>
      <!--官方微信-->      
      <ul>
         <li id="h">官方微信</li>
         <li><img src="jk_img/a120.jpg" alt=""></li>
      </ul>
    </div>
  </div>
  <!--最下方黑色父元素-->
  <div class="footerz">
     <div class="link">
         <!--热门城市-->
        <div class="re">
           <span>热门城市：</span>
           <a href="javascript:;" v-for="c of citys" :key="c.rsid">{{c.rscity}}</a>
           
        </div>
        <!--友情链接-->
        <div class="Yq">
           <span>友情链接：</span>
           <a href="javascript:;" target="_blank" v-for="f of fir" :key="f.lid">{{f.lname}}</a>
        </div>
     </div>
<!--版权-->
     <ul class="ban">
     <!--各种家具-->
       <li id="one">Copyright © 2017-2018
           <a href="" target="_blank">
             <strong>简居客家居网,</strong>
           </a>专业提供
            <a href="" target="_blank">
             <strong>美式家具,</strong>
           </a>
            <a href="" target="_blank">
             <strong>欧式家具,</strong>
           </a>
            <a href="" target="_blank">
             <strong>韩式家具,</strong>
           </a>
            <a href="" target="_blank">
             <strong>现代家具,</strong>
           </a>
            <a href="" target="_blank">
             <strong>中式家具,</strong>
           </a>
            <a href="" target="_blank">
             <strong>儿童家具,</strong>
           </a>北欧日式家居
            <a href="" target="_blank">
             <strong>美国进口床垫,</strong>
           </a>床上用品及家居用品等多种商品
       </li>
       <!--热门产品-->
       <li id="two">
          <a href="" target="_blank">热门产品</a>|
          <a href="" target="_blank">户外阳台家具</a>|
          <a href="" target="_blank">多功能家具</a>|
          <a href="" target="_blank">覆盖地区</a>|
          <a href="" target="_blank">家具图片</a>|
          <a href="" target="_blank">家居资讯</a>|
          <a href="" target="_blank">家族问答</a>|
       </li>
       <!--版权所有-->
       <li id="three">
           简居客家居 版权所有，并保留所有权利。
           <a href="">ICP备案证书号：渝ICP备17012303号-1</a>
       </li>
     </ul>
  </div>
  </div>
</template>
<script>
export default {
    data(){
        return{
            citys:[],
            fir:[]
        }
    },
    methods:{
       city(){
            var url="http://localhost:3000/footer";
            this.axios.get(url).then((result)=>{
                this.citys=result.data
            })
        },
      firs(){
            var url="http://localhost:3000/footer/fir";
            this.axios.get(url).then((result)=>{
                this.fir=result.data
            })
        },
    },
    created(){
        this.city();
        this.firs();
    }
}
</script>
<style scoped>
    *{
    margin:0;
    padding:0;
}
body{
    overflow-x: hidden; 
}
ul{
    list-style: none;
}
a{
    text-decoration: none;
}
#pa{
    width:1200px;
    height:90px;
    margin:0 auto;
    font-size: 13px;
    color:#777777;
    padding:15px 0;
}
#pa>a>strong{
    color:#333333;
}
#pa>a>strong:hover{
    opacity: .8;
}
/* 商标父元素 */
div.biao{
    width:1200px;
    height:90px;
    margin:0 auto;
    text-align: center;
}
/* 商标a标签模块 */
div.biao>a{
    width:122px;
    height:80px;
    margin-top:10px;
    display: inline-block;
}
/* 鼠标效果 */
div.biao>a:hover{
    opacity: .8;
}
/* 图片效果 */
p{
    width:50px;
    height:50px;
    margin:0 auto;   
}
/* 图片 */
#p1{
    background:url(../jk_img/D0.png) 0px 0px no-repeat
}
#p2{
    background:url(../jk_img/D0.png) -50px 0px no-repeat
}
#p3{
    background:url(../jk_img/D0.png) -100px 0px no-repeat
}
#p4{
    background:url(../jk_img/D0.png) -150px 0px no-repeat
}
#p5{
    background:url(../jk_img/D0.png) 0px -50px no-repeat
}
#p6{
    background:url(../jk_img/D0.png) -50px -50px no-repeat
}
#p7{
    background:url(../jk_img/D0.png) -100px -50px no-repeat
}
/* 商标字体 */
div.biao>a>span{
    width:122px;
    height:24px;
    font-size:14px; 
    color:#000;
    text-align: center;
    margin-top:5px;
    display: inline-block;
}
/* 用户指南 */
div.zhi{
    width:1200px;
    height:165px;
    display: flex;
    justify-content: space-between;
    margin:70px auto;
}
/* 用户热线 */
ul.tel{
    width:240px;
    height:165px;
    background:url() 0px -100px no-repeat;
}
/* 客服热线 */
.tel>li:first-child{
    width:240px;
    height:19px;
    font-size: 14px;
}
/* 电话号码 */
.tel>li:last-child{
    width:240px;
    height:35px;
    font-size: 20px;
    color:#f00;
    margin-top: 8px;
}
/* 联系我们父元素 */
div.nan{
    width:851px;
    height:165px;
    display: flex;
}
/* 联系我们所有ul宽高 */
div.nan>ul{
    width:151px;
    height:165px;
}
/* 联系我们最后一个ul */
div.nan>ul:last-child{
    width:96px;
    height:134px;
}
/* 联系我们最后一个ul中的图片 */
div.nan>ul:last-child>li>img{
    width:96px;
    height:96px;
}
/* 所有的标题 */
div.nan>ul>#h{
    width:auto;
    height:32px;
    font-size:14px;
}
/* 指南 */
div.nan>ul>li{margin:3px 0;}
/* 指南a标签 */
div.nan>ul>li>a{
    width:150px;
    height:22px;
    display:inline-block;
    font-size:14px;
    color:#999e99;
}
/* 指南a标签鼠标效果 */
div.nan>ul>li>a:hover{
    opacity: .7;
}
/* 最下方父元素 */
div.footerz{
    width:100%;
    height:260px;
    border:1px solid #000;
    background:#1f1f1f;

}
/* 上方城市 */
div.link{
    width:1200px;
    height:142px;
    margin:15px auto;
    margin-bottom:25px; 
}
/* 友情链接中span元素 */
.re>span,.Yq>span{
    color:#777777;
    display: inline-block;
    width:auto;
    font-size:11px;
}
/* 所有a标签的样式 */
.footerz a{
    display: inline-block;
    width:auto;
    height:20px;
    margin-right:9px;
    font-size: 11px;
    color:#777777;
}
/* 友情链接宽高 */
div.Yq{
    width:1200px;
    height:100px;
}
/* 所有a标签的hover效果 */
.footerz a:hover{
   opacity: .8;
}
/* 出版ul的宽高 */
.ban{
    width:1200px;
    height:70px;
    margin:0 auto;
   border-top:1px solid #fff;
}
/* 最后三个li的字体 */
#one{
    margin-top:15px;
    color:#777777;
    font-size: 13px;
}
/* 最后三个li的字体 */
#two,#three{
    color:#777777;
    font-size: 13px;
}



</style>