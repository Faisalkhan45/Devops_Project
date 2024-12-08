const express = require("express");
const app = express();
const dotenv = require("dotenv");
const bodyParser = require("body-parser");
const cors = require("cors");

dotenv.config();
const port = process.env.PORT || 5000;  // Ensure default port is set if not defined in .env

// Configure CORS to allow only the frontend URL (you can expand this later if needed)
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());  // Added to parse JSON requests
app.use(cors({
    origin: 'http://13.201.91.62:3000',  // Allow only your frontend to access the backend
    methods: ['GET', 'POST', 'PUT', 'DELETE'],  // Specify allowed methods
    allowedHeaders: ['Content-Type', 'Authorization']  // Allow specific headers (if needed)
}));

// Database connection (ensure your conn.js file is correct)
require("./database/conn");

// Define routes for user and blog
const userRoutes = require("./routes/userRoutes");
const blogRoutes = require("./routes/blogRoutes");

// Attach routes to the API
app.use("/api", userRoutes);
app.use("/api", blogRoutes);

// Test route for backend health check
app.get("/", (req, res) => {
    res.send("Express: backend is running");
});

// Post route to log request body
app.post("/", (req, res) => {
    console.log(JSON.stringify(req.body, null, 2));
    res.status(200).send(req.body);
});

// Ensure the backend server listens on all interfaces (0.0.0.0) and the configured port
app.listen(port, "0.0.0.0", () => {
    console.log(`Backend listening at http://0.0.0.0:${port}`);
});

