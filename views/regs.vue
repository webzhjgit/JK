<template>
    <div>
        <Header></Header>
         <div class="bg">
    <!-- 图片 -->
    <div>
        <img src="../jk_img/c90.jpg" alt="">
    </div>
    <!-- 登陆选项父元素 -->
    <div class="logon">
      <!-- 选项form -->
      <div class="logon_form">
          <form action="" method="POST">
              <h1>新用户注册</h1>
              <!-- 输入行 -->
              <div class="form_body">
                 <!-- 手机号 -->
                  <div class="tal">
                      <span class="text">手机号:</span>
                      <input class="inputs" type="text" placeholder="请输入手机号" name="phone" v-model="phone">
                 </div>
                  <!-- 手机验证码登陆 -->
                  <div class="talps">
                    <span class="text">验证码:</span>
                    <input class="inputs" type="text" placeholder="请输入验证码" name="code" v-model="code">
                    <a href="javascript:;" class="btns">发送验证码</a>
                </div>
                <!-- 姓名 -->
                <div class="tal">
                    <span class="text">用户名:</span>
                    <input class="inputs" type="text" placeholder="请输入用户名" name="uname" v-model="uname">
                </div>
                 <!-- 密码 -->
                 <div class="tal talls">
                      <span class="text">密&nbsp;&nbsp; 码:</span>
                      <input class="inputs" type="password" placeholder="长度不短于6位" name="upwd" v-model="upwd">
                 </div>
                 
                 <!-- 登陆 -->
                 <div class="tal btn">
                     <a class="logins" @click="btns" href="javascript:;">完成注册</a>
                 </div>
              </div>
          </form>
      </div>
    </div>
</div>
    </div>
</template>

<script>
  import {Toast} from "mint-ui" 
  import Header from '@/components/Header.vue'
export default {
    data(){
        return {
            phone:"",
            code:"",
            uname:"",
            upwd:"",
            Header:true
        }
    },
   components: {
    "Header":Header
   },
    methods:{
        btns(){
          var p=this.phone;
          var c=this.code;
          var u=this.uname;
          var d=this.upwd;
          var reg = /^[a-z0-9]{11}$/i;
          if(!reg.test(p)){
              Toast("手机号码格式不正确，请检查");
               return;
          }
          var res = /^[a-z0-9]{3,12}$/i;
            if(!res.test(u)){
               Toast("用户名格式不正确，请检查");
               return;
            }
          var url="http://localhost:3000/login/regss?uname="+u;
          this.axios.get(url).then((res)=>{
            if(res.data.code==1){
                 Toast("用户名已存在")
                 return;
            }else if(res.data.code == -1){
                var url="http://localhost:3000/login/regs?"
                    url+="phone="+p
                    url+="&code="+c
                    url+="&uname="+u
                    url+="&upwd="+d;
                this.axios.get(url).then((res)=>{
                    if(res.data.code==1){
                        Toast("注册成功,即将跳转登录页面")
                        var id=setTimeout(()=>{
                            this.$router.push("/login")
                        },2000)  
                     }
                })
              }    
          })  
        }
    }
}
</script>


<style>
*{
    margin:0;
    padding:0;
}
a{
    text-decoration: none;
}
a:hover{
    opacity: .8;
}
ul{
    list-style: none;
}
/* 整体父元素 */
.bg{
    width:1200px;
    height:505px;
    margin:15px auto;
    display: flex;
    justify-content: space-between; 
    box-shadow: 0 1px 4px 0 transparent, 
    0 6px 10px 0 rgba(0,0,0,.3), 
    0 2px 2px 0 rgba(0,0,0,.2);
}
/* 登录选项父元素 */
div.logon{
    width: 298px;
    height: 505px;
    border-left: 1px solid #f2f2f2;
    box-sizing: border-box;
}
/* 登录字体父元素 */
div.logon_form{
    width: 100%;
    height: auto;
    padding: 0 15px;
    border-radius: 5px;
    background: #fff;
    box-sizing: border-box;
}        
/* 登录字体样式 */
.logon_form h1{
    height: 80px;
    text-align: center;
    font-size: 28px;
    font-weight: 500;
    line-height: 80px;
    border-bottom: 1px solid #E4E4E4;
    margin-top: 0;
    margin-bottom: 0;
}
/* 输入块父元素 */
div.form_body{
    width: 100%;
    padding: 20px 0 0;
}
/* 输入框父元素 */
div.tal{
    width:100%;
    height:48px;
    position: relative;
    margin-bottom: 20px;
    border:1px solid #cccccc;
    border-radius: 3px;
}
/* 输入框提示字体 */
.text{
    display: inline-block;
    position: absolute;
    left: 20px;
    top: 0;
    width: 80px;
    font-size: 16px;
    line-height: 48px;
    font-weight: 400;
}
/* 文本框样式 */
.inputs{
    position:absolute;
    top:17px;
    left:80px;
    border: none;
}
/* 点击文本框去除边框 */
.inputs:focus{
    outline: 0;
}
/* 手机验证码登录 */
div.talps{
    width:100%;
    height:48px;
    position: relative;
    margin-bottom: 20px;
    border:1px solid #cccccc;
    border-radius: 3px;
}
/* 发送验证码按钮 */
.btns{
    width: 100px;
    border: none;
    line-height: 48px;
    font-size: 13px;
    color: #cf000e;
    border-radius: 3px;
    background: 0 0;
    margin-left: 20px;
    padding-top: 0;
    text-align: center;
    position: absolute;
    right: 0;
    top: 0;
}
/* 发送验证码按钮效果 */
.btns:hover{
    background:#f00;
    color:#fff;
}
/* 登录按钮 */
div.btn{
    border:none;
    margin-top: 20px;
    text-align: center;
}
/* 登录按钮字体 */
a.logins{
    display: block;
    width:100%;
    background:#f00;
    color:#fff;
    font-size:20px;
    border-radius: 3px;
    line-height:50px;
}

div.bor{
    border:1px solid #d1cff9;
    box-shadow: 0 0px 10px 0 rgba(0,0,100,.2)
}
</style>

