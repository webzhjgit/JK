<template>
<div>
   <div class="content">
        <div class="h">
          <a href="javascript:;" title="QQ客服号">
             <span class="qq"></span> 
          </a>
        </div>
        <div class="h">
          <a href="javascript:;" title="微信客服号">
             <span :class="w" @click="wx"></span> 
          </a>
        </div>
        <div class="h">
          <a href="javascript:;" title="客服电话">
             <span :class="t" @click="tel"></span> 
          </a>
        </div>
        <div class="h no" :style="'display:'+top">
          <a href="#" title="返回顶部">
             <span class="top"></span> 
          </a>
        </div>
        <div class="wai wxx" v-show="wxx">
           <img src="http://img.jianjuke.cn/posts/2018/03/02/D09117F3-2972-DF02-B913-58DE4CE53BD1.jpg/a120" alt="">
           <p>微信扫码加好友</p>
        </div>
        <div class="wai phone" v-show="tell">
           <p class="color">全国热线</p>
           <p>023-68804769</p>
           <p class="color">24小时值班热线</p>
           <p>13618244221</p>
        </div>                        
    </div>
</div>
</template>

<script>
export default {
    data(){
        return{
            top:"",
            w:"wx",
            t:"tel",
            wxx:false,
            tell:false
        }
    },
mounted(){
    // 加载过后获取滚动条
    window.addEventListener('scroll',this.handleScroll)
},
methods:{
    // 获取滚动条值设置显示隐藏
    handleScroll(){
        if(window.scrollY>=200){
            this.top="block"
        }else{
            this.top=""
        }
    },
    wx(e){
        if(this.w=="remove"){
            this.w="wx"
        }else{
           this.w="remove" 
        }
        if(!this.wxx){
            this.wxx=true
        }else{
            this.wxx=false
        }
        this.t="tel"
        this.tell=false
    },
    tel(e){
        this.w="wx"
        this.wxx=false
         if(this.t=="remove"){
            this.t="tel"
        }else{
           this.t="remove" 
        }
        if(!this.tell){
            this.tell=true
        }else{
            this.tell=false
        }
    }
}
}
</script>

<style>
*{margin:0px;padding: 0px;}
a{text-decoration: none;}
div.content{width:60px;height:270px;position:fixed;bottom:40px;right: 10px;z-index: 1000;}
div.h{margin-top:5px;background:#fff;border-radius:50%;width:60px;height:60px;}
div.h>a>span{width:60px;height:60px;display: inline-block;border-radius: 50%;box-shadow: 0 0 10px rgba(0,0,0,.2);}
div.h>a>span:hover{opacity: .8;}
span.qq{background: url(../jk_img/qq.png) center no-repeat;}
span.wx{background: url(../jk_img/wx.png) center no-repeat;}
 span.tel{background: url(../jk_img/tel.png) center no-repeat;}
 span.top{
    background: url(../jk_img/top.png) center no-repeat;
 }
 span.remove{
    background: url(../jk_img/close.png) center no-repeat;
 }
 div.wai{
    position: absolute;
    width: 200px;
    height: 200px;
    border-radius: 400px;
    border: 1px solid #CCC;
    box-shadow: 0 0 10px rgba(0,0,0,.2);
    text-align: center;
    left: -220px;
    background: #fff;
    font-size: 16px;
    padding-top: 30px;
    z-index: 1000;
    box-sizing: border-box;
 }
 div.wxx{
     top:20px;
 }
 div.phone{
     top:100px;
 }
 p.color{
    color: #999;
    font-size: 12px;
 }
 div.phone>p{
     padding:3px 0;
 }
div.no{
    display: none;
}
</style>


