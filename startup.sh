echo "Clone Git"
git pull origin main

echo "Gradle Build"
./mvnw clean package

echo "Build Image"
docker build -t websocket-maven:0.1 .

echo "Run"
docker compose up -d --build