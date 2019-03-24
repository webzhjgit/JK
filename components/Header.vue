<template>
     <div>
     <div class="body1">  <!--头部最顶端-->
   <div class="headers">
    <!--内容父元素div-->
       <div class="header1">
       <!--左侧ul-->
         <ul>
           <li class="city">
             <p></p>
             <span>全国站</span>
           </li>
           <!--切换地址-->
           <li id="cityz" @mouseover="click">
             <a href="javascript:;">[切换]</a>
             <!--地址下拉菜单-->
             <div id="citys">
                <!--下拉菜单顶端小三角-->
                <div class="city-up"></div>
                <!--下拉菜单内容-->
                <div class="area-wrap">
                <!--热门城市栏-->
                  <div class="re">
                     <span>
                       <strong>热门城市：</strong>
                     </span>
                     <a class="area-city-name" title="全国" href="#">全国</a>
                     <a class="area-city-name" v-for="c of city" :key="c.id">{{c.rscity}}</a>
                    
                  </div>
                  <div class="area">
                     <a class="area-letter" href="#" v-for="z of zim" :key="z.lid">{{z.lname}}</a>
                  </div>
                  <div class="cityl">
                      <ul class="ul_city1">
                        <li>
                           <span class="citynav">A</span>
                           <a href="#" :title="A.Acity" v-for="A of cityA" :key="A.Aid">{{A.Acity}}</a>                           
                         </li>
                                                 <li>
                           <span class="citynav">B</span>
                           <a href="#" :title="B.Acity" v-for="B of cityB" :key="B.Aid">{{B.Acity}}</a>
                         </li>
                         <li>
                           <span class="citynav">C</span>
                           <a href="#" :title="C.Acity" v-for="C of cityC" :key="C.Aid">{{C.Acity}}</a>
                         </li>
                         <li>
                           <span class="citynav">D</span>
                           <a href="#" :title="D.Acity" v-for="D of cityD" :key="D.Aid">{{D.Acity}}</a>
                         </li>
                         <li>
                           <span class="citynav">E</span>
                           <a href="#" :title="E.Acity" v-for="E of cityE" :key="E.Aid">{{E.Acity}}</a>
                         </li>
                         <li>
                            <span class="citynav">F</span>
                           <a href="#" :title="F.Acity" v-for="F of cityF" :key="F.Aid">{{F.Acity}}</a>
                         </li>
                         <li>
                            <span class="citynav">G</span>
                            <a href="#" :title="G.Acity" v-for="G of cityG" :key="G.Aid">{{G.Acity}}</a>
                         </li>
                         <li>
                            <span class="citynav">H</span>
                            <a href="#" :title="H.Acity" v-for="H of cityH" :key="H.Aid">{{H.Acity}}</a>
                         </li>
                         <li>
                            <span class="citynav">J</span>
                            <a href="#" :title="J.Acity" v-for="J of cityJ" :key="J.Aid">{{J.Acity}}</a>
                         </li>
                         <li>
                           <span class="citynav">K</span>
                           <a href="#" :title="K.Acity" v-for="K of cityK" :key="K.Aid">{{K.Acity}}</a>
                         </li>
                         <li>
                           <span class="citynav">L</span>
                           <a href="#" :title="L.Acity" v-for="L of cityL" :key="L.Aid">{{L.Acity}}</a>
                         </li>
                         <li>
                           <span class="citynav">M</span>
                           <a href="#" :title="M.Acity" v-for="M of cityM" :key="M.Aid">{{M.Acity}}</a>
                         </li>
                         <li>
                           <span class="citynav">N</span>
                           <a href="#" :title="N.Acity" v-for="N of cityN" :key="N.Aid">{{N.Acity}}</a>
                         </li>
                         <li>
                           <span class="citynav">P</span>
                           <a href="#" :title="P.Acity" v-for="P of cityP" :key="P.Aid">{{P.Acity}}</a>
                         </li>
                         <li>
                           <span class="citynav">Q</span>
                           <a href="#" :title="Q.Acity" v-for="Q of cityQ" :key="Q.Aid">{{Q.Acity}}</a>
                         </li>
                         <li>
                           <span class="citynav">R</span>
                           <a href="#" :title="R.Acity" v-for="R of cityR" :key="R.Aid">{{R.Acity}}</a>
                         </li>
                         <li>
                           <span class="citynav">S</span>
                           <a href="#" :title="S.Acity" v-for="S of cityS" :key="S.Aid">{{S.Acity}}</a>
                         </li>
                         <li>
                           <span class="citynav">T</span>
                           <a href="#" :title="T.Acity" v-for="T of cityT" :key="T.Aid">{{T.Acity}}</a>
                         </li>
                         <li>
                           <span class="citynav">W</span>
                           <a href="#" :title="W.Acity" v-for="W of cityW" :key="W.Aid">{{W.Acity}}</a>
                         </li>
                         <li>
                           <span class="citynav">X</span>
                           <a href="#" :title="X.Acity" v-for="X of cityX" :key="X.Aid">{{X.Acity}}</a>
                         </li>
                         <li>
                           <span class="citynav">Y</span>
                           <a href="#" :title="Y.Acity" v-for="Y of cityY" :key="Y.Aid">{{Y.Acity}}</a>
                         </li>
                         <li>
                           <span class="citynav">Z</span>
                           <a href="#" :title="Z.Acity" v-for="Z of cityZ" :key="Z.Aid">{{Z.Acity}}</a>
                         </li>
                      </ul>
                  </div>
                </div>
             </div>
           </li>
           <!--登录注册-->
           <li v-show="login">
             <router-link to="Login">请登录</router-link>
             <router-link to="Regs">免费注册</router-link>
           </li>
            <li v-show="!login">
             <a href="javascript:;">{{uname}}</a>
             <a href="javascript:;" @click="btns">[退出]</a>
           </li>
         </ul>
         <!--右侧热线-->
         <div class="item">
           全国热线:
           <strong style='color:red;'>&nbsp;023-68804769</strong>
         </div>
       </div>
    </div>
 <!--下部导航栏父元素-->
    <div class="headerz">
    <!--logo图片-->
     <a href="#"><img class="logo" src="../jk_img/03.jpg" alt=""></a>    
   <!--搜索栏-->
      <form>
         <input class="input" type="text" placeholder="搜索您感兴趣的内容">
         <ul class="form1"> 
            <li>
              <router-link to="/detalis?pid=1" title="电视柜">电视柜</router-link>
            </li>
            <li>
              <router-link to="/detalis?pid=2" title="榻榻米">榻榻米</router-link>
            </li>
             <li>
              <router-link to="/detalis?pid=3" title="转角沙发">转角沙发</router-link>
            </li>
            <li>
              <router-link to="/detalis?pid=4" title="白蜡木床">白蜡木床</router-link>
            </li>
            <li>
              <router-link to="/detalis?pid=5" title="橡木家具">橡木家具</router-link>
            </li>
             <li>
              <router-link to="/detalis?pid=6" title="布艺沙发">布艺沙发</router-link>
            </li>
            <li>
              <router-link to="/detalis?pid=7" title="欧式家具">欧式家具</router-link>
            </li>
             <li>
              <router-link to="/detalis?pid=8" title="实木斗柜">实木斗柜</router-link>
            </li>
             <li>
              <router-link to="/detalis?pid=1" title="实木地柜">实木地柜</router-link>
            </li>
             <li>
              <router-link to="/detalis?pid=1" title="实木婚床">实木婚床</router-link>
            </li>
         </ul>
         <a class="a" href="#">搜索</a>
      </form>
    <!--我的购物车-->
     <div class="sshopping">
       <router-link to="/shopcard">我的购物车</router-link>
        <!--商品数量-->
        <span class="shopping-num">
           {{$store.getters.optCartCount}}
        </span>
     </div>
    <!--推荐-->  
      <div class="tui">
        <router-link to="/detalis?pid=1" title="实木婚床">实木床</router-link>
        <router-link to="/detalis?pid=2" title="实木婚床">布艺沙发</router-link>
        <router-link to="/detalis?pid=3" title="实木婚床">转角沙发</router-link>
        <router-link to="/detalis?pid=4" title="实木婚床">餐桌椅</router-link>
        <router-link to="/detalis?pid=5" title="实木婚床">红木家具</router-link>
      </div>
    </div>
    <!--导航栏父元素-->
    <div class="nav">
    <!--商品分类-->
       <div class="shang">
       <P>
         商品详情
       </p>
       <span></span>
       <ul class="navs">
       <!--第一个-->
        <li class="list-item">
           <i class="ione"></i>
           <router-link to="/products" title="家具">家具</router-link>
           <!--第一个隐藏栏-->
           <div class="jia">
              <ul class="bilie">
                <li class="bi">
                  <router-link to="/products" title="卧室家具">卧室家具</router-link>
                </li>
                <li class="lie">
                   <a target="_blank" title="卧室套系" href="#">卧室套系</a>
                   <a target="_blank" title="实木床" href="#">实木床</a>
                   <a target="_blank" title="床垫" href="#">床垫</a>
                   <a target="_blank" title="床头柜" href="#">床头柜</a>
                   <a target="_blank" title="衣柜" href="#">衣柜</a>
                   <a target="_blank" title="斗柜" href="#">斗柜</a>
                   <a target="_blank" title="妆镜台/妆凳" href="#">妆镜台/妆凳</a>
                   <a target="_blank" title="穿衣镜/衣帽架" href="#">穿衣镜/衣帽架</a> 
                   <a target="_blank" title="床尾凳" href="#">床尾凳</a>
                   <a target="_blank" title="榻榻米床" href="#">榻榻米床</a>
                </li>
                <li class="bi">
                   <a target="_blank" title="客厅家具" href="#">客厅家具</a>
                </li>
                <li class="lie">
                   <a target="_blank" title="茶桌茶台" href="#">茶桌茶台</a>
                   <a target="_blank" title="沙发" href="#">沙发</a>
                   <a target="_blank" title="茶几/边桌" href="#">茶几/边桌</a>
                   <a target="_blank" title="电视柜" href="#">电视柜</a>
                   <a target="_blank" title="鞋柜" href="#">鞋柜</a>
                   <a target="_blank" title="酒柜/装饰柜" href="#">酒柜/装饰柜</a>
                   <a target="_blank" title="屏风" href="#">屏风</a>
                   <a target="_blank" title="休闲椅/凳" href="#">休闲椅/凳</a>
                   <a target="_blank" title="间厅/玄关柜" href="#">间厅/玄关柜</a>
                   <a target="_blank" title="花架/装饰架" href="#">花架/装饰架</a>
                   <a target="_blank" title="客厅套装" href="#">客厅套装</a>
                </li>
                <li class="bi">
                   <a target="_blank" title="餐厅家具" href="#">餐厅家具</a>
                </li>
                <li class="lie">
                   <a target="_blank" title="餐桌" href="#">餐桌</a>
                   <a target="_blank" title="餐椅" href="#">餐椅</a>
                   <a target="_blank" title="餐边柜" href="#">餐边柜</a>
                   <a target="_blank" title="餐厅套装" href="#">餐厅套装</a> 
                </li>
                <li class="bi">
                   <a target="_blank" title="书房家具" href="#">书房家具</a>
                </li>
                <li class="lie">
                   <a target="_blank" title="书桌/书台" href="#">书桌/书台</a>
                   <a target="_blank" title="书柜/书架" href="#">书柜/书架</a>
                   <a target="_blank" title="书椅/转椅" href="#">书椅/转椅</a>
                   <a target="_blank" title="书房套系" href="#">书房套系</a>
                </li>
                <li class="bi">
                   <a target="_blank" title="儿童家具" href="#">儿童家具</a>
                </li>
                <li class="lie">
                   <a target="_blank" title="儿童床" href="#">儿童床</a>
                   <a target="_blank" title="儿童床垫" href="#">儿童床垫</a>
                   <a target="_blank" title="儿童床头柜" href="#">儿童床头柜</a>
                   <a target="_blank" title="儿童衣柜" href="#">儿童衣柜</a>
                   <a target="_blank" title="儿童桌" href="#">儿童桌</a>
                   <a target="_blank" title="儿童椅" href="#">儿童椅</a>
                   <a target="_blank" title="儿童柜类" href="#">儿童柜类</a>
                </li>
                <li class="bi">
                   <a target="_blank" title="户外阳台" href="#">户外阳台</a>
                </li>
                <li class="lie">
                   <a target="_blank" title="户外桌" href="#">户外桌</a>
                   <a target="_blank" title="户外椅" href="#">户外椅</a>
                   <a target="_blank" title="户外套系" href="#">户外套系</a>
                   <a target="_blank" title="吊篮/吊椅" href="#">吊篮/吊椅</a>
                   <a target="_blank" title="秋千/摇椅" href="#">秋千/摇椅</a>
                   <a target="_blank" title="遮阳伞" href="#">遮阳伞</a>
                   <a target="_blank" title="藤艺家具" href="#">藤艺家具</a>
                   <a target="_blank" title="折叠床" href="#">折叠床</a> 
                </li>
                <li class="bi">
                   <a target="_blank" title="办公家具" href="#">办公家具</a>
                </li>
                <li class="lie">
                   <a target="_blank" title="办公沙发" href="#">办公沙发</a>
                   <a target="_blank" title="办公桌" href="#">办公桌</a>
                   <a target="_blank" title="文件柜" href="#">文件柜</a>
                   <a target="_blank" title="办公椅" href="#">办公椅</a>
                   <a target="_blank" title="保险柜" href="#">保险柜</a>
                </li>
                <li class="bi">
                   <a target="_blank" title="多功能家具" href="#">多功能家具</a>
                </li>
                <li class="lie">
                   <a target="_blank" title="多功能柜类" href="#">多功能柜类</a>
                   <a target="_blank" title="行军床" href="#">行军床</a>
                   <a target="_blank" title="沙发隐形床" href="#">沙发隐形床</a>
                   <a target="_blank" title="书桌隐形床" href="#">书桌隐形床</a>
                   <a target="_blank" title="多功能茶几" href="#">多功能茶几</a>
                   <a target="_blank" title="书架隐形床" href="#">书架隐形床</a>
                   <a target="_blank" title="双层隐形床" href="#">双层隐形床</a>
                   <a target="_blank" title="壁床" href="#">壁床</a> 
                </li>
              </ul>
           </div>
        </li>
          <!--第二个-->
        <li class="list-item-cat">
            <i class="itwo"></i>
           <router-link to="/products" title="卧室家具">卧室家具</router-link>
            <!--隐藏栏父元素div-->
           <div class="jiaa">
             <!--隐藏栏左侧div-->
               <div class="dul">
               <!--导航列表-->
                  <ul class="biliei">
                     <li class="bi">
                       <a target="_blank" title="客厅家具" href="#">客厅家具</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="茶桌茶台" href="#">茶桌茶台</a>
                       <a target="_blank" title="沙发" href="#">沙发</a>
                       <a target="_blank" title="茶几/边桌" href="#">茶几/边桌</a>
                       <a target="_blank" title="电视柜" href="#">电视柜</a>
                       <a target="_blank" title="鞋柜" href="#">鞋柜</a>
                       <a target="_blank" title="酒柜/装饰柜" href="#">酒柜/装饰柜</a>
                       <a target="_blank" title="屏风" href="#">屏风</a>
                       <a target="_blank" title="休闲椅/凳" href="#">休闲椅/凳</a>
                       <a target="_blank" title="间厅/玄关柜" href="#">间厅/玄关柜</a>
                       <a target="_blank" title="花架/装饰架" href="#">花架/装饰架</a>
                       <a target="_blank" title="客厅套装" href="#">客厅套装</a>
                     </li>
                     <li class="bi">
                       <a target="_blank" title="茶桌茶台" href="#">茶桌茶台</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="实木茶桌" href="#">实木茶桌</a>
                       <a target="_blank" title="红木茶桌" href="#">红木茶桌</a>
                       <a target="_blank" title="茶桌保养" href="#">茶桌保养</a>
                       <a target="_blank" title="茶桌" href="#">茶桌</a>
                       <a target="_blank" title="禅意茶桌" href="#">禅意茶座</a>
                       <a target="_blank" title="新中式茶水柜" href="#">新中式茶水柜</a>
                       <a target="_blank" title="茶水台" href="#">茶水台</a>
                       <a target="_blank" title="新中式茶桌" href="#">新中式茶桌</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="沙发" href="#">沙发</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="布艺沙发" href="#">布艺沙发</a>
                       <a target="_blank" title="客厅沙发" href="#">客厅沙发</a>
                       <a target="_blank" title="实木沙发" href="#">实木沙发</a>
                       <a target="_blank" title="普通布沙发" href="#">普通布沙发</a>
                       <a target="_blank" title="真皮沙发" href="#">真皮沙发</a>
                       <a target="_blank" title="家用沙发" href="#">家用沙发</a>
                       <a target="_blank" title="卡座沙发" href="#">卡座沙发</a>
                       <a target="_blank" title="懒人沙发" href="#">懒人沙发</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="茶几/边桌" href="#">茶几/边桌</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="实木茶几" href="#">实木茶几</a>
                       <a target="_blank" title="大理石茶几" href="#">大理石茶几</a>
                       <a target="_blank" title="实木边几" href="#">实木边几</a>
                       <a target="_blank" title="小角几" href="#">小角几</a>
                       <a target="_blank" title="老榆木边几" href="#">老榆木边几</a>
                       <a target="_blank" title="禅意茶几" href="#">禅意茶几</a>
                       <a target="_blank" title="禅意边几" href="#">禅意边几</a>
                       <a target="_blank" title="老榆木茶几" href="#">老榆木茶几</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="电视柜" href="#">电视柜</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="实木电视柜" href="#">实木电视柜</a>
                       <a target="_blank" title="客厅电视柜" href="#">客厅电视柜</a>
                       <a target="_blank" title="水曲柳地柜" href="#">水曲柳地柜</a>
                       <a target="_blank" title="卧室地柜" href="#">卧室地柜</a>
                       <a target="_blank" title="伸缩电视柜" href="#">伸缩电视柜</a>
                       <a target="_blank" title="钢琴烤漆地柜" href="#">钢琴烤漆地柜</a>
                       <a target="_blank" title="大理石电视柜" href="#">大理石电视柜</a>
                       <a target="_blank" title="胡桃色地柜" href="#">胡桃色地柜</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="鞋柜" href="#">鞋柜</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="实木鞋柜" href="#">实木鞋柜</a>
                       <a target="_blank" title="玄关鞋柜" href="#">玄关鞋柜</a>
                       <a target="_blank" title="鞋柜隔断" href="#">鞋柜隔断</a>
                       <a target="_blank" title="进门鞋柜" href="#">进门鞋柜</a>
                       <a target="_blank" title="客厅鞋柜" href="#">客厅鞋柜</a>
                       <a target="_blank" title="简约现代鞋柜" href="#">简约现代鞋柜</a>
                       <a target="_blank" title="超薄玄关鞋柜" href="#">超薄玄关鞋柜</a>
                       <a target="_blank" title="翻斗鞋柜" href="#">翻斗鞋柜</a>
                     </li>
                  </ul>
               </div>
               <!--隐藏栏右侧div父元素-->
               <div class="dleft">
               <!--排行榜-->
                 <h6>排行榜</h6>
                  <div class="tag">
                     <a target="_blank" title="茶桌茶台" href="#">茶桌茶台</a>
                     <a target="_blank" title="沙发" href="#">沙发</a>
                     <a target="_blank" title="茶几/边桌" href="#">茶几/边桌</a>
                     <a target="_blank" title="电视柜" href="#">电视柜</a>
                     <a target="_blank" title="鞋柜" href="#">鞋柜</a>
                     <a target="_blank" title="酒柜/装饰柜" href="#">酒柜/装饰柜</a>
                     <a target="_blank" title="屏风" href="#">屏风</a>
                     <a target="_blank" title="休闲椅/凳" href="#">休闲椅/凳</a>
                     <a target="_blank" title="间厅/玄关柜" href="#">间厅/玄关柜</a>
                     <a target="_blank" title="花架/装饰架" href="#">花架/装饰架</a>
                     <a target="_blank" title="客厅套装" href="#">客厅套装</a>
                  </div>
                 <!--图片-->
                 <a target="_blank" href="#">
                    <img src="../jk_img/c1.jpg" alt="">
                 </a>
               </div>
           </div>
        </li>
        <li class="list-item-cat">
            <i class="itwo"></i>
           <router-link to="/products" title="客厅家具">客厅家具</router-link>
                      <!--隐藏栏父元素div-->
           <div class="jiaa">
             <!--隐藏栏左侧div-->
               <div class="dul">
               <!--导航列表-->
                  <ul class="biliei">
                     <li class="bi">
                       <a target="_blank" title="卧室家具" href="#">卧室家具</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="卧室套系" href="#">卧室套系</a>
                       <a target="_blank" title="实木床" href="#">实木床</a>
                       <a target="_blank" title="床垫" href="#">床垫</a>
                       <a target="_blank" title="床头柜" href="#">床头柜</a>
                       <a target="_blank" title="衣柜" href="#">衣柜</a>
                       <a target="_blank" title="斗柜" href="#">斗柜</a>
                       <a target="_blank" title="妆台镜/妆镜" href="#">妆台镜/妆凳</a>
                       <a target="_blank" title="穿衣镜/衣帽架" href="#">穿衣镜/衣帽架</a>
                       <a target="_blank" title="床尾凳" href="#">床尾凳</a>
                       <a target="_blank" title="榻榻米床" href="#">榻榻米床</a>
                     </li>
                     <li class="bi">
                       <a target="_blank" href="#" title="卧室套系">卧室套系</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="榫卯家具" href="#">榫卯家具</a>
                       <a target="_blank" title="轻奢家具" href="#">轻奢家具</a>
                       <a target="_blank" title="新中式家具" href="#">新中式家具</a>
                       <a target="_blank" title="红木家具" href="#">红木家具</a>
                       <a target="_blank" title="做旧家具" href="#">做旧家具</a>
                       <a target="_blank" title="水曲柳家具" href="#">水曲柳家具</a>
                       <a target="_blank" title="田园风家具" href="#">田园风家具</a>
                       <a target="_blank" title="法式家具" href="#">法式家具</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="实木床" href="#">实木床</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="水垫床" href="#">水垫床</a>
                       <a target="_blank" title="松木实木床" href="#">松木实木床</a>
                       <a target="_blank" title="软体床" href="#">软体床</a>
                       <a target="_blank" title="高箱床" href="#">高箱床</a>
                       <a target="_blank" title="低箱床" href="#">低箱床</a>
                       <a target="_blank" title="储物床" href="#">储物床</a>
                       <a target="_blank" title="儿童实木床" href="#">儿童实木床</a>
                       <a target="_blank" title="板式床" href="#">板式床</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="床垫" href="#">床垫</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="榻榻米床垫" href="#">榻榻米床垫</a>
                       <a target="_blank" title="地铺睡垫" href="#">地铺睡垫</a>
                       <a target="_blank" title="环保棕垫" href="#">环保棕垫</a>
                       <a target="_blank" title="乳胶床垫" href="#">乳胶床垫</a>
                       <a target="_blank" title="天然乳胶床垫" href="#">天然乳胶床垫</a>
                       <a target="_blank" title="棕垫" href="#">棕垫</a>
                       <a target="_blank" title="打地铺垫" href="#">打地铺垫</a>
                       <a target="_blank" title="床垫子" href="#">床垫子</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="床头柜" href="#">床头柜</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="旧式床头柜" href="#">日式床头柜</a>
                       <a target="_blank" title="实木边柜" href="#">实木边柜</a>
                       <a target="_blank" title="卧室床头柜" href="#">卧室床头柜</a>
                       <a target="_blank" title="实木床边柜" href="#">实木床边柜</a>
                       <a target="_blank" title="简约床边柜" href="#">简约床边柜</a>
                       <a target="_blank" title="胡桃色边柜" href="#">胡桃色边柜</a>
                       <a target="_blank" title="懒人床边桌" href="#">懒人床边桌</a>
                       <a target="_blank" title="床边桌" href="#">床边桌</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="衣柜" href="#">衣柜</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="实木衣柜" href="#">实木衣柜</a>
                       <a target="_blank" title="组装衣柜" href="#">组装衣柜</a>
                       <a target="_blank" title="定制衣柜" href="#">定制衣柜</a>
                       <a target="_blank" title="整体衣柜" href="#">整体衣柜</a>
                       <a target="_blank" title="烤漆移门衣柜" href="#">烤漆移门衣柜</a>
                       <a target="_blank" title="整体大衣橱" href="#">整体大衣橱</a>
                       <a target="_blank" title="推拉门衣柜" href="#">推拉门衣柜</a>
                       <a target="_blank" title="收纳储物衣柜" href="#">收纳储物衣柜</a>
                     </li>
                  </ul>
               </div>
               <!--隐藏栏右侧div父元素-->
               <div class="dleft">
               <!--排行榜-->
                 <h6>排行榜</h6>
                  <div class="tag">
                     <a target="_blank" title="卧室套系" href="#">卧室套系</a>
                     <a target="_blank" title="实木床" href="#">实木床</a>
                     <a target="_blank" title="床垫" href="#">床垫</a>
                     <a target="_blank" title="床头柜" href="#">床头柜</a>
                     <a target="_blank" title="衣柜" href="#">衣柜</a>
                     <a target="_blank" title="斗柜" href="#">斗柜</a>
                     <a target="_blank" title="妆台镜/妆凳" href="#">妆台镜/妆凳</a>
                     <a target="_blank" title="穿衣镜/衣帽架" href="#">穿衣镜/衣帽架</a>
                     <a target="_blank" title="床尾凳" href="#">床尾凳</a>
                     <a target="_blank" title="榻榻米床" href="#">榻榻米床</a>
                  </div>
                 <!--图片-->
                 <a target="_blank" href="#" title="">
                    <img src="../jk_img/c2.jpg" alt="">
                 </a>
               </div>
           </div>
        </li>
                <!--第四个-->
        <li class="list-item-cat">
            <i class="itwo"></i>
            <router-link to="/products" title="餐厅家具">餐厅家具</router-link>
           <!--隐藏栏父元素div-->
           <div class="jiaa">
             <!--隐藏栏左侧div-->
               <div class="dul">
               <!--导航列表-->
                  <ul class="biliei">
                     <li class="bi">
                       <a target="_blank" title="餐厅家具" href="#">餐厅家具</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="餐桌" href="#">餐桌</a>
                       <a target="_blank" title="餐椅" href="#">餐椅</a>
                       <a target="_blank" title="餐边柜" href="#">餐边柜</a>
                       <a target="_blank" title="餐厅套装" href="#">餐厅套装</a>
                     </li>
                     <li class="bi">
                       <a target="_blank" title="餐桌" href="#">餐桌</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="实木餐桌" href="#">实木餐桌</a>
                       <a target="_blank" title="家用餐桌" href="#">家用餐桌</a>
                       <a target="_blank" title="实木餐桌椅" href="#">实木餐桌椅</a>
                       <a target="_blank" title="日式餐桌椅" href="#">日式餐桌椅</a>
                       <a target="_blank" title="藤椅餐桌" href="#">藤椅餐桌</a>
                       <a target="_blank" title="大理石餐桌" href="#">大理石餐桌</a>
                       <a target="_blank" title="水曲柳餐桌" href="#">水曲柳餐桌</a>
                       <a target="_blank" title="实木圆餐桌" href="#">实木圆餐桌</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="餐椅" href="#">餐椅</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="餐桌椅" href="#">餐桌椅</a>
                       <a target="_blank" title="靠背椅子" href="#">靠背椅子</a>
                       <a target="_blank" title="懒人餐椅" href="#">懒人餐椅</a>
                       <a target="_blank" title="火烧石餐桌椅" href="#">火烧石餐桌椅</a>
                       <a target="_blank" title="北欧实木餐椅" href="#">北欧实木餐椅</a>
                       <a target="_blank" title="大理石餐桌椅" href="#">大理石餐桌椅</a>
                       <a target="_blank" title="巴拉木椅子" href="#">巴拉木椅子</a>
                       <a target="_blank" title="实木餐椅" href="#">实木餐椅</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="餐边柜" href="#">餐边柜</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="实木餐边柜" href="#">实木餐边柜</a>
                       <a target="_blank" title="实用餐边柜" href="#">实用餐边柜</a>
                       <a target="_blank" title="禅意餐边柜" href="#">禅意餐边柜</a>
                       <a target="_blank" title="水曲柳边柜" href="#">水曲柳边柜</a>
                       <a target="_blank" title="北欧餐边柜" href="#">北欧餐边柜</a>
                       <a target="_blank" title="大理石餐边柜" href="#">大理石餐边柜</a>
                       <a target="_blank" title="欧式餐边柜" href="#">欧式餐边柜</a>
                       <a target="_blank" title="新古典橱柜" href="#">新古典橱柜</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="餐厅套装" href="#">餐厅套装</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="定制家具" href="#">定制家具</a>
                       <a target="_blank" title="实木家具" href="#">实木家具</a>
                       <a target="_blank" title="白橡木家具" href="#">白橡木家具</a>
                       <a target="_blank" title="橡木家具" href="#">橡木家具</a>
                       <a target="_blank" title="厨房隔断" href="#">厨房隔断</a>
                       <a target="_blank" title="家用餐桌椅子" href="#">家用餐桌椅子</a>
                       <a target="_blank" title="整体橱柜" href="#">整体橱柜</a>
                      </li>
                  </ul>
               </div>
               <!--隐藏栏右侧div父元素-->
               <div class="dleft">
               <!--排行榜-->
                 <h6>排行榜</h6>
                  <div class="tag">
                     <a class="_blank" title="餐桌" href="#">餐桌</a>
                     <a class="_blank" title="餐椅" href="#">餐椅</a>
                     <a class="_blank" title="餐边柜" href="#">餐边柜</a>
                     <a class="_blank" title="餐厅套装" href="#">餐厅套装</a>
                  </div>
                 <!--图片-->
                 <a target="_blank" href="#" title="">
                    <img src="../jk_img/c3.jpg" alt="">
                 </a>
               </div>
           </div>
        </li>
        <li class="list-item-cat">
            <i class="itwo"></i>
            <router-link to="/products" title="书房家具">书房家具</router-link>
                        <!--隐藏栏父元素div-->
           <div class="jiaa">
             <!--隐藏栏左侧div-->
               <div class="dul">
               <!--导航列表-->
                  <ul class="biliei">
                     <li class="bi">
                       <a target="_blank" title="书房家具" href="#">书房家具</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="书桌/书台" href="#">书桌/书台</a>
                       <a target="_blank" title="书柜/书架" href="#">书柜/书架</a>
                       <a target="_blank" title="书椅/转椅" href="#">书椅/转椅</a>
                       <a target="_blank" title="书房套系" href="#">书房套系</a>
                     </li>
                     <li class="bi">
                       <a target="_blank" title="书桌/书台" href="#">书桌/书台</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="实木书桌" href="#">实木书桌</a>
                       <a target="_blank" title="书桌" href="#">书桌</a>
                       <a target="_blank" title="人造板书桌" href="#">人造板书桌</a>
                       <a target="_blank" title="松木书桌" href="#">松木书桌</a>
                       <a target="_blank" title="双人书桌" href="#">双人书桌</a>
                       <a target="_blank" title="转角书桌" href="#">转角书桌</a>
                       <a target="_blank" title="连体书桌" href="#">连体书桌</a>
                       <a target="_blank" title="实木写字台" href="#">实木写字台</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="书柜/书架" href="#">书柜/书架</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="实木书柜" href="#">实木书柜</a>
                       <a target="_blank" title="书柜" href="#">书柜</a>
                       <a target="_blank" title="书桌书架" href="#">书桌书架</a>
                       <a target="_blank" title="落地书架" href="#">落地书架</a>
                       <a target="_blank" title="书架" href="#">书架</a>
                       <a target="_blank" title="实木书架" href="#">实木书架</a>
                       <a target="_blank" title="竹子书架" href="#">竹子书架</a>
                       <a target="_blank" title="简易书架" href="#">简易书架</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="书椅/转椅" href="#">书椅/转椅</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="电脑椅" href="#">电脑椅</a>
                       <a target="_blank" title="书椅" href="#">书椅</a>
                       <a target="_blank" title="休闲牛角椅" href="#">休闲牛角椅</a>
                       <a target="_blank" title="休闲书椅" href="#">休闲书椅</a>
                       <a target="_blank" title="家用电脑椅" href="#">家用电脑椅</a>
                       <a target="_blank" title="时尚电脑椅" href="#">时尚电脑椅</a>
                       <a target="_blank" title="旋转老板椅" href="#">旋转老板椅</a>
                       <a target="_blank" title="书桌椅" href="#">书桌椅</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="书桌套系" href="#">书房套系</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="黑板墙" href="#">黑板墙</a>
                       <a target="_blank" title="书店家具" href="#">书店家具</a>
                     </li>
                  </ul>
               </div>
               <!--隐藏栏右侧div父元素-->
               <div class="dleft">
               <!--排行榜-->
                 <h6>排行榜</h6>
                  <div class="tag">
                     <a target="_blank" title="书桌/书台" href="#">书桌/书台</a>
                     <a target="_blank" title="书柜/书架" href="#">书柜/书架</a>
                     <a target="_blank" title="书椅/转椅" href="#">书椅/转椅</a>
                     <a target="_blank" title="书房套系" href="#">书房套系</a>
                  </div>
                 <!--图片-->
                 <a target="_blank" href="#" title="">
                    <img src="../jk_img/c4.jpg" alt="">
                 </a>
               </div>
           </div>
        </li>
           <!--第六个-->
        <li class="list-item-cat">
            <i class="itwo"></i>
           <a href="#" target="_blank" title="儿童家具">儿童家具</a>
                        <!--隐藏栏父元素div-->
           <div class="jiaa">
             <!--隐藏栏左侧div-->
               <div class="dul">
               <!--导航列表-->
                  <ul class="biliei">
                     <li class="bi">
                       <a target="_blank" title="儿童家具" href="#">儿童家具</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="儿童床" href="#">儿童床</a>
                       <a target="_blank" title="儿童床垫" href="#">儿童床垫</a>
                       <a target="_blank" title="儿童床头柜" href="#">儿童床头柜</a>
                       <a target="_blank" title="儿童衣柜" href="#">儿童衣柜</a>
                       <a target="_blank" title="儿童桌" href="#">儿童桌</a>
                       <a target="_blank" title="儿童椅" href="#">儿童椅</a>
                       <a target="_blank" title="儿童柜类" href="#">儿童柜类</a>
                     </li>
                     <li class="bi">
                       <a target="_blank" title="儿童床" href="#">儿童床</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="双层床" href="#">双层床</a>
                       <a target="_blank" title="上下子母床" href="#">上下子母床</a>
                       <a target="_blank" title="儿童上下床" href="#">儿童上下床</a>
                       <a target="_blank" title="儿童高低床" href="#">儿童高低床</a>
                       <a target="_blank" title="子母床" href="#">子母床</a>
                       <a target="_blank" title="实木儿童床" href="#">实木儿童床</a>
                       <a target="_blank" title="女孩床" href="#">女孩床</a>
                       <a target="_blank" title="双人儿童床" href="#">双人儿童床</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="儿童床垫" href="#">儿童床垫</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="折叠乳胶床垫" href="#">折叠乳胶床垫</a>
                       <a target="_blank" title="椰棕床垫" href="#">椰棕床垫</a>
                       <a target="_blank" title="席梦思床垫" href="#">席梦思棕垫</a>
                       <a target="_blank" title="海绵垫" href="#">海绵垫</a>
                       <a target="_blank" title="加厚床垫" href="#">加厚床垫</a>
                       <a target="_blank" title="宿舍床垫" href="#">宿舍床垫</a>
                       <a target="_blank" title="海绵床垫" href="#">海绵床垫</a>
                       <a target="_blank" title="床褥地铺" href="#">床褥地铺</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="儿童床头柜" href="#">儿童床头柜</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="储物二斗柜" href="#">储物二斗柜</a>
                       <a target="_blank" title="地中海床头柜" href="#">地中海床头柜</a>
                       <a target="_blank" title="二斗柜" href="#">二斗柜</a>
                       <a target="_blank" title="小尺寸床头柜" href="#">小尺寸床头柜</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="儿童衣柜" href="#">儿童衣柜</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="衣柜平开门" href="#">衣柜平开门</a>
                       <a target="_blank" title="定制衣柜" href="#">定制衣柜</a>
                       <a target="_blank" title="衣柜门板" href="#">衣柜门板</a>
                       <a target="_blank" title="美式田园儿童衣柜" href="#">美式田园儿童衣柜</a>
                       <a target="_blank" title="公主衣柜" href="#">公主衣柜</a>
                       <a target="_blank" title="小孩衣柜" href="#">小孩衣柜</a>
                       <a target="_blank" title="韩式儿童衣柜" href="#">韩式儿童衣柜</a>
                       <a target="_blank" title="儿童实木衣柜" href="#">儿童实木衣柜</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="儿童桌" href="#">儿童桌</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="儿童书桌" href="#">儿童书桌</a>
                       <a target="_blank" title="儿童餐桌椅" href="#">儿童餐桌椅</a>
                       <a target="_blank" title="儿童电脑桌" href="#">儿童电脑桌</a>
                       <a target="_blank" title="中小学美术桌" href="#">中小学美术桌</a>
                       <a target="_blank" title="多功能学习桌" href="#">多功能学习桌</a>
                       <a target="_blank" title="带提柜学习桌" href="#">带梯柜学习桌</a>
                       <a target="_blank" title="儿童餐桌" href="#">儿童餐桌</a>
                       <a target="_blank" title="儿童桌子" href="#">儿童桌子</a>
                     </li>
                  </ul>
               </div>
               <!--隐藏栏右侧div父元素-->
               <div class="dleft">
               <!--排行榜-->
                 <h6>排行榜</h6>
                  <div class="tag">
                     <a target="_blank" title="儿童床" href="#">儿童床</a>
                     <a target="_blank" title="儿童床垫" href="#">儿童床垫</a>
                     <a target="_blank" title="儿童床头柜" href="#">儿童床头柜</a>
                     <a target="_blank" title="儿童衣柜" href="#">儿童衣柜</a>
                     <a target="_blank" title="儿童桌" href="#">儿童桌</a>
                     <a target="_blank" title="儿童椅" href="#">儿童椅</a>
                     <a target="_blank" title="儿童柜类" href="#">儿童柜类</a>
                  </div>
                 <!--图片-->
                 <a target="_blank" href="#" title="">
                    <img src="../jk_img/c5.jpg" alt="">
                 </a>
               </div>
           </div>
        </li>
        <!--第七个-->
        <li class="list-item-cat">
            <i class="itwo"></i>
           <a href="#" target="_blank" title="户外阳台">户外阳台</a>
                        <!--隐藏栏父元素div-->
           <div class="jiaa">
             <!--隐藏栏左侧div-->
               <div class="dul">
               <!--导航列表-->
                  <ul class="biliei">
                     <li class="bi">
                       <a target="_blank" title="户外阳台" href="#">户外阳台</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="户外桌" href="#">户外桌</a>
                       <a target="_blank" title="户外椅" href="#">户外椅</a>
                       <a target="_blank" title="户外套系" href="#">户外套系</a>
                       <a target="_blank" title="吊篮/吊椅" href="#">吊篮/吊椅</a>
                       <a target="_blank" title="秋千/摇椅" href="#">秋千/摇椅</a>
                       <a target="_blank" title="遮阳伞" href="#">遮阳伞</a>
                       <a target="_blank" title="藤艺家具" href="#">藤艺家具</a>
                       <a target="_blank" title="折叠床" href="#">折叠床</a>
                     </li>
                     <li class="bi">
                       <a target="_blank" title="户外桌" href="#">户外桌</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="靠墙折叠桌" href="#">靠墙折叠桌</a>
                       <a target="_blank" title="阳台小圆桌" href="#">阳台小圆桌</a>
                       <a target="_blank" title="阳台休闲桌椅" href="#">阳台休闲桌椅</a>
                       <a target="_blank" title="休闲桌椅" href="#">休闲桌椅</a>
                       <a target="_blank" title="户外折叠桌" href="#">户外折叠桌</a>
                       <a target="_blank" title="户外休闲桌椅" href="#">户外休闲桌椅</a>
                       <a target="_blank" title="户外实木桌子" href="#">户外实木桌子</a>
                       <a target="_blank" title="仿藤桌椅" href="#">仿腾桌椅</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="户外椅" href="#">户外椅</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="户外躺椅" href="#">户外躺椅</a>
                       <a target="_blank" title="户外桌椅" href="#">户外桌椅</a>
                       <a target="_blank" title="室外阳台桌椅" href="#">室外阳台桌椅</a>
                       <a target="_blank" title="阳台椅子" href="#">阳台椅子</a>
                       <a target="_blank" title="藤编椅子" href="#">藤编椅子</a>
                       <a target="_blank" title="背椅藤椅" href="#">背椅藤椅</a>
                       <a target="_blank" title="编制仿藤椅子" href="#">编织仿腾椅子</a>
                       <a target="_blank" title="藤椅沙发" href="#">藤椅沙发</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="户外套系" href="#">户外套系</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="阳台柜" href="#">阳台柜</a>
                       <a target="_blank" title="休闲家具" href="#">休闲家具</a>
                       <a target="_blank" title="花园庭院沙发" href="#">花园庭院沙发</a>
                       <a target="_blank" title="阳台藤编沙发" href="#">阳台藤编沙发</a>
                       <a target="_blank" title="户外庭院沙发" href="#">户外庭院沙发</a>
                       <a target="_blank" title="室外桌椅" href="#">室外桌椅</a>
                       <a target="_blank" title="户外铁艺桌椅" href="#">户外铁艺桌椅</a>
                       <a target="_blank" title="露天桌椅" href="#">露天桌椅</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="吊篮/吊椅" href="#">吊篮/吊椅</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="吊篮" href="#">吊篮</a>
                       <a target="_blank" title="吊篮藤椅" href="#">吊篮藤椅</a>
                       <a target="_blank" title="阳台摇篮椅" href="#">阳台摇篮椅</a>
                       <a target="_blank" title="家用秋千吊椅" href="#">家用秋千吊椅</a>
                       <a target="_blank" title="藤椅吊篮" href="#">藤椅吊篮</a>
                       <a target="_blank" title="成人鸟巢" href="#">成人鸟巢</a>
                       <a target="_blank" title="双人吊椅" href="#">双人吊椅</a>
                       <a target="_blank" title="休闲吊篮藤椅" href="#">休闲吊篮藤椅</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="秋千/摇椅" href="#">秋千/摇椅</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="秋千摇椅" href="#">秋千摇椅</a>
                       <a target="_blank" title="摇篮椅" href="#">摇篮椅</a>
                       <a target="_blank" title="户外秋千" href="#">户外秋千</a>
                       <a target="_blank" title="懒人摇篮椅" href="#">懒人摇篮椅</a>
                       <a target="_blank" title="秋千躺椅" href="#">秋千躺椅</a>
                       <a target="_blank" title="藤编摇椅" href="#">藤编摇椅</a>
                       <a target="_blank" title="秋千摇篮椅" href="#">秋千摇篮椅</a>
                       <a target="_blank" title="秋千吊篮" href="#">秋千吊篮</a>
                     </li>
                  </ul>
               </div>
               <!--隐藏栏右侧div父元素-->
               <div class="dleft">
               <!--排行榜-->
                 <h6>排行榜</h6>
                  <div class="tag">
                     <a target="_blank" title="户外桌" href="#">户外桌</a>
                     <a target="_blank" title="户外椅" href="#">户外椅</a>
                     <a target="_blank" title="户外套系" href="#">户外套系</a>
                     <a target="_blank" title="吊篮/吊椅" href="#">吊篮/吊椅</a>
                     <a target="_blank" title="秋千/摇椅" href="#">秋千/摇椅</a>
                     <a target="_blank" title="遮阳伞" href="#">遮阳伞</a>
                     <a target="_blank" title="藤椅家具" href="#">藤艺家具</a>
                     <a target="_blank" title="折叠床" href="#">折叠床</a>
                  </div>
                 <!--图片-->
                 <a target="_blank" href="#" title="">
                    <img src="../jk_img/c6.jpg" alt="">
                 </a>
               </div>
           </div>
        </li>
        <!--第八个-->
        <li class="list-item-cat">
            <i class="itwo"></i>
           <a href="#" target="_blank" title="办公家具">办公家具</a>
                         <!--隐藏栏父元素div-->
           <div class="jiaa">
             <!--隐藏栏左侧div-->
               <div class="dul">
               <!--导航列表-->
                  <ul class="biliei">
                     <li class="bi">
                       <a target="_blank" title="办公家具" href="#">办公家具</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="办公沙发" href="#">办公沙发</a>
                       <a target="_blank" title="办工桌" href="#">办公桌</a>
                       <a target="_blank" title="文件柜" href="#">文件柜</a>
                       <a target="_blank" title="办公椅" href="#">办公椅</a>
                       <a target="_blank" title="保险柜" href="#">保险柜</a>
                     </li>
                     <li class="bi">
                       <a target="_blank" title="办公沙发" href="#">办公沙发</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="皮沙发" href="#">皮沙发</a>
                       <a target="_blank" title="商务办公沙发" href="#">商务办公沙发</a>
                       <a target="_blank" title="西皮会客沙发" href="#">西皮会客沙发</a>
                       <a target="_blank" title="皮艺沙发" href="#">皮艺沙发</a>
                       <a target="_blank" title="洽谈沙发" href="#">洽谈沙发</a>
                       <a target="_blank" title="办公茶几" href="#">办公茶几</a>
                       <a target="_blank" title="办公沙发" href="#">办公沙发</a>
                       <a target="_blank" title="办公大班台" href="#">办公大班台</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="办公桌" href="#">办公桌</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="会议工作桌" href="#">会议工作桌</a>
                       <a target="_blank" title="职员办公桌" href="#">职员办公桌</a>
                       <a target="_blank" title="老榆木会议桌" href="#">老榆木会议桌</a>
                       <a target="_blank" title="老板办公桌" href="#">老板办公桌</a>
                       <a target="_blank" title="经理办公桌" href="#">经理办公桌</a>
                       <a target="_blank" title="现代电脑桌" href="#">现代电脑桌</a>
                       <a target="_blank" title="笔记本电脑桌" href="#">笔记本电脑桌</a>
                       <a target="_blank" title="钢化办公桌" href="#">钢化办公桌</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="文件柜" href="#">文件柜</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="办公资料柜" href="#">办公资料柜</a>
                       <a target="_blank" title="木质档案柜" href="#">木质档案柜</a>
                       <a target="_blank" title="打印机柜" href="#">打印机柜</a>
                       <a target="_blank" title="办公文件柜" href="#">办公文件柜</a>
                       <a target="_blank" title="木质办公柜" href="#">木质办公柜</a>
                       <a target="_blank" title="铁皮文件柜" href="#">铁皮文件柜</a>
                       <a target="_blank" title="档案柜" href="#">档案柜</a>
                       <a target="_blank" title="资料柜" href="#">资料柜</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="办公椅" href="#">办公椅</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="升降转椅" href="#">升降转椅</a>
                       <a target="_blank" title="转椅" href="#">转椅</a>
                       <a target="_blank" title="老板转椅" href="#">老板转椅</a>
                       <a target="_blank" title="升降椅" href="#">升降椅</a>
                       <a target="_blank" title="多功能折叠椅" href="#">多功能折叠椅</a>
                       <a target="_blank" title="弓形办公椅" href="#">弓形办公椅</a>
                       <a target="_blank" title="办公桌椅" href="#">办公桌椅</a>
                       <a target="_blank" title="职员电脑椅" href="#">职员电脑椅</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="保险柜" href="#">保险柜</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="带锁抽屉" href="#">带锁抽屉</a>
                       <a target="_blank" title="指纹保险箱" href="#">指纹保险箱</a>
                       <a target="_blank" title="迷你床头保险柜" href="#">迷你床头保险柜</a>
                       <a target="_blank" title="办公保险柜" href="#">办公保险柜</a>
                       <a target="_blank" title="电子密码保险箱" href="#">电子密码保险箱</a>
                       <a target="_blank" title="整体大衣橱" href="#">整体大衣橱</a>
                       <a target="_blank" title="推拉门衣柜" href="#">推拉门衣柜</a>
                       <a target="_blank" title="收纳储物衣柜" href="#">收纳储物衣柜</a>
                     </li>
                  </ul>
               </div>
               <!--隐藏栏右侧div父元素-->
               <div class="dleft">
               <!--排行榜-->
                 <h6>排行榜</h6>
                  <div class="tag">
                     <a target="_blank" title="办公沙发" href="#">办公沙发</a>
                     <a target="_blank" title="办公桌" href="#">办公桌</a>
                     <a target="_blank" title="文件柜" href="#">文件柜</a>
                     <a target="_blank" title="办公椅" href="#">办公椅</a>
                     <a target="_blank" title="保险柜" href="#">保险柜</a>
                  </div>
                 <!--图片-->
                 <a target="_blank" href="#" title="">
                    <img src="../jk_img/c7.jpg" alt="">
                 </a>
               </div>
           </div>
        </li> 
        <!--第九个--> 
        <li class="list-item-cat">
            <i class="itwo"></i>
           <a href="#" target="_blank" title="多功能家具">多功能家具</a>
                        <!--隐藏栏父元素div-->
           <div class="jiaa">
             <!--隐藏栏左侧div-->
               <div class="dul">
               <!--导航列表-->
                  <ul class="biliei">
                     <li class="bi">
                       <a target="_blank" title="多功能家具" href="#">多功能家具</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="多功能柜类" href="#">多功能柜类</a>
                       <a target="_blank" title="行军床" href="#">行军床</a>
                       <a target="_blank" title="沙发隐形床" href="#">沙发隐形床</a>
                       <a target="_blank" title="书桌隐形床" href="#">书桌隐形床</a>
                       <a target="_blank" title="多功能茶几" href="#">多功能茶几</a>
                       <a target="_blank" title="书架隐形床" href="#">书架隐形床</a>
                       <a target="_blank" title="双层隐形床" href="#">双层隐形床</a>
                       <a target="_blank" title="壁床" href="#">壁床</a>
                     </li>
                     <li class="bi">
                       <a target="_blank" title="多功能柜类" href="#">多功能柜类</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="多功能梳妆台" href="#">多功能梳妆台</a>
                       <a target="_blank" title="多功能衣柜" href="#">多功能衣柜</a>
                       <a target="_blank" title="多功能折叠家具" href="#">多功能折叠家具</a>
                       <a target="_blank" title="多功能鞋柜" href="#">多功能鞋柜</a>
                       <a target="_blank" title="可折叠桌子" href="#">可折叠桌子</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="行军床" href="#">行军床</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="折叠午休床" href="#">折叠午休床</a>
                       <a target="_blank" title="多功能折叠床" href="#">多功能折叠床</a>
                       <a target="_blank" title="折叠单人床" href="#">折叠单人床</a>
                       <a target="_blank" title="创意折叠家具" href="#">创意折叠家具</a>
                       <a target="_blank" title="军用床" href="#">军用床</a>
                       <a target="_blank" title="便携式行军床" href="#">便携式行军床</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="沙发隐形床" href="#">沙发隐形床</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="隐形床" href="#">隐形床</a>
                       <a target="_blank" title="多功能沙发" href="#">多功能沙发</a>
                       <a target="_blank" title="侧翻床" href="#">侧翻床</a>
                       <a target="_blank" title="折叠床沙发" href="#">折叠床沙发</a>
                       <a target="_blank" title="多功能沙发床" href="#">多功能沙发床</a>
                       <a target="_blank" title="可折叠沙发床" href="#">可折叠沙发床</a>
                       <a target="_blank" title="三人沙发床" href="#">三人沙发床</a>
                       <a target="_blank" title="功能沙发床" href="#">功能沙发床</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="书桌隐形床" href="#">书桌隐形床</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="连体书桌柜" href="#">连体书桌柜</a>
                       <a target="_blank" title="儿童衣柜床" href="#">儿童衣柜床</a>
                       <a target="_blank" title="多功能衣柜床" href="#">多功能衣柜床</a>
                       <a target="_blank" title="多功能书柜" href="#">多功能书柜</a>
                       <a target="_blank" title="多功能电脑台" href="#">多功能电脑台</a>
                     </li>
                      <li class="bi">
                       <a target="_blank" title="多功能茶几" href="#">多功能茶几</a>
                     </li>
                     <li class="bei">
                       <a target="_blank" title="可升降茶几" href="#">可升降茶几</a>
                       <a target="_blank" title="多功能茶几" href="#">多功能茶几</a>
                       <a target="_blank" title="智能茶几" href="#">智能茶几</a>
                       <a target="_blank" title="两用茶几" href="#">两用茶几</a>
                     </li>
                  </ul>
               </div>
               <!--隐藏栏右侧div父元素-->
               <div class="dleft">
               <!--排行榜-->
                 <h6>排行榜</h6>
                  <div class="tag">
                     <a target="_blank" title="多功能柜类" href="#">多功能柜类</a>
                     <a target="_blank" title="行军床" href="#">行军床</a>
                     <a target="_blank" title="沙发隐形床" href="#">沙发隐形床</a>
                     <a target="_blank" title="书桌隐形床" href="#">书桌隐形床</a>
                     <a target="_blank" title="多功能茶几" href="#">多功能茶几</a>
                     <a target="_blank" title="书架隐形床" href="#">书架隐形床</a>
                     <a target="_blank" title="双层隐形床" href="#">双层隐形床</a>
                     <a target="_blank" title="壁床" href="#">壁床</a>
                  </div>
                 <!--图片-->
                 <a target="_blank" href="#" title="">
                    <img src="jk_img/c8.jpg" alt="">
                 </a>
               </div>
           </div>
        </li>         
     </ul>
       </div>
       <!--导航栏列表-->
       <ul class="navbar">
         <li><router-link to="/" title="首页">首页</router-link></li>
         <li><router-link to="/products" title="卧室家具">卧室家具</router-link></li>
         <li><router-link to="/products" title="卧室家具">客厅家具</router-link></li>
         <li><router-link to="/products" title="卧室家具">餐厅家具</router-link></li>
         <li><router-link to="/products" title="卧室家具">书房家具</router-link></li>
         <li><router-link to="/products" title="卧室家具">儿童家具</router-link></li>
         <li><router-link to="/products" title="卧室家具">办公家具</router-link></li>
         <li><router-link to="/products" title="卧室家具">家具排行榜</router-link></li>
       </ul>
    </div>
  </div>
 
   </div>
