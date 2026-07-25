const express = require("express");

const app = express();

const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
    res.send("DevOps CI/CD Pipeline Running Successfully 🚀");
});

app.get("/health", (req, res) => {
    res.json({
        status: "Healthy"
    });
});

app.get("/version", (req, res) => {
    res.json({
        version: "1.0.0"
    });
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});