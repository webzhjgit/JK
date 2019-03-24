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
                <h1>登录</h1>
                <!-- 输入行 -->
                <div class="form_body">
                   <!-- 手机号 -->
                    <div class="tal">
                        <span class="text">账号:</span>
                        <input class="inputs" type="text" placeholder="请输入手机号/用户名" name="uname" v-model="uname" >
                   </div>
                   <!-- 密码 -->
                   <div class="tal talls">
                        <span class="text">密&nbsp;&nbsp; 码:</span>
                        <input class="inputs" type="password" placeholder="请输入密码" name="upwd" v-model="upwd">
                   </div>
                    <!-- 手机验证码登陆 -->
                    <div class="talps dis">
                        <span class="text">验证码:</span>
                        <input class="inputs" type="text" placeholder="请输入密码">
                        <button class="btns">发送验证码</button>
                    </div>
                   <!-- 短信验证 -->
                   <p class="p_sms">
                       <a href="javascript:;" id="tal_sms" @mousemove="yanz">用手机验证码登录</a>
                       
                       <router-link to="/regs" id="sms">前往注册</router-link>
                   </p>
                   <!-- 登陆 -->
                   <div class="tal btn">
                       <a class="logins" @click="btns" href="javascript:;">登录</a>
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
        return{
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
            //1:获取用户名和密码
            var u=this.uname;
            var p=this.upwd;
            //2：正则验证格式
            var reg = /^[a-z0-9]{3,12}$/i;
            if(!reg.test(u)){
               Toast("用户名格式不正确，请检查");
               return;
            }
            //3：发送ajax请求
            var url = "http://localhost:3000/";
                 url+="login?uname="+u+"&upwd="+p;
            this.axios.get(url).then((res)=>{
                if(res.data.code==1){
                   setTimeout(()=>{
                      this.$router.push("/")
                   },3000)
                    Toast("登陆成功，即将跳转首页")
                }else{
                    Toast("用户名或密码错误")
                }
                
            })  
        },
        yanz(){
            $(function(){
                $("a#tal_sms").click(function(){
                   var $talps=$("div.talps")
                   var $talls=$("div.talls")
                   $talps.toggleClass("dis")
                     .next().children(":first").html("密码登录")
                   $talls.toggleClass("dis")
                      if(!$talls.hasClass("dis"))
                $("a#tal_sms").html("用手机验证码登录")
            })
                $("input.inputs").focus(function(){
                    $(this).parent().addClass("bor")
                })
                $("input.inputs").blur(function(){
                    $(this).parent().removeClass("bor")
                })
            })
        },
        
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
/* 短信验证父元素 */
p.p_sms{
    width: 100%;
    margin-top: 15px;
    clear: both;
}
/* 短信验证父元素 */
p.p_sms>a{
font-size:14px;
color:#f00;
}
/* 前往注册样式 */
p.p_sms>a#sms{
    float:right;
    color:#ccc;
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
    letter-spacing: 15px;
    line-height:50px;
}
.dis{
    display:none;
}
div.bor{
    border:1px solid #d1cff9;
    box-shadow: 0 0px 10px 0 rgba(0,0,100,.2)
}
</style>


