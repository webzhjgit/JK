<template>
<div>
    <Header></Header>
    <!-- 轮播图 -->
  <el-carousel :interval="5000" arrow="always" class="el">
       <el-carousel-item v-for="c of carou" :key="c.cid" class="elit">
           <img :src="c.cimg" alt="" class="imgs">
       </el-carousel-item>
  </el-carousel>
   <!--导购介绍-->
   <div class="F0">
   <!--第一个-->
      <div class="t1" bgcolor="#f7f2ee">
      <!--字体-->
         <div class="aa">
         <a href="#"  target="_blank">
           <p>团购</p>
           <p>低价成团 限时限售</p>
         </a>
         </div>
         <!--图片-->
         <img src="../jk_img/u1.jpg" alt="">
      </div>
      <!--第二个-->
      <div class="t1">
      <!--字体-->
          <div class="aa">
         <a href="#"  target="_blank">
           <p>新品</p>
           <p>新品特惠 每周更新</p>
         </a>
         </div>
         <!--图片-->
         <img src="../jk_img/u2.jpg" alt="">
      </div>
      <!--第三个-->
      <div class="t1">
      <!--字体-->
          <div class="aa">
         <a href="#"  target="_blank">
           <p>简美</p>
           <p>热销套系 惊喜汇聚</p>
         </a>
         </div>
         <!--图片-->
         <img src="../jk_img/u3.jpg" alt="">
      </div>
      <!--第四个-->
      <div class="t1" bgcolor="#e4f0f0">
      <!--字体-->
         <div class="aa">
         <a href="#" target="_blank">
           <p>北欧</p>
           <p>原木生活 回归本真</p>
         </a>
         </div>
         <!--图片-->
         <img src="../jk_img/u4.jpg" alt="">
      </div>
   </div> 
   <!--1F-->
   <div class="F1" v-for="l of lou" :key="l.rid">
      <!--标题-->
      <div class="f1">
         <!--标题介绍-->
        <h3>
        <a style='color:black target="_blank"' href="#" title="">{{l.lou}}</a>
        </h3>
        <!--精品推荐-->
        <div class="jing">
          精品推荐
        </div>
        <!--商品介绍-->
        <div class="Js">
           <a href="#"  target="_blank" title="明式家具">明式家具</a>
           <a href="#"  target="_blank" title="阳台家具">阳台家具</a>
           <a href="#"  target="_blank" title="白色家具">白色家具</a>
           <a href="#"  target="_blank" title="名牌家具">名牌家具</a>
           <a href="#"  target="_blank" title="整体家居">整体家居</a>
           <a href="#"  target="_blank" title="精品家居">精品家居</a>
        </div>
      </div>
      <!--图片-->
      <div class="f2">
      <!--左-->
         <div class="left-a">
         <a href="#" target="_blank">
          <img :src="l.biao" alt="">
         </a>
            
            <div class="left-b">
              <a href="#"  target="_blank" title="卧室套系">卧室套系</a>
              <a href="#"  target="_blank" title="实木床">实木床</a>
              <a href="#"  target="_blank" title="床垫">床垫</a>
              <a href="#"  target="_blank" title="床头柜">床头柜</a>
              <a href="#"  target="_blank" title="衣柜">衣柜</a>
              <a href="#"  target="_blank" title="斗柜">斗柜</a>
              <a href="#"  target="_blank" title="妆台镜/妆">妆台镜/妆</a>
              <a href="#"  target="_blank" title="穿衣镜/衣">穿衣镜/衣</a>  
            </div>
         </div>
      <!--右-->   
         <div class="right-a">
           <!--上-->
             <div class="right-b"> 
             <!--左-->
               <div class="right-b1">
               <!--商品介绍价钱-->
                  <div class="right-b11">
                      <router-link to="/detalis?pid=1" :title="l.yitit">
                       <span>
                         {{l.yitit}}
                       </span>
                       <p>
                         ￥
                         <span>{{l.yipri}}</span>
                       </p>
                     </router-link>
                  </div>
                  <!--商品图片-->
                  <div class="s23">
                   <router-link to="/detalis?pid=1">
                      <img :src="l.yiimg" alt="">
                    </router-link>
                  </div>  
               </div>
               <!--中-->
               <div class="right-b2">
                 <!--商品介绍价钱-->
                 <ul class="right-b21">
                   <li>
                    <router-link to="/detalis?pid=2" :title="l.ertit">
                     <span>
                      {{l.ertit}}
                     </span>
                  </router-link>
                  </li>
                   <li>
                       <router-link to="/detalis?pid=2" :title="l.erpri">¥{{l.erpri}}</router-link>
                   </li>
                 </ul>
                 <!--商品图片-->
                 <div>
                   <router-link to="/detalis?pid=2">  
                     <img :src="l.erimg" alt="">
                   </router-link>
                 </div>
               </div>
               <!--右-->
               <div class="right-b3">
                  <!--右上图片-->
                  <div class="right-b31">
                      <!--商品介绍价钱-->
                    <ul class="right-b311">
                      <li>
                        <router-link to="/detalis?pid=3" :title="l.satit">  
                          <span>
                          {{l.satit}}
                          </span>
                        </router-link>
                      </li>
                      <li>
                          <router-link to="/detalis?pid=3" :title="l.sapri">{{l.sapri}}</router-link>  
                      </li>
                    </ul>
                 <!--商品图片-->
                   <div>
                       <router-link to="/detalis?pid=3">  
                         <img :src="l.saimg" alt="">
                       </router-link>
                   </div>
                  </div>
                  <!--右下图片-->
                  <div class="right-b31">
                      <ul class="right-b311">
                      <li>
                        <router-link to="/detalis?pid=4" :title="l.sitit">  
                          <span>
                          {{l.sitit}}
                          </span>
                         </router-link>
                      </li>
                      <li>
                          <router-link to="/detalis?pid=4" :title="l.sitit">¥{{l.sipri}}</router-link>  
                      </li>
                    </ul>
                 <!--商品图片-->
                   <div>
                     <router-link to="/detalis?pid=4">  
                       <img :src="l.siimg" alt="">
                     </router-link>
                   </div>
                  </div>
               </div>  
             </div>
           <!--下-->
           <ul class="right-e">
              <li class="right-e1">
                 <ul class="right-b311 right-e3">
                      <li>
                        <router-link to="/detalis?pid=5" :title="l.wutit"> 
                          <span>
                          {{l.wutit}}
                          </span>
                        </router-link>
                      </li>
                      <li>
                          <router-link to="/detalis?pid=5" :title="l.wupri">¥{{l.wupri}}</router-link>  
                      </li>
                    </ul>
                    <div>
                     <router-link to="/detalis?pid=5">  
                        <img :src="l.wuimg" alt="">
                    </router-link>
                   </div>
              </li>
              <li class="right-e1">
                 <ul class="right-b311 right-e3">
                      <li>
                        <router-link to="/detalis?pid=6" :title="l.litit">  
                          <span>
                          {{l.litit}}
                          </span>
                        </router-link>
                      </li>
                      <li>
                          <router-link to="/detalis?pid=6" :title="l.lipri">¥{{l.lipri}}</router-link>  
                      </li>
                    </ul>
                    <div>
                     <router-link to="/detalis?pid=6">  
                        <img :src="l.liimg" alt="">
                     </router-link>
                   </div>
              </li>
               <li class="right-e1">
                 <ul class="right-b311 right-e3">
                      <li>
                          <router-link to="/detalis?pid=7" :title="l.qitit">
                             <span>
                               {{l.qitit}}
                             </span>
                          </router-link>  
                      </li>
                      <li>
                          <router-link to="/detalis?pid=7" :title="l.qipri">¥{{l.qipri}}</router-link>  
                       </li>
                    </ul>
                    <div>
                     <router-link to="/detalis?pid=7">  
                        <img :src="l.qiimg" alt="">
                     </router-link>
                   </div>
              </li>
               <li class="right-e1">
                 <ul class="right-b311 right-e3">
                      <li>
                        <router-link to="/detalis?pid=8" :title="l.batit">  
                          <span>
                           {{l.batit}}
                          </span>
                        </router-link>
                      </li>
                      <li>
                          <router-link to="/detalis?pid=8" :title="l.bapri">
                            ¥{{l.bapri}}
                          </router-link>  
                       </li>
                    </ul>
                    <div>
                    <router-link to="/detalis?pid=8">
                        <img :src="l.baimg" alt="">
                    </router-link>  
                   </div>
              </li>
           </ul>  
         </div>
      </div>
   </div>
   <!-- 提示 -->
   <div class="tit">
     <!-- 第一个左边子元素 -->
       <div class="tit1">
         <!-- 最新文章 -->
           <div class="tit11">
              <span @mouseover="mouse()"><a href="javascript:;">最新文章</a></span>
              <span @mousemove="over()"><a href="javascript:;">最新问答</a></span>
           </div>
     <div class="title1" id="title13">    
       <div id="title11">
           <!-- 左侧ul -->
           <ul class="tit12">
              <li>• <a href="#" target="_blank" title="装修一个北欧三居室,收纳很不错而且很漂亮">装修一个北欧三居室,收纳很不错而且很漂亮</a></li>
              <li>• <a href="#" target="_blank" title="装修轻奢新中式,生活本该这么精致">装修轻奢新中式,生活本该这么精致</a></li>
              <li>• <a href="#" target="_blank" title="客厅不够怎么办？那就把茶几给舍去吧">客厅不够怎么办？那就把茶几给舍去吧</a></li>
              <li>• <a href="#" target="_blank" title="客厅茶几有妙用，增加风水运势">客厅茶几有妙用，增加风水运势</a></li>
              <li>• <a href="#" target="_blank" title="客厅茶几的风水有哪些需要注意的地方?不懂得小伙伴可以参考哦">客厅茶几的风水有哪些需要注意的地方?不懂得小伙伴可以参考哦</a></li>
              <li>• <a href="#" target="_blank" title="我家东西太多,可能只有这样的电视柜能解放客厅">我家东西太多,可能只有这样的电视柜能解放客厅</a></li>
              <li>• <a href="#" target="_blank" title="客厅最上档次,充满情调的餐厅,阳台很实用,堪称完美">客厅最上档次,充满情调的餐厅,阳台很实用,堪称完美</a></li>
              <li>• <a href="#" target="_blank" title="不同的风格组合柜，你家的客厅改换脸了">不同的风格组合柜，你家的客厅改换脸了</a></li>
              <li>• <a href="#" target="_blank" title="破旧不堪的老屋,已经变成了暖心小宅">破旧不堪的老屋,已经变成了暖心小宅</a></li>
              <li>• <a href="#" target="_blank" title="对自己的客厅不满意?这几个方法让它大变样">对自己的客厅不满意?这几个方法让它大变样</a></li>
           </ul>
           <!-- 右侧ul -->
           <ul class="tit13">
              <li>• <a href="#" target="_blank" title="怎么摆放客厅电视柜?客厅电视柜摆放效果图">怎么摆放客厅电视柜?客厅电视柜摆放效果图</a></li>
              <li>• <a href="#" target="_blank" title="教会你如何选择客厅电视柜，不懂的朋友可以看看">教会你如何选择客厅电视柜，不懂的朋友可以看看</a></li>
              <li>• <a href="#" target="_blank" title="客厅电视柜这样装,时尚还漂亮又实用">客厅电视柜这样装,时尚还漂亮又实用</a></li>
              <li>• <a href="#" target="_blank" title="让家瞬间亮起来的电视背景墙，喜欢背景墙的可以来看看">让家瞬间亮起来的电视背景墙，喜欢背景墙的可以来看看</a></li>
              <li>• <a href="#" target="_blank" title="茶几与电视柜搭配方案，这样的客厅最百搭">茶几与电视柜搭配方案，这样的客厅最百搭</a></li>
              <li>• <a href="#" target="_blank" title="个性定制电视柜,让您的客厅更具创意">个性定制电视柜,让您的客厅更具创意</a></li>
              <li>• <a href="#" target="_blank" title="80后最爱的客厅装修设计，不知道怎么装修的可以参考一下">80后最爱的客厅装修设计，不知道怎么装修的可以参考一下</a></li>
              <li>• <a href="#" target="_blank" title="客厅不需要电视柜,简单宽敞好多哦">客厅不需要电视柜,简单宽敞好多哦</a></li>
              <li>• <a href="#" target="_blank" title="她把客厅刷成柔水蓝,阳光法式3房,看着都觉得幸福">她把客厅刷成柔水蓝,阳光法式3房,看着都觉得幸福</a></li>
              <li>• <a href="#" target="_blank" title="客厅电视柜风水需注意,弄错一步,毁一套房">客厅电视柜风水需注意,弄错一步,毁一套房</a></li>
           </ul>
       </div>
       <div id="title12">
        <!-- 左侧ul -->
        <ul class="tit12">
           <li>• <a href="#" target="_blank" title="直接在刷了乳胶漆的墙面上贴墙纸可以吗?">直接在刷了乳胶漆的墙面上贴墙纸可以吗?</a></li>
           <li>• <a href="#" target="_blank" title="装修墙面是用乳胶漆还是用墙纸好?">装修墙面是用乳胶漆还是用墙纸好?</a></li>
           <li>• <a href="#" target="_blank" title="家里大面积装修,用墙纸好还是乳胶漆好?各有什么优缺点?">家里大面积装修,用墙纸好还是乳胶漆好?各有什么优缺点?</a></li>
           <li>• <a href="#" target="_blank" title="请问装修房子是乳胶漆好还是墙纸好?">请问装修房子是乳胶漆好还是墙纸好?</a></li>
           <li>• <a href="#" target="_blank" title="我家新房子装修,是贴墙纸好还是刷漆好?">我家新房子装修,是贴墙纸好还是刷漆好?</a></li>
           <li>• <a href="#" target="_blank" title="刷了乳胶漆的墙面是贴墙纸好还是墙布好?">刷了乳胶漆的墙面是贴墙纸好还是墙布好?</a></li>
           <li>• <a href="#" target="_blank" title="请问装修房子是用墙纸好还是乳胶漆好?">请问装修房子是用墙纸好还是乳胶漆好?</a></li>
           <li>• <a href="#" target="_blank" title="房子装修墙面是用乳胶漆好还是墙纸墙布好呢?">房子装修墙面是用乳胶漆好还是墙纸墙布好呢?</a></li>
           <li>• <a href="#" target="_blank" title="装修墙面用墙纸好还是用乳胶漆好?">装修墙面用墙纸好还是用乳胶漆好?</a></li>
           <li>• <a href="#" target="_blank" title="装修新房是用墙纸好呢还是乳胶漆好?">装修新房是用墙纸好呢还是乳胶漆好?</a></li>
        </ul>
        <!-- 右侧ul -->
        <ul class="tit13">
           <li>• <a href="#" target="_blank" title="新房装修,用墙纸好,还是刷环保漆好?为什么?">新房装修,用墙纸好,还是刷环保漆好?为什么?</a></li>
           <li>• <a href="#" target="_blank" title="孩子房间是刷乳胶漆好还是贴壁纸好,那个比较环保?">孩子房间是刷乳胶漆好还是贴壁纸好,那个比较环保?</a></li>
           <li>• <a href="#" target="_blank" title="新房装修,用墙纸好,还是刷环保漆好?">新房装修,用墙纸好,还是刷环保漆好?</a></li>
           <li>• <a href="#" target="_blank" title="墙上是贴墙纸好还是刷乳胶漆好呢?">墙上是贴墙纸好还是刷乳胶漆好呢?</a></li>
           <li>• <a href="#" target="_blank" title="装修新房,墙上贴壁纸好还是刷乳胶漆好?哪个省钱而且环保?">装修新房,墙上贴壁纸好还是刷乳胶漆好?哪个省钱而且环保?</a></li>
           <li>• <a href="#" target="_blank" title="房子装修贴壁纸好还是刷乳胶漆好?哪个更便宜?哪个更环保?">房子装修贴壁纸好还是刷乳胶漆好?哪个更便宜?哪个更环保?</a></li>
           <li>• <a href="#" target="_blank" title="装修房子时,贴墙纸和刷乳胶漆,哪个好?">装修房子时,贴墙纸和刷乳胶漆,哪个好?</a></li>
           <li>• <a href="#" target="_blank" title="房屋装修贴墙纸和刷乳胶漆哪个更环保?">房屋装修贴墙纸和刷乳胶漆哪个更环保?</a></li>
           <li>• <a href="#" target="_blank" title="装修新房贴壁纸好还是刷环保漆更好?">装修新房贴壁纸好还是刷环保漆更好?</a></li>
           <li>• <a href="#" target="_blank" title="新房装修在环保方面是贴壁纸好还是刷涂料好呢?">新房装修在环保方面是贴壁纸好还是刷涂料好呢?</a></li>
        </ul>
    </div>
  </div>   
           <div class="tit14">
              <a href="#" target="_blank" title="更多文章">更多文章</a>
           </div>
       </div>
       <!-- 第二个右边子元素 -->
       <div class="tit2">
         <!-- 家具常识 -->
          <div class="tit21">
            <span @mousemove="s1()"><a href="javascript:;">家具常识</a></span>
            <span @mousemove="s2()"><a href="javascript:;">疑问解答</a></span>
          </div>
          <!-- 家具常识导航 -->
        <div class="navbar"> 
          <div id="tit22">
              <a href="#" target="_blank" title="家居风水">家具风水</a>
              <a href="#" target="_blank" title="家具材质">家具材质</a>
              <a href="#" target="_blank" title="家装日记">家装日记</a>
              <a href="#" target="_blank" title="局客导购">局客导购</a>
              <a href="#" target="_blank" title="家具新闻">家具新闻</a>
              <a href="#" target="_blank" title="家具设计">家具设计</a>
              <a href="#" target="_blank" title="家具保养">家具保养</a>
              <a href="#" target="_blank" title="家具手册">家具手册</a>
              <a href="#" target="_blank" title="家具搭配">家具搭配</a>
              <a href="#" target="_blank" title="客厅家具摆放">客厅家具摆放</a>
              <a href="#" target="_blank" title="家具摆设">家具摆设</a>
              <a href="#" target="_blank" title="卧室床摆放">卧室床摆放</a>
              <a href="#" target="_blank" title="卧室家具摆放">卧室家具摆放</a>
              <a href="#" target="_blank" title="书房衣帽间">书房衣帽间</a>
              <a href="#" target="_blank" title="电视柜款式">电视柜款式</a>
              <a href="#" target="_blank" title="电视柜深度">电视柜深度</a>
              <a href="#" target="_blank" title="衣柜内部">衣柜内部</a>
              <a href="#" target="_blank" title="衣柜板材">衣柜板材</a>
          </div>
          <div id="tit23">
            <a href="#" target="_blank" title="家具问答">家具问答</a>
            <a href="#" target="_blank" title="家居问答">家居问答</a>
            <a href="#" target="_blank" title="家装设计">家装设计</a>
            <a href="#" target="_blank" title="风水疑难">风水疑难</a>
            <a href="#" target="_blank" title="装修指南">装修指南</a>
            <a href="#" target="_blank" title="家居建材">家居建材</a>
        </div>
        </div> 
       </div>
   </div>
  </div>   
