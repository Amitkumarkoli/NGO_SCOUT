const Event = require("../models/eventsModel");
const NGO = require("../models/ngoModel");
const User = require("../models/userModel")

/* Add and get user handlers */
const addNgoHandler = async (req, res) => {
    try {
        /* Token would be passed */
        const firebaseUid = req.headers.uid;
        const existingNgo = await NGO.findOne({ firebaseUid: firebaseUid })
        if (existingNgo) {
            console.log(existingNgo)
            return res.status(200).json({ msg: "NGO Created" });
        }

        const ngoDetails = req.body;
        ngoDetails.firebaseUid = firebaseUid;
        const ngo = await NGO.create(ngoDetails);
        if (ngo) {
            return res.status(201).json({ msg: "NGO Created" })
        }
    } catch (err) {
        console.log(err.errmsg)
        return res.status(500).json({ err: err.errmsg })
    }
}

const getNgoHandler = async (req, res) => {
    try {
        /* Token would be passed */
        const firebaseUid = req.headers.uid;
        const ngo = await NGO.findOne({ firebaseUid: firebaseUid })
        console.log(ngo)
        if (!ngo) {
            return res.status(401).json({ msg: "NGO Not Found" })
        }
        return res.status(200).json(ngo);
    } catch (err) {
        console.log(err.errmsg)
        return res.status(500).json({ err: err.errmsg })
    }
}

/* Search NGO by there work or name */
const searchNgo = async (req, res) => {
    const { query } = req.params;
    const queryWords = query.split(' ');

    try {
        /* Token would be passed */
        // Create search conditions for name and work fields
        const searchConditions = queryWords.map((word) => ({
            $or: [
                { name: { $regex: word, $options: "i" } },
                { work: { $regex: word, $options: "i" } }
            ]
        }))

        // Search for NGOs by name or work
        const ngos = await NGO.find({ $and: searchConditions });

        res.status(200).json({ ngos });
    } catch (error) {
        res.status(500).json({ message: 'Server error', error });
    }
}

const addEventsHandler = async (req, res) => {
    /* Token would be passed */
    /* NGO id will be get from token */
    const firebaseUid = req.headers.uid;
    const { title, description, date, location } = req.body;

    // Validating required fields
    if (!title || !description || !date || !location || !firebaseUid) {
        return res.status(400).json({ message: 'Missing required fields' });
    }

    try {
        // Check if the date is valid
        const eventDate = new Date(date);
        if (isNaN(eventDate.getTime())) {
            return res.status(400).json({ message: 'Invalid date format' });
        }

        // Check if the NGO exists
        const ngo = await NGO.findOne({ firebaseUid });
        if (!ngo) {
            return res.status(404).json({ message: 'NGO not found' });
        }

        // Check for existing event with the same title, date, and hostedBy
        const existingEvent = await Event.findOne({
            title,
            date: eventDate,
            hostedBy: firebaseUid
        });

        if (existingEvent) {
            return res.status(409).json({ message: 'Event already exists' });
        }

        // Create a new event
        const newEvent = new Event({
            title,
            description,
            date: eventDate,
            location,
            hostedBy: firebaseUid // Using the NGO's ObjectId instead of firebaseUid
        });

        // Save the new event
        const savedEvent = await newEvent.save();

        // Add the event to the NGO's hosted events
        ngo.hostedEvents.push(savedEvent._id);
        await ngo.save();

        res.status(201).json(savedEvent);
    } catch (error) {
        console.error('Error creating event:', error);
        res.status(500).json({ message: 'Server error', error });
    }
}

const getEventsHandler = async (req, res) => {
    /* Token would be passed */
    /* NGO id will be get from token */
    const firebaseUid = req.headers.uid;
    try {
        // Find the NGO and populate the hostedEvents field
        const ngo = await NGO.findOne({ firebaseUid })
        if (!ngo) {
            return res.status(404).json({ message: 'NGO not found' });
        }
        const hostedEvents = await Event.find({
            _id: { $in: ngo.hostedEvents }
        });

        res.status(200).json({ hostedEvents: hostedEvents });
    } catch (error) {
        console.error('Error retrieving hosted events:', error);
        res.status(500).json({ message: 'Server error', error });
    }
}


module.exports = {
    addNgoHandler,
    getNgoHandler,
    searchNgo,
    addEventsHandler,
    getEventsHandler
}