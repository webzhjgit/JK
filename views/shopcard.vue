<template>
<div>
    <Header></Header>
   <div class="contian_f">
<!--字体-->
    <div class="contain_text">
        <p>我的购物车</p>
    </div>
<!--列表-->
    <form>
       <table class="w">
          <thead class="theade">
             <tr>
                <th class="first" style="width:72px">
                   <input type="checkbox" :checked="allcb" @click="selectAll" title="全选">
                </th>
                <th style="width:36px" class="firs">全选</th>
                <th colspan="2">商品</th>
                <th style="width:8%">单价</th>
                <th style="width:8%">数量</th>
                <th style="width:8%">金额</th>
                <th style="width:10%">操作</th>
             </tr>
          </thead>
          <tbody v-for="(item,i) of list" :key="i">
              <tr class="tr2">
                  <td>
                    <input type="checkbox" :data-i="i" @click="itemcb" :checked="item.cb">
                  </td>
                  <td colspan="2">
                      <a href="javascript:;">
                          <img class="imgss" :src="item.simg" alt="" width="90" height="58">
                      </a>
                  </td>
                  <td class="l">
                      <p>
                        <a href="#" :title="item.ctitle">{{item.ctitle}}</a>
                      </p>
                      <p>
                          <a href="#" class="c999">尺寸:{{item.size}};颜色分类:{{item.color}}</a>
                      </p>
                  </td>
                  <td>￥{{item.cprice}}</td>
                  <td>
                     <div class="number">
                        <a href="javascript:;" @click="minus(i)">-</a>
                        <input class="num" v-model="item.num">
                        <a href="javascript:;" @click="add(i)">+</a>
                     </div>
                  </td>
                  <td>￥
                     <span>{{item.cprice*item.num}}</span>
                  </td>
                  <td>
                     <a class="c6" href="javascript:;" @click="det" :data-id="item.pid">删除</a>
                  </td>
              </tr>
          </tbody>
          <tfoot>
              <tr>
                  <th class="first">
                    <input type="checkbox" @click="selectAll" :checked="allcb" title="全选">
                  </th>
                  <th>全选</th>
                  <th colspan="8" class="r"> 
                     <span>
                       已选
                        <b>{{$store.getters.optCartCount}}</b>
                        件商品
                     </span>
                     <span>商品总价（不含运费）</span>
                     <span class="thprice">
                        <span>￥{{money}}</span>
                        <span></span>
                     </span>
                  </th>
              </tr>
          </tfoot>
       </table>
    </form>
    <div class="mt20">
        <router-link to="/products" class="btnes shang" href="javascript:;">继续购物</router-link>
        <router-link to="/ss" class="btnes xia" href="JavaScript:;">去结算</router-link>
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
           num:0,
           money:0,
           list:[],
           allcb:true  //保存全选框的状态
       }
   },
   methods:{
      shopcard(){
          var url="http://localhost:3000/detalis/shopcard"
          this.axios.get(url).then((result)=>{
              var row=result.data
              //修改全局购物车数量  VueX
              this.$store.commit("updateCount",row.length)
              for(var i=0;i<row.length;i++){
                  row[i].cb=true;
                     this.num+=row[i].num;
                     this.money+=row[i].num*row[i].cprice       
              }   
              console.log(row)
              this.list=row 
              this.$store.commit("updateCount",this.list.length)
          })
      },
      add(i){
          var list=this.list;
          list[i].num++
          this.money+=list[i].cprice
      },
      minus(i){
          var list=this.list;
          list[i].num--
          if(list[i].num<1){
              list[i].num=1
              this.money+=list[i].cprice
          }
          this.money-=list[i].cprice
       },
       selectAll(e){
          var cb=e.target.checked
          this.allcb=cb;
          for(var item of this.list){
              item.cb=cb
          }
       },
       itemcb(e){
           var idx=e.target.dataset.i
           var checked=e.target.checked
           this.list[idx].cb=checked
           console.log(this.list[idx].cb)
           var c=0;
           for(var item of this.list){
               if(item.cb){
                   c++
               }
           }
           if(c==this.list.length){
               this.allcb=true;
           }else{
               this.allcb=false
           }
       },
      det(e){
          alert("是否删除")
         var pid=e.target.dataset.id 
         var url="http://localhost:3000/detalis/detshop?pid="+pid;
         this.axios.get(url).then((res)=>{
             if(res.data.code=1){
                 Toast("删除成功")
                 this.shopcard()
                 this.money=0;
                //  this.$router.go(0)
             }else{
                 Toast("删除失败")
             }
         })
      },
   },
   created(){
       this.shopcard(); 
   },
   components: {
    "Header":Header
  },
}
</script>

<style>
*{margin:0;padding:0;}
ul{
   list-style: none;
}
a{
    text-decoration: none;
    color: #333;
}
a:hover{
    opacity: .8;
}
div.contian_f{
    width:1200px;
    height:auto;
    margin:auto;
}
div.contain_text{
    margin:20px;
}
div.contain_text>p{
    font-size: 24px;
    color:#666;
}
/* 购物车列表 */
table.w,.tfoot{
    width:1200px;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
    font-size:13px;
}
table.w th{
    height: 35px;
    line-height: 35px;
    background: #eee;
    border-right: 1px solid #fff;
    font-weight: 400;
    color: #676767;
}
.theade{
   background: #ddd;
}

table>thead>tr>th.firs{
    border-left-color: #eee;
}
table th.first{
    border-left-color: #ddd;
    border-right:0;
}
.tr2{
    background:#fefef4;
}
table td{
    vertical-align: middle;
    padding: 10px 0;
    background: #fefef4;
    text-align: center;
}
table .imgss{
    padding: 1px;
    background: #fff;
    border: 1px solid #ddd;
    vertical-align: middle;
}
.l{
    text-align: left!important;
    padding:0 10px;
}
td a.c999{
    color:#999;
}
.number{
    width: 100px;
    margin-left: 19px;
    margin-right: auto;
}
.number a{
    display:inline-block;
    width: 21px;
    height: 20px;
}
.num{
    width: 40px;
    height: 18px;
    border: 1px solid #666;
    padding: 0;
    margin: 0;
    line-height: 18px;
    text-align: center;
    font-size: 14px;
    color: #555;
    background: 0 0;
}
.c6{
    color:#666;
}
.r{
    text-align: right!important;
}
.thprice{
    padding-right: 20px;
    color:#cf000e;
    font-size:20px;
    font-weight: 400;
}
.mt20{
    margin:20px 0;
    text-align: right;
}
.mt20>a.btnes{
    display: inline-block;
    width: 155px;
    height: 41px;
    text-align: center;
    line-height: 40px;
    font-size: 13px;
}
.shang{
    border:1px solid #cf000e;
    color:#cf000e;
}
.xia{
    background:#cf000e;
    color:#fefef4;
}
</style>
