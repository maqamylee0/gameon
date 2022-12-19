const express = require('express');
const mongoose = require('mongoose')
const bodyParser = require('body-parser');

const groundSchema = require('./groundSchema')

const app = express();
app.use(express.json());
app.use(bodyParser.urlencoded({extended: true }))
app.use(bodyParser.json())

mongoose.set('strictQuery', false);
const port = 5000;
const url = 'mongodb+srv://user1:pacifique@cluster0.xqgqy.mongodb.net/test'
app.get('/',(req,res) => res.send('hello wrold'));

app.post('/grounds',async (req, res) =>{
  try {
    let data = req.body
    var Ground = new groundSchema(data)
    await Ground.save()
    res.json({
        message: "Ground Created"
   })
}catch (err) {
       res.status(400).json({
           message: err.message
       })
}});

app.get('/grounds',async(req, res) => {
    try {
    let grounds = await groundSchema.find({});
    res.json({
        grounds
   })
}catch (err){
    res.status(400).json({
        message: err.message
    })
}

 });




mongoose.connect(url).then(() => {
   // successful connection
   app.listen(port, ()=> {
       console.log(`server running on port  ${port}`);
   })
}).catch(error => {
   console.error("Failed to start the server due to : ",error)
})