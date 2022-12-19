const express = require('express');
const mongoose = require('mongoose')
const app = express();
mongoose.set('strictQuery', false);
const port = 5000;
const url = 'mongodb+srv://user1:pacifique@cluster0.xqgqy.mongodb.net/test'
app.get('/',(req,res) => res.send('hello wrold'));

mongoose.connect(url).then(() => {
   // successful connection
   app.listen(port, ()=> {
       console.log(`server running on port  ${port}`);
   })
}).catch(error => {
   console.error("Failed to start the server due to : ",error)
})