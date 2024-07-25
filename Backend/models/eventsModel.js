const mongoose = require('mongoose');

const eventSchema = mongoose.Schema({
    title: {
        type: String,
        required: true
    },
    description: {
        type: String,
        required: true
    },
    date: {
        type: String,
        required: true
    },
    location: {
        type: String,
        required: true
    },
    hostedBy: {
        type: String,
        ref: 'NGO',
        required: true
    },
    attendees: [{
        type: String,
        default: []
    }]
});

const Event = mongoose.model('event', eventSchema);
module.exports = Event;