// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import 'mint-ui/lib/style.css'
import router from './router'
import $ from 'jquery'
import axios from 'axios'
import Vuex from 'vuex'
axios.defaults.withCredentials=true;
Vue.prototype.axios=axios; 

Vue.use(ElementUI);
Vue.use(Vuex);
Vue.config.productionTip = false

var store=new Vuex.Store({
  //存储全局共享的数据
  state:{
    cartCount: sessionStorage.getItem("cartCount")||0  //共享数据：购物车中商品数量
  }, 
  //修改和操作共享数据方法
  mutations:{
    //购物车中数据加1   点击商品详情[加入购物车]
    increment(state){
      state.cartCount++;  
    },
    //显示购物车列表数量时
    updateCount(state,count){
      state.cartCount=count;
      sessionStorage.setItem("cartCount",count)
    }
  },
  //获取全局共享数据方法 
  getters:{
    //获取购物车中数量的方法
    optCartCount:function(state){
      return state.cartCount;
    }
  }
})

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>'
  
})
