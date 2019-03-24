const express=require("express")
const router=express.Router();
const pool=require("../pool");
//http://localhost:3000/index
//app.use("/index",index)
//   ↓
//http://localhost:3000/index/

// 功能一：尾部热门城市地址
router.get("",(req,res)=>{
    var sql="select * from jk_rscity"
    pool.query(sql,[],(err,result)=>{
        if(err) console.log(err);
        res.send(result)
    })
})

router.get("/fir",(req,res)=>{
    var sql="select * from jk_link"
    pool.query(sql,[],(err,result)=>{
        if(err) console.log(err);
        res.send(result)
    })
})
module.exports=router;