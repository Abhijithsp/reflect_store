const express= require('express');

const AuthRouter=express.Router();

AuthRouter.post('/api/signup',(request,response)=>{
    const {username,email,password}=request.body
});
module.exports=AuthRouter;