</template>

<script>
import Header from '@/components/Header.vue'
export default {
  data(){
    return{
      carou:[],
      lou:[],
      Header:true
    }
  },
  methods:{
      s1(){
          var s1=document.querySelector("div#tit22")
          var s2=document.querySelector("div#tit23")
          s1.className="ss"
          s2.className=""
      },
      s2(){
          var s1=document.querySelector("div#tit22")
          var s2=document.querySelector("div#tit23")
          s1.className=""
          s2.className="ss"
      },
      mouse(){
         var f1=document.querySelector("div#title11")
         var f2=document.querySelector("div#title12")
         f1.className="ss"
         f2.className=""
      },
      over(){
         var f1=document.querySelector("div#title11")
         var f2=document.querySelector("div#title12")
         f2.className="ss"
         f1.className=""
      },
    caro(){
      var url="http://localhost:3000/rscity/carousel"
      this.axios.get(url).then((res)=>{
        this.carou=res.data
      })
    },
    FF(){
      var url="http://localhost:3000/index"
      this.axios.get(url).then((res)=>{
        this.lou=res.data
      })
    },
  
},
  components: {
    "Header":Header
  },
created(){
    this.caro();
    this.FF();
  }
}
</script>


<style scoped>
 *{margin:0;padding:0;}
