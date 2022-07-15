const mongoose=require('mongoose');
const Schema = mongoose.Schema;


const UserSchema=new Schema({
name:{
    type: String,
    required: true,
    trim:true
},
email:{
    type: String,
    required: true,
    trim:true,
    validate: {
        validator: (value)=> {
            const email_regx =
            /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
         return value.match(email_regx);
        },
        message: "Check your email format",
      },
      required: [true, 'User email is required']
},
password:{
    type: String,
    required: true,
    trim:true
},
user_type:{
    type: String,
    default: "user"
}
});


const UserModel = mongoose.model('UserModel',UserSchema);

module.exports=UserModel;