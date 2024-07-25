const mongoose = require("mongoose")

const ngoSchema = mongoose.Schema({
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
    work: {
        type: String,
        required: true,
    },
    followers: {
        type: Number,
        default: 0
    },
    rating: {
        type: Number,
        default: 0
    },
    location: {
        type: String,
        required: true
    },
    description: {
        type: String,
        required: true,
        min: 10
    },
    employees: {
        type: Number,
        default: 0
    },
    hostedEvents: [{
        type: String,
    }],
    createdAt: {
        type: Date,
        default: () => {
            return new Date();
        }
    }
})

const NGO = mongoose.model("ngo", ngoSchema);
module.exports = NGO;