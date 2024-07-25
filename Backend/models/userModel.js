const mongoose = require("mongoose")

const userSchema = mongoose.Schema({
    firebaseUid: {
        type: String,
        required: true,
        unique: true
    },
    userType: {
        type: String,
        required: true,
    },
    name: {
        type: String,
        required: true,
        min: 3,
        max: 20,
    },
    email: {
        type: String,
        required: true,
        unique: true,
        max: 50,
    },
    password: {
        type: String,
        required: true,
        min: 8,
    },
    followedNgos: [{
        type: String,
        default: []
    }],
    wishlist: [{
        type: String,
        default: []
    }],
    attendedEvents: [{
        type: String,
    }],
    createdAt: {
        type: Date,
        default: () => {
            return new Date();
        }
    }
})

const User = mongoose.model("user", userSchema);
module.exports = User;