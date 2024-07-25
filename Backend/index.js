const express = require("express");
require("dotenv").config();
require("./controllers/connection").connectDB()
const userRouter = require("./routes/userRouter")
const ngoRouter = require("./routes/ngoRouter")

const PORT = process.env.PORT || 3000
const app = express()

/* Middleware */
app.use(express.json())

/* Routes */
app.use("/api/users", userRouter)
app.use("/api/ngos", ngoRouter)

app.listen(PORT, () => {
    console.log(`Server Started on PORT: ${PORT}`)
})