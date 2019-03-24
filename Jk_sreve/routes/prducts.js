const express=require("express")
const router=express.Router();
const pool=require("../pool");
//http://localhost:3000/index
//app.use("/index",index)
//   ↓
//http://localhost:3000/index/
router.get("",(req,res)=>{
    var pno=req.query.pno;
    var pageSize=req.query.pageSize;
    if(!pno){
        pno=1;
    }
    if(!pageSize){
        pageSize=32;
    }
    var p=0;
    var obj={code:1}
    var sql="select * from jk_prducts limit ?,?";
    var offset=(pno-1)*pageSize;
    pageSize=parseInt(pageSize);
    pool.query(sql,[offset,pageSize],(err,result)=>{
        if(err) throw err;
        p+=50;
        obj.data=result;
        if(p==100){
          res.send(obj)
        }
    })
    var sql='select count(id) as c from jk_prducts';
    pool.query(sql,(err,result)=>{
      if(err) throw err;
      var ps=Math.ceil(result[0].c/pageSize)
      p+=50;
      obj.pageCound=ps;
      if(p==100){
        res.send(obj)
      }
    })
})

module.exports=router;