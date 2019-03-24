const express=require("express")
const router=express.Router();
const pool=require("../pool");
// 登录语句
router.get("",(req,res)=>{
    var uname=req.query.uname;
    var upwd=req.query.upwd;
    var sql="select * from jk_user where uname=? and upwd=?"
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err;
        if(result.length==0){
            res.send({code:-1,msg:"用户名或密码错误"});
        }else{
            //将用户登录凭证保存在服务器端session对象中
            var id=result[0].uid
            req.session.uid=id
            res.send({code:1,msg:"登陆成功"})
        }
    })
})

//注册账号
router.get("/regs",(req,res)=>{
    var phone=req.query.phone;
    var code=req.query.code;
    var uname=req.query.uname;
    var upwd=req.query.upwd;
    var sql="INSERT INTO jk_user VALUES(NULL,?,NULL,?,?,NULL,?)";
    pool.query(sql,[uname,upwd,code,phone],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows > 0){
            res.send({code:1,msg:"添加成功"});
          }else{
            res.send({code:-1,msg:"添加失败"});
          }
    })
})

//查询用户名是否存在
router.get("/regss",(req,res)=>{
    var uname=req.query.uname
    var sql="select * from jk_user where uname=?"
    pool.query(sql,[uname],(err,result)=>{
        if(err) throw err;
        if(result.length>1){
            res.send({code:1,data:"用户名已存在"})
        }else{
            res.send({code:-1,data:"用户名不存在"})
        }
        
    })
})
module.exports=router;