ul{list-style: none;}
a{text-decoration: none;}
.el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }
  .el,.elit,.imgs{
    height:460px;
  }
  .ss{
      z-index: 15;
      }
/* 导购 */
.F0{
    width:1200px;
    height:150px;
    margin: 20px auto;
    display: flex;
    justify-content: space-between;
}
/* 每一个模块的父元素 */
.t1{
    width:290px;
    height:185px;
    position: relative;
    overflow: hidden;
}
/* 字体父元素 */
.aa>a{
    position: absolute;
    top:20px;left:30px;
    z-index: 100;
}
/* 字体鼠标样式 */
.aa>a>p:first-child:hover{
    opacity: .8;
}
/* 字体鼠标样式 */
.aa>a>p:last-child:hover{
    opacity: .8;
}
/* 第一个字体 */
.aa>a>p:first-child{
   font-size:18px;
   width:44px;
   color:#333;
}
/* 第二个字体 */
.aa>a>p:last-child{
    font-size:13px;
    margin-top:10px;
    color: #333;
}
/* 图片过渡 */
.t1>img{
    transition: 0.5s;
}
/* 图片鼠标效果  */
.t1>img:hover{
    transform:translate(-6px); 
}
/* 1F */
div.F1{
   width:1200px;
   height:660px;
   margin:50px auto;
   position: relative;
}
/* 标题 */
div.f1{
    width:1200px;
    height:33px;
    display: flex;
}
/* 标题介绍 */
.f1>h3{
    width:220px;
    height:32px;
    margin-top:5px;
    color:#000;
}
.f1>h3>a:hover{
    opacity: .8;
}
/* 精品推荐 */
.jing{
    width:66px;
    height:32px;
    font-size: 15px;
    font-weight: 700;
    border-bottom: 2px solid #222;
    color: #222;
    line-height: 32px;
}
/* 商品介绍父元素 */
.Js{
    width:auto;
    height:32px;
    margin-left:350px;
}
/* 商品介绍a标签 */
.Js>a{
    width:auto;
    height:17px;
    font-size:13px;
    color:#666;
    margin-right:20px;
    margin-top:8px;
    display: inline-block;
}
/* 商品介绍a标签鼠标样式 */
.Js>a:hover{
    opacity: .8;
}
/* 下方图片介绍父元素 */
div.f2{
    width:1200px;
    height:626px;
    display: flex;
    border-top: 1px solid #cf000e;
}
/* 左边图片与下方导航介绍 */
.left-a{
    width: 220px;
    height: 625px;
    border-left: 1px solid #eee;
    box-sizing: border-box
}
/* 图片大小 */
.left-a>a>img{
    width:220px;
    height:287px;
}
.left-a>a>img:hover{
    opacity: .8;
}
/*  导航介绍*/
.left-b{
    padding: 38px 0 0 30px;
    height: 140px;
    overflow: hidden;
}
/* 导航介绍a标签字体 */
.left-b>a{
    display: inline-block;
    padding-right: 18px;
    margin-bottom: 3px;
    width: 65px;
    text-align: left;
    overflow: hidden;
    height: 28px;
    line-height: 28px;
    color: #666;
    font-size: 13px;
}
.left-b>a:hover{
    opacity: .8;}