</template>

<script>
  import {Toast} from "mint-ui"
  export default {
    data(){
      return{
        login:true,
          city:[],
          zim:[],
          cityA:[],
          cityB:[],
          cityC:[],
          cityD:[],
          cityE:[],
          cityF:[],
          cityG:[],
          cityH:[],
          cityJ:[],
          cityK:[],
          cityL:[],
          cityM:[],
          cityN:[],
          cityP:[],
          cityQ:[],
          cityR:[],
          cityS:[],
          cityT:[],
          cityW:[],
          cityX:[],
          cityY:[],
          cityZ:[],
          uname:''
      }
    },
    methods: {
        citys(){
            var url="http://localhost:3000/rscity";
            this.axios.get(url).then((result)=>{
                this.city=result.data
            })
        },
        zi(){
           var url="http://localhost:3000/rscity/zi";
            this.axios.get(url).then((result)=>{
                this.zim=result.data;
            }) 
        },
        cityziz(){
          var url="http://localhost:3000/rscity/zizi";
            this.axios.get(url).then((result)=>{
                this.cityA=result.data.A;
                this.cityB=result.data.B;
                this.cityC=result.data.C;
                this.cityD=result.data.D;
                this.cityE=result.data.E;
                this.cityF=result.data.F;
                this.cityG=result.data.G;
                this.cityH=result.data.H;
                this.cityJ=result.data.J;
                this.cityK=result.data.K;
                this.cityL=result.data.L;
                this.cityM=result.data.M;
                this.cityN=result.data.N;
                this.cityP=result.data.P;
                this.cityQ=result.data.Q;
                this.cityR=result.data.R;
                this.cityS=result.data.S;
                this.cityT=result.data.T;
                this.cityW=result.data.W;
                this.cityX=result.data.X;
                this.cityY=result.data.Y;
                this.cityZ=result.data.Z;
            }) 
        },
        click(){
          $(function(){
            $("ul.ul_city1>li>a").click(function(){
             	$("li.city>span").html($(this).html());
        })
          })
        },
        names(){
            var url="http://localhost:3000/rscity/name";
            this.axios.get(url).then((result)=>{
                if(result.data.code == 1){
                  this.uname=result.data.result[0].uname 
                    this.login=false
                }else{
                  this.uname=""
                  this.login=true;
                }
            }) 
        },
        btns(){
           var url="http://localhost:3000/rscity/tui";
           this.axios.get(url).then((result)=>{
             if(result.data.code== -1){
                setTimeout(()=>{
                   this.uname="",
                   this.login=true;
                   this.$router.push("/login")
                },3000)
               Toast("退出成功")
             }
           })
        }
    },
    created(){
        this.citys();
        this.zi();
        this.cityziz();
        this.names()
    }
  }

