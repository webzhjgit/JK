<template>
    <div @mousemove="dds">
            <Header></Header>
         <!--类别分类-->
    <div class="w">
      <div class="first">
        <div class="cat">
            <a href="javascript:;">类别：</a>
        </div>
        <div class="first2">
          <div class="table tabs">
            <a href="javascript:;" title="卧室家具">卧室家具(736)</a>
            <a href="javascript:;" title="客厅家具">客厅家具(680)</a>
            <a href="javascript:;" title="餐厅家具">餐厅家具(269)</a>
            <a href="javascript:;" title="书房家具">书房家具(253)</a>
            <a href="javascript:;" title="儿童家具">儿童家具(255)</a>
            <a href="javascript:;" title="户外阳台">户外阳台(110)</a>
            <a href="javascript:;" title="办公家具">办公家具(391)</a>
            <a href="javascript:;" title="多功能家具">多功能家具(66)</a>
          </div> 
        </div>
    </div>
    <div class="first  firsts">
        <div class="cat cat1">
            <a href="javascript:;">
               推荐：
            </a>
        </div>
        <div class="first2">
           <div class="table">
             <a href="javascript:;" title="">橡胶木家具</a>
             <a href="javascript:;" title="">美式家具</a>
             <a href="javascript:;" title="">餐桌家具</a>
             <a href="javascript:;" title="">竹家具</a>
             <a href="javascript:;" title="">实木餐厅家具</a>
             <a href="javascript:;" title="">红酒柜</a>
             <a href="javascript:;" title="">家用实木餐桌椅</a>
             <a href="javascript:;" title="">玻璃桌</a>
             <a href="javascript:;" title="">不锈钢玻璃餐桌</a>
             <a href="javascript:;" title="">大理石桌椅</a>
             <a href="javascript:;" title="">红木休闲椅</a>
             <a href="javascript:;" title="">红木桌椅</a>
             <a href="javascript:;" title="">红木餐椅</a>
             <a href="javascript:;" title="">红木餐桌</a>
             <a href="javascript:;" title="">法式高档家具</a>
             <a href="javascript:;" title="">法式风格家具</a>
             <a href="javascript:;" title="">名牌法式家具</a>
             <a href="javascript:;" title="">银箔家具</a>
             <a href="javascript:;" title="">英式家具</a>
             <a href="javascript:;" title="">英式风格家具</a>
             <span href="javascript:;" class="more">更多</span>
           </div>
        </div>
    </div>
    
    <div class="first">
        <div class="cat">
            <a href="javascript:;">分类：</a>
        </div>
        <div class="first2">
          <div class="table">
            <a href="javascript:;" title="卧室家具">餐桌(110)</a>
            <a href="javascript:;" title="客厅家具">餐椅(72)</a>
            <a href="javascript:;" title="餐厅家具">餐边柜(56)</a>
            <a href="javascript:;" title="书房家具">餐厅套装(30)</a>
          </div> 
        </div>
    </div>
    <div class="first scoend">
        <div class="cat salary">
            <a href="javascript:;">价格</a>
        </div>
        <div class="first2">
            <div class="salary">
              <a href="javascript:;" title="0-999元">0-999元</a>
              <a href="javascript:;" title="1000-4999元">1000-4999元</a>
              <a href="javascript:;" title="5000-9999元">5000-9999元</a>
              <a href="javascript:;" title="1-3W元">1-3W元</a>
              <a href="javascript:;" title="3W元以上">3W元以上</a>
            </div> 
          </div>
    </div>
    <div class="first three">
        <div class="cat salary">
            <a href="#">您已选择</a>
        </div>
        <div class="first2">
            <div class="tabless">
              <span id="select" href="#" title="">
                <a href="javascript:;" class="closes">asdasd</a>
              </span>
              <span class="prices">
                <a href="javascript:;" class="closes"></a>
              </span>
                 <span class="qing">清空选择</span>
            </div> 
          </div>
    </div>
  <!--综合-->
  <div class="selff">
    <div class="self">
      <!--分页-->
      <div class="self1">
         <span>/32</span>
      </div>
      <!--总数-->
      <div class="self2">
         共<b style='color:red;'>1000</b>件商品
      </div>
      <!--综合销量-->
      <ul class="self3">
        <li>
           <a href="#" title="默认排序" class="active">综合</a>
        </li>
        <li>
           <a href="#" title="销量">销量</a>
        </li>
        <li>
           <a href="#" title="价格">价格</a>
        </li>
        <li>
           <a href="#" title="评论数">评论数</a>
        </li>
        <li>
           <a href="#" title="上架时间">上架时间</a>
        </li>
      </ul>
    </div>
  </div>
  <!--商品列表-->
  <div class="sp">
     <!--商品列表父元素-->
     <ul class="sp1">
       <!--商品1-->
        <li v-for="p of products" :key="p.id">
        <router-link to='/detalis?pid=1'>
            <img :src="p.dimg" alt="">
        </router-link>
          <div class="price">
            <strong>
              <span>￥</span><span>{{p.price}}</span>
            </strong>
            <del>￥88</del>
          </div>
            <a href="#" class="titl1" target="_blank" title="洗衣篮脏衣篮  收纳筐折叠布艺脏衣篓收纳脏衣框收纳篮子脏衣服篮">
              <span>{{p.title}}</span>
              <span>可折叠布艺收纳脏衣篓 ，4种颜色款式任君选择。两件9折！只卖3天！厂家直销
                ，质量保证，保您后顾之忧！本商品无赠品 请各位亲们见谅 请关注本店其他商品 惊
                喜等着您！1年质保 7天无理由退换货，无忧购物，  实木框架 送货到家 。
              </span>
            </a>
          <div class="sell">
            <span>
              <a href="javascript:;" class="sell1" target="_blank">
                已售
                <b>{{p.sold}}</b>
              </a>
            </span>
            <span>
              <a href="javascript:;" target="_blank">
                评论
                <b id="sell2">{{p.comment}}</b>
              </a>
              </span>
          </div>
        </li>
     </ul>
       <!--分页-->
  <ul class="page">
      <li v-for='(ps,k) of pageCound' :key="k">
        <input type="button" :value="k+1" @click="p(k)">
      </li>
    </ul>
  </div>
          <!-- 提示 -->
          <div class="tit">
            <!-- 第一个左边子元素 -->
              <div class="tit1">
                <!-- 最新文章 -->
                  <div class="tit11">
                     <span @mouseover="mouse"><a href="javascript:;">相关文章</a></span>
                     <span  @mousemove="over"><a href="javascript:;">相关问答</a></span>
                  </div>
            <div class="title1" id="title13">    
              <div id="title11">
                  <!-- 左侧ul -->
                  <ul class="tit12">
                      <li>• <a href="#" target="_blank" title="您所要知道的家具知识全在这，家具的功能和外观形式普及">您所要知道的家具知识全在这，家具的功能和外观形式普及</a></li>
                      <li>• <a href="#" target="_blank" title="装修中如何与家具搭配呢?教大家一些小常识">装修中如何与家具搭配呢?教大家一些小常识</a></li>
                      <li>• <a href="#" target="_blank" title="家具如何分类？这些方法你值得收藏！">家具如何分类？这些方法你值得收藏！</a></li>
                      <li>• <a href="#" target="_blank" title="板材家具的选择注意事项，这些你都了解了吗？">板材家具的选择注意事项，这些你都了解了吗？</a></li>
                      <li>• <a href="#" target="_blank" title="最流行的9大家具风格，搭配出一个有灵魂的家。">最流行的9大家具风格，搭配出一个有灵魂的家。</a></li>
                      <li>• <a href="#" target="_blank" title="新古典风格和现代风格家具大PK，最适合的才是最好的。">新古典风格和现代风格家具大PK，最适合的才是最好的。</a></li>
                      <li>• <a href="#" target="_blank" title="欧式风格家具可以分为四大类，带你走进欧式家具。">欧式风格家具可以分为四大类，带你走进欧式家具。</a></li>
                      <li>• <a href="#" target="_blank" title="美式风格VS欧式风家具，从5个方面深刻剖析家具风格。">美式风格VS欧式风家具，从5个方面深刻剖析家具风格。</a></li>
                      <li>• <a href="#" target="_blank" title="美式家具PK欧式家具，从细节看美式家具和欧式家具的区别。">美式家具PK欧式家具，从细节看美式家具和欧式家具的区别。</a></li>
                      <li>• <a href="#" target="_blank" title="现代简约家具的鼻祖和巅峰，绝对够得上你认为的时尚。">现代简约家具的鼻祖和巅峰，绝对够得上你认为的时尚。</a></li>
                  </ul>
                  <!-- 右侧ul -->
                  <ul class="tit13">
                      <li>• <a href="#" target="_blank" title="选对卧室家具，才能高枕无忧。">选对卧室家具，才能高枕无忧。</a></li>
                      <li>• <a href="#" target="_blank" title="家具应该怎么选择？教你如何设计并选择家具。">家具应该怎么选择？教你如何设计并选择家具。</a></li>
                      <li>• <a href="#" target="_blank" title="家具风格设计赏析，多种家具风格任你挑选。">家具风格设计赏析，多种家具风格任你挑选。</a></li>
                      <li>• <a href="#" target="_blank" title="家具的多种设计风格，九大家具风格要这样塑造。">家具的多种设计风格，九大家具风格要这样塑造。</a></li>
                      <li>• <a href="#" target="_blank" title="你了解欧美家具的风格吗？欧美家具包含哪些风格？">你了解欧美家具的风格吗？欧美家具包含哪些风格？</a></li>
                      <li>• <a href="#" target="_blank" title="欧式家具风格知识大全，如艺术品一样精美。">欧式家具风格知识大全，如艺术品一样精美。</a></li>
                      <li>• <a href="#" target="_blank" title="欧式实木家具系列产品介绍，总有一款适合你。">欧式实木家具系列产品介绍，总有一款适合你。</a></li>
                      <li>• <a href="#" target="_blank" title="欧式田园风格家具欣赏，年轻人最喜爱的家居范。">欧式田园风格家具欣赏，年轻人最喜爱的家居范。</a></li>
                      <li>• <a href="#" target="_blank" title="唯美浪漫的田园风家具搭配，教你如何打造专属浪漫之家。">唯美浪漫的田园风家具搭配，教你如何打造专属浪漫之家。</a></li>
                      <li>• <a href="#" target="_blank" title="选购法式家具该注意些什么呢？3分钟教会你选购法式家具。">选购法式家具该注意些什么呢？3分钟教会你选购法式家具。</a></li>
                  </ul>
              </div>
              <div id="title12">
               <!-- 左侧ul -->
               <ul class="tit12">
                  <li>• <a href="#" target="_blank" title="十大欧式名牌家具排名如何?中国十大品牌欧式家具排名?">十大欧式名牌家具排名如何?中国十大品牌欧式家具排名?</a></li>
                  <li>• <a href="#" target="_blank" title="简欧现代家具品牌排行榜是怎样的呢?哪一个牌子最好的呢?">简欧现代家具品牌排行榜是怎样的呢?哪一个牌子最好的呢?</a></li>
                  <li>• <a href="#" target="_blank" title="欧式新古典家具有什么特点?欧式家具好不好?">欧式新古典家具有什么特点?欧式家具好不好?</a></li>
                  <li>• <a href="#" target="_blank" title="欧式古典家具风格好不好?欧式古典家具怎么搭配?">欧式古典家具风格好不好?欧式古典家具怎么搭配?</a></li>
                  <li>• <a href="#" target="_blank" title="家具有哪些风格?各个风格都有哪些特点?">家具有哪些风格?各个风格都有哪些特点?</a></li>
                  <li>• <a href="#" target="_blank" title="田园装修风格分几种 现代田园装修风格怎么样">田园装修风格分几种 现代田园装修风格怎么样</a></li>
                  <li>• <a href="#" target="_blank" title="门和家具都刷成白色,以后会变黄吗?是否由木材和油漆的质量决定？">门和家具都刷成白色,以后会变黄吗?是否由木材和油漆的质量决定？</a></li>
                  <li>• <a href="#" target="_blank" title="美式风格的家具特点有哪些?美式风格的家具选购方法">美式风格的家具特点有哪些?美式风格的家具选购方法</a></li>
                  <li>• <a href="#" target="_blank" title="古典欧式风格的特点?欧式家具古典风格怎么样?">古典欧式风格的特点?欧式家具古典风格怎么样?</a></li>
                  <li>• <a href="#" target="_blank" title="原木实木家具有哪些材质？哪种材质比较好？">原木实木家具有哪些材质？哪种材质比较好？</a></li>
               </ul>
               <!-- 右侧ul -->
               <ul class="tit13">
                  <li>• <a href="#" target="_blank" title="田园风格装修总结?田园风格装修有什么特点?">田园风格装修总结?田园风格装修有什么特点?</a></li>
                     <li>• <a href="#" target="_blank" title="十大简欧家具品牌排名 简欧家具特点">十大简欧家具品牌排名 简欧家具特点</a></li>
                     <li>• <a href="#" target="_blank" title="实木家具分为几种呢? 各种实木家具的优缺点事啥?">实木家具分为几种呢? 各种实木家具的优缺点事啥?</a></li>
                     <li>• <a href="#" target="_blank" title="东北楸木、榆木、水曲柳柞木哪个好">东北楸木、榆木、水曲柳柞木哪个好</a></li>
                     <li>• <a href="#" target="_blank" title="美式新古典风格特点是什么?美式新古典风格特点怎么样?">美式新古典风格特点是什么?美式新古典风格特点怎么样?</a></li>
                     <li>• <a href="#" target="_blank" title="欧式古典家具怎么样?选择欧式古典家具该注意哪些啊?">欧式古典家具怎么样?选择欧式古典家具该注意哪些啊?</a></li>
                     <li>• <a href="#" target="_blank" title="欧式家具有哪些？欧式家具特点是什么？">欧式家具有哪些？欧式家具特点是什么？</a></li>
                     <li>• <a href="#" target="_blank" title="欧式实木家具如何选购?怎样选购欧式家具?">欧式实木家具如何选购?怎样选购欧式家具?</a></li>
                     <li>• <a href="#" target="_blank" title="欧式田园风格装修特色 欧式风格软装搭配技巧">欧式田园风格装修特色 欧式风格软装搭配技巧</a></li>
                     <li>• <a href="#" target="_blank" title="欧式田园风格装修报价,欧式田园风格装修注意事项">欧式田园风格装修报价,欧式田园风格装修注意事项</a></li>
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
                   <span><a href="javascript:;">更多推荐</a></span>
                 </div>
                 <!-- 家具常识导航 -->
                 <div class="tit22" id="nacbar1">
                     <a href="javascript:;" target="_blank" title="">真皮沙发</a>
                     <a href="#" target="_blank" title="">实木家具</a>
                     <a href="#" target="_blank" title="">中式家具</a>
                     <a href="#" target="_blank" title="">布艺沙发</a>
                     <a href="#" target="_blank" title="">白橡木家具</a>
                     <a href="#" target="_blank" title="">水曲柳家具</a>
                     <a href="#" target="_blank" title="">榫卯家具</a>
                     <a href="#" target="_blank" title="">红木家具</a>
                     <a href="#" target="_blank" title="">柚木家具</a>
                     <a href="#" target="_blank" title="">橡木家具</a>
                     <a href="#" target="_blank" title="">轻奢家具</a>
                     <a href="#" target="_blank" title="">装饰柜</a>
                     <a href="#" target="_blank" title="">玄关柜</a>
                     <a href="#" target="_blank" title="">书柜</a>
                     <a href="#" target="_blank" title="">书桌</a>
                     <a href="#" target="_blank" title="">明式家具</a>
                     <a href="#" target="_blank" title="">玄关</a>
                     <a href="#" target="_blank" title="">酒柜</a>
                     <a href="#" target="_blank" title="">美式家具</a>
                     <a href="#" target="_blank" title="">隔断</a>
                     <a href="#" target="_blank" title="">椅子</a>
                     <a href="#" target="_blank" title="">书架</a>
                     <a href="#" target="_blank" title="">窗帘</a>
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
              products:[],
              pno:"",
              pageCound:[],
              Header:true
            }
        },
        methods:{
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
            dds(){
              $(function(){
                   $(".more").click(function(){
                    var $table=$(this).parent();
                    if($table.hasClass("show")){
                        $table.removeClass("show")
                        $(this).text("更多")
                    }else{
                        $table.addClass("show")
                        $(this).text("隐藏")
                    }
                })
                //显示分类栏
                $("div.tabs>a").click(function(){
                    var $a=$(this);
                    $("div.firsts").css("display","block")
                })

                $("div.table>a").click(function(){
                    var $a=$(this);
                $("div.three").css("display","block")
                $("#select").text($a.text()).css("display","inline-block")
                    
                })
                $("div.salary>a").click(function(){
                    var $a=$(this);
                    $("div.three").css("display","block")
                    $("span.prices").text($a.text()).css("display","inline-block") 
                })
                $("div.tabless>span.qing").click(function(){
                    $("div.tabless>a").text("")
                    $("div.three").css("display","none")
                })
              })
            },
            p(k){
              this.pno=k+1;
               var url="http://localhost:3000/prducts?pno="+this.pno;
               this.axios.get(url).then((res)=>{
               this.products=res.data.data;
               var page=res.data.pageCound
               for(var i=0;i<page;i++){
                   this.pageCound[i]=i;
               }
               })
            },
            pro(){
               var url="http://localhost:3000/prducts?pno=";
               this.axios.get(url).then((res)=>{
               this.products=res.data.data;
               var page=res.data.pageCound
               for(var i=0;i<page;i++){
                   this.pageCound[i]=i;
               }
               })
            },
        },
        created(){
           this.pro();
    },
          components: {
    "Header":Header
  }
  }