/* 右方父元素 */
.right-a{
    width:980px;
    height:625px;
}
/* 右方>上方父元素 */
.right-b{
    width:980px;
    height:375px;
    display: flex;
    justify-content: space-between;
}
/* 右>上>第一个父元素 */
.right-b1{
    width:500px;
    height:375px;
    position: relative;
    margin-right:3px;
}
/* 商品介绍价格 */
.right-b11>a{
    width:245px;
    height:90px;
    display: inline-block;
    background:rgba(255,255,255,0.8);
    position: absolute;
    top:255px; left:125px;
    z-index:10;
}
/* 商品介绍 */
.right-b11>a>span{
    width:218px;
    height:56px;
    display: block;
    text-align: center;
    font-size: 20px;
    color:#000;
    line-height:70px;
    margin:0 auto;
    border-bottom: 1px dotted #f00;
}
/* 商品价格 */
.right-b11>a>p{
    width:245px;
    height:22px;
    font-size: 15px;
    color:#000;
    text-align: center;
}
/* 鼠标hover效果 */
.s23>a>img:hover{
    opacity: .8;
}
/* 右>上>中间，右边父元素 */
.right-b2,.right-b3{
    width:240px;
    height:375px;
    margin-right:3px;
    position: relative;
    overflow: hidden;
}
/* 右上中间商品介绍 */
.right-b21{
    width:240px;
    height:80px;
    position: absolute;
    top:280px;
    display: none;
    z-index: 10;
    background:rgba(255,255,255,0.7);
}
/* 右上中间商品介绍 */
.right-b21>li{
    width:240px;
    height:40px;
}
/* 右上中间商品介绍字体 */
.right-b21>li:last-child>a{
    color:#cf000e;
}
/* 右上中间商品介绍鼠标效果 */
.right-b21>li>a:hover{
    opacity: .7;
}
/* 右上中间商品介绍字体 */
.right-b21>li>a,.right-b311>li>a{
    color:#000;
    line-height: 10px;
    font-size:14px;
}
/* 右上中间商品介绍图片过渡 */
.right-b2>div>a>img{
    transition:0.5s;
}
 /* 右上中间商品图片hover效果 */ 