</script>
<style scoped>
*{margin:0;padding:0;}
ul{list-style: none;}
a{text-decoration: none;}
.body1{
    border-bottom: 3px solid #f00;
}
/* 头部顶端底座 */
div.headers{
   width:100%;
   height:30px;
   background: #f8f8f8;
}
/* 头部内容父元素 */
div.header1{
    width:1200px;
    height:30px;
    margin: 0 auto;
    display:flex;
    justify-content: space-between;
}
/* 左侧ul */
div.header1>ul{
    width:350px;
    height:30px;
    display: flex;
}
/* 给每个li设置浮动 */
.header1>ul>li{  
    height:30px;
    line-height:28px;
    float:left;
    margin-right:3px;}
 /* 定位图标 */
li.city>p{
         width:11px;height:14px;
        background:url(../jk_img/1.png) 0 -38px;
         overflow:hidden;
        display: inline-block;
        margin:7px 5px -2px 0;
}
.city span{
  display: inline-block;
  width:50px;
}
#cityz{
    position: relative;
}
/* 鼠标显示效果 */
#cityz:hover>#citys{
    display:block;
     position: absolute;
    top:30px;left:-50px;
}
/* 下拉菜单 */
#citys{
    width:450px;height:auto;
    display: none;
   
    background: #ffffff;
    border:0.5px solid #ccc;
    border-radius: 3px;
    opacity: 1;
    box-shadow: 0 1px 5px 0 rgba(0,0,0,.1);
    z-index: 999;
}
/* 下拉菜单顶端小三角 */
.city-up{
    width: 13px;
    height: 8px;
    position: absolute;
    left: 160px;
    margin-left: -75px;
    top: -8px;
    background: url(../jk_img/tri_up.png) center no-repeat;
}
/* 下拉菜单热门城市栏 */
.area-wrap{
    padding:10px 20px;
}
/* 下拉菜单热门城市字体 */
span>strong{
    color:#717171;
    font-size:13px;
    font-weight: bold;
}
/* 下拉菜单a标签字体样式 */
div.re>a{
    color:#717171;
    font-size:11px;
    margin-right: 3px;
}
/* 下拉菜单a标签字体鼠标悬停样式 */
.area-wrap>div>a:hover{
    color: #fff;
    background-color: #f36;
}
/* 下拉菜单字母div属性 */
div.area{
    margin-left:5px;
    margin-top:5px; 
    border-bottom: 1px solid #e9e9e9;
    padding-bottom: 10px;
}
/* 下拉菜单字母字体样式 */
div>a.area-letter{
    color:#717171;
    font-size:11px;
    margin-right:5px;
    
}
/* 下拉菜单城市列表 */
.cityl{
    height:150px;
    margin-top:10px;
    overflow-x:hidden; 
    overflow-y:scroll; 
}
/* 城市列表前字母 */
.citynav{
    width:20px;
    height:20px;
    border-radius:50%;
    background:#ccc;
    display: inline-block;
    text-align: center;
    line-height: 20px;
    color:#fff;
}
/* 城市列表字体样式 */
.cityl>ul>li>a{
    color:#717171;
    font-size:11px;
    padding: 3px;
}
/* 城市列表鼠标属性 */
.cityl>ul>li>a:hover{
    color: #fff;
    background-color: #f36;
}

