<template>
  <div>
    <router-view></router-view>
    <Footer></Footer>
    <Flexd></Flexd>
  </div>
</template>

<script>

// @ is an alias to /src
import Footer from '@/components/Footer.vue'
import Flexd from '@/components/Flexd.vue'
export default {
  name:"App",
  data(){
    return{
      Footer:true,
      Flexd:true
    }
  },
  components: {
    "Footer":Footer,
    "Flexd":Flexd,
  }
}
</script>

<style>
*{margin:0;padding:0;}
</style>

