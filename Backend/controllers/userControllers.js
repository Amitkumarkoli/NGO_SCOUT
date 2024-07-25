const Event = require("../models/eventsModel");
const NGO = require("../models/ngoModel");
const User = require("../models/userModel")

/* Add and get user handlers */
const addUserHandler = async (req, res) => {
    try {
        /* Token would be passed */
        const firebaseUid = req.headers.uid;
        const existingUser = await User.findOne({ firebaseUid: firebaseUid })
        if (existingUser) {
            console.log(existingUser)
            return res.status(200).json({ msg: "User Created" });
        }

        const userDetails = req.body;
        userDetails.firebaseUid = firebaseUid;
        const user = await User.create(userDetails);
        if (user) {
            return res.status(201).json({ msg: "User Created" })
        }
    } catch (err) {
        console.log(err.errmsg)
        return res.status(500).json({ err: err.errmsg })
    }
}

const getUserHandler = async (req, res) => {
    try {
        /* Token would be passed */
        const firebaseUid = req.headers.uid;
        const user = await User.findOne({ firebaseUid: firebaseUid })
        if (!user) {
            return res.status(401).json({ msg: "User Not Found" })
        }
        return res.status(200).json(user);
    } catch (err) {
        console.log(err.errmsg)
        return res.status(500).json({ err: err.errmsg })
    }
}


/* Follow and Unfollow handler */
const followUnfollowNgoHandler = async (req, res) => {
    try {
        /* Token would be passed */
        const firebaseUserUid = req.headers.uid;
        const firebaseNGOUid = req.body.uid;

        const user = await User.findOne({ firebaseUid: firebaseUserUid });

        if (user.followedNgos.includes(firebaseNGOUid)) {
            // Unfollow
            await User.findOneAndUpdate(
                { firebaseUid: firebaseUserUid },
                { $pull: { followedNgos: firebaseNGOUid } },
                { new: true }
            )
            return res.status(200).json({ msg: "Unfollowed!" });
        } else {
            // Follow
            await User.findOneAndUpdate(
                { firebaseUid: firebaseUserUid },
                { $addToSet: { followedNgos: firebaseNGOUid } },
                { new: true }
            )
            return res.status(200).json({ msg: "Following!" });
        }
    } catch (err) {
        console.log(err.errmsg)
        return res.status(500).json({ err: err.errmsg })
    }
}

/* Favorites and Unfavorites */
const favoriteUnfavoriteNgoHandler = async (req, res) => {
    try {
        /* Token would be passed */
        const firebaseUserUid = req.headers.uid;
        const firebaseNGOUid = req.body.uid;

        const user = await User.findOne({ firebaseUid: firebaseUserUid });

        if (user.wishlist.includes(firebaseNGOUid)) {
            // Unfollow
            await User.findOneAndUpdate(
                { firebaseUid: firebaseUserUid },
                { $pull: { wishlist: firebaseNGOUid } },
                { new: true }
            )
            return res.status(200).json({ msg: "Removed from favorites!" });
        } else {
            // Follow
            await User.findOneAndUpdate(
                { firebaseUid: firebaseUserUid },
                { $addToSet: { wishlist: firebaseNGOUid } },
                { new: true }
            )
            return res.status(200).json({ msg: "Added to favorites!" });
        }
    } catch (err) {
        console.log(err.errmsg)
        return res.status(500).json({ err: err.errmsg })
    }
}


const attendEventsHandler = async (req, res) => {
    /* Token would be passed */
    const firebaseUid = req.headers.uid;
    const { eventId } = req.params;

    try {
        await Event.findByIdAndUpdate(eventId, { $push: { attendees: firebaseUid } });

        // Check for existing event with the same title, date, and hostedBy
        const user = await User.findOne({
            firebaseUid: firebaseUid
        })
        // console.log(user)
        console.log(eventId)
        if (user.attendedEvents.length > 0 && user.attendedEvents.includes(eventId)) {
            return res.status(409).json({ message: 'Event already attended by user' });
        }

        user.attendedEvents.push(eventId);
        await user.save();

        res.status(200).json({ message: 'Event attended successfully', attendedEvents: user.attendedEvents });
    } catch (error) {
        console.error('Error attending event:', error);
        res.status(500).json({ message: 'Server error', error });
    }
}

const getEventsHandler = async (req, res) => {
    const firebaseUid = req.headers.uid;

    try {
        // Find the User
        const user = await User.findOne({ firebaseUid });
        //   Check if User is found
        if (!user) {
            return res.status(404).json({ message: 'User not found' });
        }

        // Check if attendedEvents is defined and is an array of IDs
        if (!user.attendedEvents || !Array.isArray(user.attendedEvents)) {
            return res.status(200).json({ attendedEvents: [] });
        }

        // Fetch event details using the IDs in the attendedEvents array
        const attendedEvents = await Event.find({
            _id: { $in: user.attendedEvents }
        });

        //   Return the attended events
        res.status(200).json({ attendedEvents });
    } catch (error) {
        console.error('Error retrieving attended events:', error);
        res.status(500).json({ message: 'Server error', error });
    }
}


module.exports = {
    addUserHandler,
    getUserHandler,
    followUnfollowNgoHandler,
    favoriteUnfavoriteNgoHandler,
    attendEventsHandler,
    getEventsHandler
}