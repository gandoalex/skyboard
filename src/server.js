import express from "express";

const app = express();
const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send("Bienvenue sur skyboard 🚀 pour la formation");
});

app.listen(PORT, () => {
  console.log(`Skyboard tourne sur http://localhost:${PORT}`);
});