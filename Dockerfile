FROM gradle:8.9.0-jdk21-alpine

WORKDIR /home/gradle/self-hosted-runner-test-drive
COPY . .

RUN gradle build --no-daemon

CMD ["gradle", "run", "--no-daemon"]