.right-b2>div>a>img:hover{
    opacity: .8;
    transform: translate(-7px);
}
/* 商品介绍显现 */
.right-b2:hover ul{
    display: block;
}
.right-b31{
    width:240px;
    height:186px;
    margin-bottom:3px; 
    position: relative;
    overflow: hidden;
}
.right-b311{
    width:240px;
    height:80px;
    position: absolute;
    top:106px;
    display: none;
    z-index: 10;
    background:rgba(255,255,255,0.7);
}
.right-b311>li{
    width:240px;
    height:40px;
    margin-bottom: 10px;
}
/* 右上中间商品介绍字体 */
.right-b311>li:last-child>a{
    color:#cf000e;
}
/* 右上中间商品介绍鼠标效果 */
.right-b311>li>a:hover{
    opacity: .7;
}
/* 右上中间商品介绍字体 */

 /* 右上中间商品介绍图片过渡 */
.right-b31>div>a>img{
    transition:0.5s;
}
 /* 右上中间商品图片hover效果 */ 
.right-b31>div>a>img:hover{
    opacity: .8;
    transform: translate(-7px);
}
/* 商品介绍显现 */
.right-b31:hover ul{
    display: block;
}   







/* 右下 */
.right-e{
    width:980px;
    height:250px;
    display: flex;
    justify-content: space-between;

}
/* 每个li的属性 */
.right-e>li{
    width:245px;
    height:250px;
    margin-right:2px;
    position: relative;
    overflow: hidden;
}
/* 商品介绍位置 */
.right-e3{
    position: absolute;
    top:170px;
}
/* 图片过渡 */
.right-e1>div>a>img{
    transition:0.5s;
}
/* 图片鼠标效果 */
 /* 右上中间商品图片hover效果 */ 
