import express, { NextFunction, Request, Response } from 'express';

const app = express();
const port = process.env.PORT ?? 3000;

app.get('/', (req: Request, res: Response) => {
  res.send('Hello, World! from V2');
});

app.use((req: Request, res: Response, next: NextFunction) => {
  console.log(`${Date.now()} - ${req.method} ${req.url}}`)
  next();
})

app.listen(port, () => {
  console.log(`V2 Server running on port ${port}`);
});