</script>

<style scoped>
   *{
   margin:0;
   padding:0;
}
ul{
    list-style: none;
}
a{
    text-decoration: none;
}
/* 所有a标签鼠标 */
a:hover{
    opacity: .8;
}
/* 类别分类父元素 */
div.w{
    width:1200px;
    margin:15px auto;
}
div.first::after{
    content: '.';
    display: block;
    height: 0;
    clear: both;
    visibility: hidden;
}
 div.first{
    background: #f5f5f5;
}
div.cat{
    width: 110px;
    line-height: 36px;
    padding-left: 18px;
    color: #888;
    float: left;

}
div.cat>a{
    color: #666;
    font-weight: 700;
    font-size: 14px;
}
div.first2{
    padding: 8px 0 8px 26px;
    background: #fff;
    float: left;
    width: 1044px;
}
div.table{
    width: 100%;
    vertical-align: top;
    height: 22px;
    overflow: hidden;
    position: relative;
    padding-right: 60px;
    box-sizing: border-box;
}
div.show{
    overflow: auto;
    height: auto;
}
div.table>a,span.qing,div.salary>a{
    display: inline-block;
    vertical-align: top;
    margin-right: 15px;
    color: #666;
    padding: 2px 0;
    font-weight: 700;
    font-size: 13px;
}
div.table>span.more{
    width: 65px;
    text-align: right;
    cursor: pointer;
    position: absolute;
    right: 0;
    top: 0;
}
.tabless>span{
    cursor: pointer;
}
div.salary>a{
    font-weight: 400;
}
#select,span.prices{
    font-size:13px;
    font-weight:400;
    padding:0px 10px;
    color: #666;
    display:none;
    margin-right: 5px;
    border:1px solid #000;
}
a.closes{
    display: inline-block;
    width:7px;
    height:7px;
    margin-top: 5px;
    margin-left: 8px;
    background:url()  -69px -237px no-repeat;
}
div.firsts{
    display: none;
}

