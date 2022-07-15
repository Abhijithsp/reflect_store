///import 
const express= require('express');
const AuthRouter=require('./router/auth');
const mongoose = require('mongoose');
///initial 

const app=express();
const port=3000;
const MongoDBUrl='mongodb+srv://flutterapp_db:yXq77QdpLzNu90h7@cluster0.4pvmc.mongodb.net/?retryWrites=true&w=majority'

///MidlleWare

app.use(AuthRouter);

///Connect to MongoDB

 mongoose.connect(MongoDBUrl).then(()=>{
    console.log(`DB is live`);
}).catch(error=>{
    console.log(`DB ${error}`);
})


///API

app.listen(port,'0.0.0.0',()=>{
    console.log(`Server is live`);
});


///Get request

app.get('/',(_request,_response)=>{
    _response.json({hell:'hrllo'});
});