//使用express构建web服务器 --11:25
const express = require('express');
const bodyParser = require('body-parser');
const pool=require("./pool");
const cors=require("cors");
const header=require("./routes/header");
const footer=require("./routes/footer");
const index=require("./routes/index");
const prducts=require("./routes/prducts");
const detalis=require("./routes/detalis");
const login=require("./routes/login");
// 加载session模块
const session=require("express-session");

var app = express();
var server = app.listen(3000);

app.use(cors({
    origin:[
        "http://localhost:8081",
        "http://localhost:8080"
    ],
    credentials:true
}))

app.use(session({
    secret:"128位随机字符",  //安全字符串
    resave:false,   //每次请求是否更新数据
    saveUninitialized:true,  //初始化时保存数据
    cookie:{
        maxAge:1000*60*60*8     //储存事件
    }
}));
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));

app.use("/rscity",header)
app.use("/footer",footer)
app.use("/index",index)
app.use("/prducts",prducts)
app.use("/detalis",detalis)
app.use("/login",login)