.right-e1>div>a>img:hover{
    opacity: .8;
    transform: translate(-7px);
}
/* 商品介绍显现 */
.right-e1:hover ul{
    display: block;
}   

body{
    overflow-x: hidden; 
}
/* 提示 父元素*/
div.tit{
    border: 1px solid #ddd;
    width:1200px;
    height:402px;
    margin:70px auto;
    display: flex;
    justify-content: space-between;
}
/* 提示左第一个 */
div.tit1{
    width:840px;
    height:405px;
    display:flex;
    margin-top:20px;
    flex-wrap: wrap;
}
/* 最新文章父元素 */
div.tit11{
    width:840px;
    height:34px;
    border-bottom: 1px solid #c8c8c8;
}
/* 最新文章，最新问答 */
div.tit11>span{
    width:128px;
    height:33px;
    display: inline-block;
    text-align: center;
    margin-left:20px;
}
/* 最新文章字体 */
div.tit11>span>a{
    color:#000;
}
/* 鼠标hover */
div.tit11>span:hover{
    font-weight: 700;
    border-bottom: 1px solid #f00;
}
div.title1{
    width:840px;
     height:230px;
    position: relative;
}
div#title11,div#title12{
    width:840px;
    display:flex;
    background:#fff;
    position: absolute;
}
/* 下方新闻ul父元素 */
ul.tit12,ul.tit13{
    width:420px;
    height:230px;
}
/* 新闻li */
ul.tit12>li,ul.tit13>li{
    width: 400px;
    height: 23px;
    line-height: 23px;
    overflow: hidden;
    margin-left:10px;
}
/* 新闻字体 */
ul.tit12>li>a,ul.tit13>li>a{
font-size:13px;
line-height:5px;
color:#000;
}
div.tit1>ul>li>a:hover{
    opacity: .8;
}
/* 提示右第二个 */
div.tit2{
    width:300px;
    height:274px;
    margin-right:30px;
    margin-top:20px;
}
/* 更多文章按钮 */
div.tit14{
    width:278px;
    height:36px;
    margin:0 auto;
    border:1px solid #c8c8c8; 
    border-radius: 5px;
    text-align: center;
    transition: background .4s;
}
/* 更多文章按钮鼠标效果 */
div.tit14:hover{
    background:#f00;
}
/* 更多文章按钮字体 */
div.tit14>a{
    line-height:36px;
    font-size: 14px;
    color:#000; 
}
/* 家具常识 */
div.tit21{
    width:300px;
    height:34px;
    border-bottom: 1px solid #c8c8c8;
}
/* 家具常识 */
div.tit21>span{
    width:128px;
    height:33px;
    display: inline-block;
    text-align: center;
    margin-right:10px;
}
/* 家具常识字体 */
div.tit21>span>a{
    color:#000;
}
/* 鼠标hover效果 */
div.tit21>span:hover{
    font-weight: 700;
    border-bottom: 1px solid #f00;
}
/* 家具导航父元素 */
div.navbar{
  width:300px;
  position: relative;
}
div#tit22,div#tit23{
    width:300px;
    height:220px;
    margin-top:35px;
    background:#fff;
    position: absolute;
}
/* 家具导航字体属性 */
div#tit22>a,div#tit23>a{
    font-size: 12px;
    margin-bottom: 10px;
    background-color: #f5f5f5;
    color: #666;
    display: inline-block;
    overflow: hidden;
    text-decoration: none;
    border-radius: 2px;
    line-height: 12px;
    height: 12px;
    text-align: center;
    padding: 8px 10px;
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    vertical-align: middle;
    margin-right: 5px;
}
</style>