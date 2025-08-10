# Docker-NodeApp-LiveUpdate
live-node/

 ├─ Dockerfile
 
 ├─ package.json
 
 ├─ package-lock.json
 
 └─ index.js

docker build -t live-node .

docker run -it --rm \

  -v $(pwd):/app \
  
  -w /app \
  
  -p 3000:3000 \
  
  live-node

Test

Go to http://localhost:3000 → you’ll see "Hello from Docker live reload!"

Edit index.js on your host, change the text, save.

Refresh browser → changes appear instantly without restarting the container.
