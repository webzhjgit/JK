const express=require("express")
const router=express.Router();
const pool=require("../pool");

router.get("/lool",(req,res)=>{
    var p=0;
    var obj={code:1,data:[]}
    var sql="select * from jk_look"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.data[0]=result
        if(p==6){
            res.send(obj)
        }
    })

    var sql="select * from jk_recom"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.data[1]=result
        if(p==6){
          res.send(obj)
        }
    })

    var sql="select * from jk_article"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.data[2]=result
        if(p==6){
          res.send(obj)
        }
    })
    var sql="select * from jk_problem"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.data[3]=result
        if(p==6){
          res.send(obj)
        }
    })
    var sql="select * from jk_userp"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.data[4]=result
        if(p==6){
          res.send(obj)
        }
    })
   
    var sql="select * from jk_problem"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.data[5]=result
        if(p==6){
          res.send(obj)
        }
    })
})


// 商品详情
router.get("/comm",(req,res)=>{
    var pid=req.query.pid;
    var p=0;
    var obj={code:1,data:[]};
    var sql="select * from jk_comm where pro_in=?"
    pool.query(sql,[pid],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.data[0]=result;
        if(p==2){
            res.send(obj);
        }
    })
    var sql="select * from jk_primg where pro_in=?"
    pool.query(sql,[pid],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.data[1]=result;
        if(p==2){
            res.send(obj);
        }
    })
})

// 添加购物车商品
router.get("/shop",(req,res)=>{
    var simg=req.query.img;
    var ctitle=req.query.title;
    var size=req.query.size;
    var color=req.query.color;
    var cprice=req.query.price;
    var num=req.query.num;
    var uid=req.session.uid;
    console.log(uid)
    if(!uid){
       res.send({code:-1})
    }else{
        var sql="INSERT INTO jk_shopcard VALUES(NULL,?,?,?,?,?,?,?)";
        pool.query(sql,[simg,ctitle,size,color,cprice,num,uid],(err,result)=>{
           if(err) throw err;
           if(result.affectedRows > 0){
              res.send({code:1,msg:"添加成功"})
            }
        }) 
    }

})

// 在购物车列表显示商品
router.get("/shopcard",(req,res)=>{
    var uid=req.session.uid
    var sql="SELECT * FROM jk_shopcard WHERE uid=?"
    pool.query(sql,[uid],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

// 删除购物车商品
router.get("/detshop",(req,res)=>{
    var pid=req.query.pid
    var sql="DELETE FROM jk_shopcard where pid=?";
    pool.query(sql,[pid],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows > 0){
            res.send({code:1,msg:"删除成功"})
        }else{
            res.send({code:-1,msg:"删除失败"})
        }
    })
})

module.exports=router;