div.scoend{
    border-top:1px solid #c8c8c8;
    border-bottom:1px solid #c8c8c8;
}
div.three{
    display: none;
}
/* 综合栏父元素1 */
div.selff{
    margin-left: auto;
    margin-right: auto;
    width: 1200px;
    margin-top:13px;
}
/* 综合栏父元素2 */
div.self{
    height: 25px;
    line-height: 24px;
    padding: 6px 10px 5px;
    border: 1px solid #e6e6e6;
    border-bottom: none;
    background: #f3f3f3;
}
/* 页数 */
div.self1{
    height: 24px;
    line-height: 24px;
    float: right;
}
/* 商品总数 */
div.self2{
    margin-right: 15px;
    margin-top: 1px;
    float: right;
    color: #999;
}
/* 综合销量 */
ul.self3{
    width:280px;
    height:25px;
}
/* 每个li */
ul.self3>li{
    float: left;
    line-height: 21px;
}
/* 综合销量字体属性 */
ul.self3>li>a{
    height: 21px;
    padding: 0 9px;
    border: 1px solid #e6e6e6;
    border-left: none;
    text-align: center;
    display: block; 
    font-size:14px;
    color:#666;
}
/* 鼠标点击综合销量效果 */
ul.self3>li>a:focus{
    background:#f00;
    color:#fff;
    font-size: 700;
}
/* 商品列表 */
div.sp{
    width:1200px;
    margin:20px auto;
}
/* 商品列表父元素 */
ul.sp1{
    width:1200px;
    height:auto;
    display:flex;
    justify-content: space-between;
    flex-wrap: wrap;
}
/* 商品列表li，每一个商品 */
ul.sp1>li{
    width:285px;
    height:323px;
    text-align: center;
    padding:5px 0; 
    border:1px solid #f5f5f5;
    margin-bottom:20px;
}
/* 价格 */
.price{
    padding-left: 2px;
    text-align: start;
}
/* 价格字体 */
.price>strong{
    color: #c00;
    font-size: 20px;
    font-weight: 500;
}
/* ￥样式 */
.price>strong>span:first-child{
    font-size: 13px;
    padding-bottom:3px;
    font-family: Microsoft YaHei;
}
/* 价钱样式 */
.price>strong>span{
    font-family: Arial;
}
/* 删除线价格 */
.price>del{
    margin-left: -5px;
    margin-right: 6px;
    color: #999;
    margin-top: 7px;
    font-size:15px;
}
/* 商品介绍栏 */
.titl1{
    height: 38px;
    line-height: 20px;
    color: #333;
    display: block;
    overflow: hidden;
    text-align: left;
    margin-top: 4px;
    font-size:13px;
}
.titl1>span:last-child{
    color: #f70;
}
/* 商品售出情况 */
div.sell{
    height: 31px;
    border-bottom: 0;
    margin-top: 2px;
    text-align: left;
    padding-left: 2px;
    color: #999;

}
/*商品售出字体 */
div.sell>span>a{
    height: 100%;
    color: #999;
    font-size: 13px;
}
/* 评论字体样式 */
div.sell>span>a>b{
    color: #38b;
    font-family: Arial;
}
/* 已售边框 */
a.sell1{
    padding-right:10px;
    margin-right:10px;
    border-right: 1px solid #eee;
}
/* 评论字体颜色 */
#sell2{
    color:#999;
}
/* 分页 */
ul.page{
    margin: 0 auto 30px;
    display: flex;
    justify-content: center;
    align-items: center;
    padding-top: 20px;
}
ul.page>li{
    display: inline;
    margin-right: 5px;
    
}
ul.page>li>input{
    padding: 5px 9px;
    border: 1px solid #ccc;
    border-radius: 3px;
    background: #fff;
    font-weight: 400;
    display: block;
    color: #333
}
ul.page>li>input,ul.page>li>input:focus{
    padding: 6px 10px;
    border: 0;
    border-radius: 3px;
    background: #f2f2f2;
    color: #333
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
.ss{
    z-index: 15;}
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
div.tit22,div.tit23{
    width:300px;
    height:220px;
    margin-top:35px;
    background:#fff;
    position: absolute;
}
/* 家具导航字体属性 */
div.tit22>a,div.tit23>a{
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
