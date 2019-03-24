<template>
    <div>
        <Header></Header>
        <h1>抱歉，页面正在开发中...</h1>
    </div>
</template>

<script>
  import Header from '@/components/Header.vue' 
    export default {
        data(){
            Header:true
        },
           components: {
        "Header":Header
  },
    }
</script>

<style scoped>
   h1{width:500px;height:200px;margin:20px auto}
</style>