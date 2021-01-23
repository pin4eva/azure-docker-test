import express from "express";

const app = express();
const PORT = process.env.PORT || 8000;

app.use(express.static("public"));

const startServer = async () => {
  app.listen(PORT, (e) => {
    if (e) {
      console.log(err);
      process.exit(1);
    }
    console.log(`Server started on ${PORT}`);
  });
};

startServer();