/* 字体样式 */
li.city>span{
    width:60px;
    font-size:12px;
    font-weight:bold;
    color:#f00;
}
/* 字体样式 */
li>a,div.item{
    font-size:14px;
    padding: 0 8px;
    color:#717171;
    line-height: 30px;
}
/*下部导航栏父元素 */
.headerz{
    width:1200px;
    height:120px;
    margin:0 auto;
    position: relative;
}
/* logo图片 */
.logo{
    width:228px;
    height:82px;
    display: block;
    position:absolute;
    top: 25px;left:0px;
}
.logo:hover{
    opacity: .8;
}
/* 搜索框 */
form>.input{
    width:380px;
    height:16px;
    border:3px solid #cf000e;
    position:absolute;
    top:30px;left:420px;
    padding:6px 10px;
}
ul.form1{
    width:406px;
    height:auto;
    position:absolute;
    top:65px;left:420px;
    background:#fff;
    display: none;
    z-index:200;
}
ul.form1>li>a{
    display: block;
    width:390px;
    height:30px;
    color:#000;
    font-size: 13px;
    border-bottom: 1px dotted #ccc;
}
ul.form1>li>a:hover{
    background:#c8c8c8;
}
form>.input:focus+ul{
    display: block;
}
/* 搜索按钮 */
form>.a{
    display:inline-block;
    width:90px;
    height:28px;
    position: absolute;
    top:30px;left:820px;
    background:#b6000c;
    border:3px solid #cf000e;
    color:#fff;
    text-align: center;
    line-height: 25px;
    font-size: 16px;
    letter-spacing: 5px;
    font-family: Microsoft YaHei,Arial;
}
/* 搜索框下方推荐 */
.tui{
    width:331px;
    height:24px;
    position:absolute;
    top:72px;left:420px;
}
/* 推荐字体 */
.tui>a{
    font-size: 14px;
    padding-right: 12px;
    color:#999999;
}
/* 购物车按钮 */
.sshopping{
    width:140px;
    height:29px;
    position: absolute;
    top:30px;left:930px;
    border:3px solid #cf000e;
    text-align: center;
}
/* 我的购物车字体 */
.sshopping>a{
    display:inline-block;
    line-height:30px;
    color:#cf000e;
    font-size:13px;
}
/* 字体hover效果 */
.sshopping>a:hover{
    opacity: .8;
}
/* 购物车数字 */
.sshopping-num{
    padding: 3px 6px;
    border-radius: 20px;
    position: absolute;
    top: -11px;
    right: 10px;
    text-align: center;
    color: #fff;
    background: #ff8f16;
    font-weight: 700;
    line-height: 14px;
    display: none;
}
/* 导航栏父元素 */
.nav{
    width:1200px;
    height:36PX;
    margin:0 auto;
    display:flex;
}
/* 导航栏 */
div>ul.navbar{
    width:1000px;
    height:36px;
    display: flex;
}
/* 导航栏li */
div>ul.navbar>li{
    width:auto;
    height:36px;
    padding-left:20px; 
}
/* 导航栏字体 */
div>ul.navbar>li>a{
    font-weight:600;
    line-height:40px;
}

