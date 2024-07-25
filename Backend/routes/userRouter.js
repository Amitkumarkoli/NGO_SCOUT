const express = require("express")
const { addUserHandler, getUserHandler, followUnfollowNgoHandler, favoriteUnfavoriteNgoHandler, attendEventsHandler,getEventsHandler } = require("../controllers/userControllers");

const router = express.Router();

router.post("/", addUserHandler)
router.get("/", getUserHandler)
router.post("/follow", followUnfollowNgoHandler)
router.post("/wishlist", favoriteUnfavoriteNgoHandler)
router.get("/attend/:eventId",attendEventsHandler)
router.get("/events",getEventsHandler)

module.exports=router