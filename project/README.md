# QuakeWatch - Flask Docker Application

## Description
Simple Flask app that returns "Hello, World!" when accessed.

## Requirements
- Docker installed
- Docker Compose installed

## Build and Run

### Step 1: Build the Docker Image
```bash
docker build -t <your-dockerhub-username>/quakewatch:latest .
```

### Step 2: Run the Container
```bash
docker run -d -p 5000:5000 <your-dockerhub-username>/quakewatch:latest
```

### Step 3: Access the Application
Open your browser and go to:
http://localhost:5000

## Using Docker Compose
```bash
docker-compose up --build
```

## Push to Docker Hub
```bash
docker login
docker tag <image-id> <your-dockerhub-username>/quakewatch:latest
docker push <your-dockerhub-username>/quakewatch:latest
```

## Notes
- Ensure port 5000 is available.
- Replace `<your-dockerhub-username>` with your actual Docker Hub username.
