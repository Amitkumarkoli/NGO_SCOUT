const express = require("express")
const { addNgoHandler,getNgoHandler, searchNgo, addEventsHandler, getEventsHandler } = require("../controllers/ngoControllers");

const router = express.Router();

router.post("/", addNgoHandler)
router.get("/", getNgoHandler)
router.get("/search/:query", searchNgo)
router.post("/events",addEventsHandler)
router.get("/events",getEventsHandler)

module.exports=router