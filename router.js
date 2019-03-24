import Vue from 'vue'
import Router from 'vue-router'
import index from './views/index.vue'
import products from './views/products.vue'
import detalis from './views/detalis.vue'
import login from './views/login.vue'
import regs from './views/regs.vue'
import NotFound from './views/NotFound.vue'
import shopcard from './views/shopcard.vue'
Vue.use(Router)

export default new Router({
  routes: [
      {path:'/',component:index},
      {path:'/products',component:products},
      {path:'/detalis',component:detalis},
      {path:'/login',component:login},
      {path:'/regs',component:regs},
      {path:'/shopcard',component:shopcard},
      {path:'/*',component:NotFound}
    
  ]
})