/* 商品详情父元素 */
.shang{
    width:200px;
    z-index: 100;
     position: relative;
}
/* 商品详情字体 */
.nav>div>p{
    width:200px;
    height:36px;
    background:#cf000e;
    text-align: center;
    font-size:15px;
    line-height: 36px;
    font-weight: bold;
    color:#fff;
}
div.shang>span{
    position: absolute;
    top: 16px;
    right: 54px;
    width: 11px;
    height: 7px;
    background: url(../jk_img/123.png) -13px -254px no-repeat;
    overflow:hidden;
}
/* 商品详情鼠标 */
.nav>div>p:hover{
    cursor: pointer;
}
/* 商品详情下方详情ul */
.navs{
    width:200px;
    position: absolute;
    display: none;
    min-height: 460px;
    background: rgba(0,0, 0, 0.8);
    z-index: 101;
}
div.shang:hover ul.navs{
   display:block;
}
/* 商品分类li宽高 */
.navs>li{
   height:34px;
   line-height: 34px;
   transition:0.5s; 
}
/* 家具图片 */
.ione{
    width:20px;
    height:20px;
    float: left;
    margin:6px 0px 0 10px;
    background:url(../jk_img/navs.png) -20px -167px no-repeat;
}
/* 剩下图片 */
.itwo{
    width:20px;
    height:20px;
    float: left;
    margin:6px 0px 0 10px;
    background:url(../jk_img/navs.png) -20px -144px no-repeat;  

}
/* a标签属性 */
.navs>li>a{
    display:inline-block;
    color:#c8c8c8;
    font-size:13px;
}
/* 鼠标li效果 */
.navs>li:hover{
    background:#f8f8f8;
    padding-left:10px;
}
/* 鼠标li图标效果 */
.navs>li:hover i{
    background:url(../jk_img/navs.png) 0px   -144px no-repeat;  
}
/* 鼠标li图标效果 */
.navs>li:hover i.ione{
    background:url(../jk_img/navs.png) 0px   -167px no-repeat;  
}
/* 鼠标li时字体颜色 */
.navs>li:hover a{
    color:#000;
}
/* 鼠标a时字体颜色 */
.navs>li>a:hover{
    color:#f00;
}
/* 隐藏商品栏属性 */
div.jia,div.jiaa{
    width:775px;
    height:440px;
    background: rgba(255,255,255,0.9);
    display: none;
    position: absolute;
    left:200px;top:0px;
    padding-top:20px;
}
/* 隐藏商品栏显示*/
.navs>li.list-item:hover .jia{
    display:inline-block;  
}
/* 家具隐藏栏ul */
ul.bilie{
    width:520px;
    height:85px;
    display: flex;
    flex-wrap:wrap;
}
/* 家具隐藏栏ul标题li */
li.bi{
    width:93px;
    font-size:13px;
    font-weight: 700; 
}
/* 字体效果 */
li.bi:hover a{
    color:#f00;
}
/* 家具隐藏栏列表ul */
li.lie{
    width:405px;
    line-height: 13px;
    padding-bottom:20px;
    border-bottom:1px dotted #f00;
}
/* 列表li下的a标签 */
li.lie>a{ 
    width:auto;
    height:10px;
    font-size:11px;
    display: inline-block;    
}
/* 第二个往下隐藏栏 宽度*/
div.jiaa{
    width:650px;
}
/* 显示隐藏栏 */
.navs>li.list-item-cat:hover .jiaa{
    display:inline-block;
    display: flex;  
}
/* 隐藏栏左侧父元素 */
div.dul{
    width:405px;
}
/* 隐藏栏左侧商品内容 */
ul.biliei{
    width:410px;
    height:85px;
    display: flex;
    flex-wrap:wrap;
}
/* 左侧商品内容 */
li.bei{
    width:310px;
    line-height: 12px;
    padding-bottom:20px; 
    border-bottom:1px dotted #f00;
}
/* 左侧商品内容a */
li.bei>a{
    width:auto;
    height:10px;
    font-size: 11px;
    display: inline-block;
}
/* 隐藏栏右边父元素 */
div.dleft{
    width:200px;
    float:right;
    padding-left:15px; 
}
/* 排行榜 */
div.tag{
    width:auto;
    height:88px;
    margin-top:10px;
    line-height:20px;
    margin-bottom: 20px;
}
/* 排行榜字体样式 */
div.tag>a{
    font-size: 12px;
    margin-right:15px;
    display: inline-block;
}
/* 商品详情所有a标签hover效果  */
.navs a:hover{
   opacity: .8;
}
</style>