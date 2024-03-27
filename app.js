import "dotenv/config";

import express from "express";

import { router } from "./src/routers/router.js";
const app = express();

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use("/api", router);

router.use((req, res) => {
  res.status(404).json("Not found");
});

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
  console.log(`Listening on http://localhost:${PORT}`);
});