const mongoose = require('mongoose')

const groundSchema = new mongoose.Schema({
    title: {
        type: String,
        required: true
    },
    location: {
            type: String,
            required: true
        },
     urlToImage: {
             type: String,
             required: true
         },
    pitchType: {
            type: String,
            required: true
        },

     distance: {
             type: String,
             required: true
         },
     cost: {
             type: String,
             required: true
         },


})

const Ground = mongoose.model('Ground', groundSchema);
module.exports = Ground;
