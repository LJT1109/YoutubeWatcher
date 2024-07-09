# YoutubeWatcher
 
### [README in Chinese](./README_ch.md)

#### Introduction

This Docker Compose configuration is designed to create a versatile automated bot system with the following functionalities:

1. **Video Monitoring and Summarization**:
   - The bot listens for new videos on YouTube.
   - The video content is transcribed using Whisper.
   - The key points of the video are summarized using a Large Language Model (LLM).

2. **Community Post Translation**:
   - The bot listens for new community posts on YouTube.
   - The posts are translated into the desired language.
   - Notifications are sent to the user.

3. **Multi-Platform Support**:
   - Supports messaging on both Line and Discord platforms.

#### Usage Instructions

1. **Clone the Repository**:

    ```bash
    git clone <your-repository-url>
    cd <your-repository-directory>
    ```

2. **Build and Start the Services**:

    Use Docker Compose to build and start all services:

    ```bash
    docker-compose up --build
    ```

3. **Service Descriptions**:

    - **backend**:
        - Handles video transcription and summarization.
        - Listens for new videos and transcribes them using Whisper.
        - Summarizes the content using a Large Language Model (LLM).
    - **db**:
        - PostgreSQL database for storing relevant data.
    - **phpmyadmin**:
        - Provides a web interface for managing the database.
    - **line-bot**:
        - Bot for the Line platform, responsible for receiving and sending messages.
    - **discord-bot**:
        - Bot for the Discord platform, responsible for receiving and sending messages.
    - **nginx**:
        - Reverse proxy server for routing management.

4. **Configure Environment Variables**:

    Create a `.env` file in the project's root directory and add the following content:

    ```dotenv
    POSTGRES_USER=postgres
    POSTGRES_PASSWORD=postgres
    POSTGRES_DB=postgres
    DATABASE_URL=postgresql://postgres:postgres@db:5432/postgres
    PMA_HOST=db
    PMA_USER=postgres
    PMA_PASSWORD=postgres
    ```

5. **Access the Services**:

    - You can access PhpMyAdmin at `http://localhost:8080`.
    - The Line and Discord bots will automatically monitor new videos and posts, sending notifications through the respective platforms.

#### Project Structure

```plaintext
├── backend
│   ├── Dockerfile
│   └── ...
├── db
│   └── ...
├── discord-bot
│   ├── Dockerfile
│   └── ...
├── line-bot
│   ├── Dockerfile
│   └── ...
├── nginx
│   └── ...
├── docker-compose.yml
└── .env
```

#### Notes

- Ensure Docker and Docker Compose are installed.
- Update the parameters in the `.env` file if any configuration changes are needed.

This system aims to help you conveniently acquire YouTube knowledge and news without opening YouTube, providing the necessary information directly.