const express=require("express")
const router=express.Router();
const pool=require("../pool");
//http://localhost:3000/index
//app.use("/index",index)
//   ↓
//http://localhost:3000/index/

// 功能一：头部地址
router.get("",(req,res)=>{
    var sql="select * from jk_rscity where rsid<11"
    pool.query(sql,[],(err,result)=>{
        if(err) console.log(err);
        res.send(result)
    })
})
//功能二：地址字母
router.get("/zi",(req,res)=>{
    var sql="select * from jk_zi"
    pool.query(sql,[],(err,result)=>{
        if(err) console.log(err);
        res.send(result)
    })
})
//功能三：轮播图
router.get("/carousel",(req,res)=>{
    var sql="select * from jk_carousel"
    pool.query(sql,[],(err,result)=>{
        if(err) console.log(err);
        res.send(result)
    })
})

router.get("/zizi",(req,res)=>{
    var p=0;
    var obj={code:1,data:[]}
    var sql="select * from jk_cityA"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.A=result;
        if(p==22){
            res.send(obj.data)
        }
    })
    var sql="select * from jk_cityB"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.B=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityC"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.C=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityD"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.D=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityE"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.E=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityF"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.F=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityG"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.G=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityH"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.H=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityJ"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.J=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityK"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.K=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityL"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.L=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityM"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.M=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityN"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.N=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityP"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.P=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityQ"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.Q=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityR"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.R=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityS"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.S=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityT"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.T=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityW"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.W=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityX"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.X=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityY"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.Y=result;
        if(p==22){
            res.send(obj)
        }
    })
    var sql="select * from jk_cityZ"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        p+=1;
        obj.Z=result;
        if(p==22){
            res.send(obj)
        }
    })
})

router.get("/name",(req,res)=>{
     var uid=req.session.uid
     if(uid!=undefined){
        var sql="select uname from jk_user where uid=?"
         pool.query(sql,[uid],(err,result)=>{
         if(err) throw err;
         res.send({code:1,result})
       })
     }else{
         res.send({code:-1})
     }
     
})

router.get("/tui",(req,res)=>{
    req.session.uid=""
    res.send({code:-1,msg:"退出成功"})
})


module.exports=router;