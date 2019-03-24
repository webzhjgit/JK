const express=require("express")
const router=express.Router();
const pool=require("../pool");
//http://localhost:3000/index
//app.use("/index",index)
//   ↓
//http://localhost:3000/index/

router.get("",(req,res)=>{
    var sql="select * from jk_room"
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

module.exports=router;