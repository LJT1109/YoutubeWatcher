# YoutubeWatcher

#### 介紹

這個 Docker Compose 配置檔案設計了一個多功能的自動化機器人系統，旨在監聽 YouTube 上的新影片或社群貼文，並提供以下功能：

1. **影片監聽與總結**：
   - 機器人會監聽 YouTube 上的新影片。
   - 影片內容將通過 Whisper 進行文字辨識。
   - 使用大型語言模型（LLM）總結影片的重點。

2. **社群貼文翻譯**：
   - 機器人會監聽 YouTube 上的新社群貼文。
   - 將貼文翻譯成用戶指定的語言。
   - 透過訊息通知用戶。

3. **多平台支援**：
   - 支援 Line 和 Discord 兩種平台的訊息通知。

#### 使用說明

1. **克隆這個倉庫**：

    ```bash
    git clone <你的倉庫網址>
    cd <你的倉庫目錄>
    ```

2. **構建和啟動服務**：

    使用 Docker Compose 構建並啟動所有服務：

    ```bash
    docker-compose up --build
    ```

3. **服務介紹**：

    - **backend**：
        - 處理影片的辨識和總結。
        - 監聽新影片並透過 Whisper 進行文字辨識。
        - 使用大型語言模型（LLM）總結影片內容。
    - **db**：
        - PostgreSQL 數據庫，用於存儲相關數據。
    - **phpmyadmin**：
        - 提供數據庫管理界面。
    - **line-bot**：
        - Line 平台的機器人，負責接收和發送訊息。
    - **discord-bot**：
        - Discord 平台的機器人，負責接收和發送訊息。
    - **nginx**：
        - 反向代理伺服器，用於服務的路由管理。

4. **配置環境變數**：

    在項目根目錄下創建一個 `.env` 文件，並添加以下內容：

    ```dotenv
    POSTGRES_USER=postgres
    POSTGRES_PASSWORD=postgres
    POSTGRES_DB=postgres
    DATABASE_URL=postgresql://postgres:postgres@db:5432/postgres
    PMA_HOST=db
    PMA_USER=postgres
    PMA_PASSWORD=postgres
    ```

5. **訪問服務**：

    - 你可以通過 `http://localhost:8080` 訪問 PhpMyAdmin。
    - Line 機器人和 Discord 機器人會自動監聽新影片和貼文，並通過相應的平台通知你。

#### 文件結構

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

#### 注意事項

- 請確保已安裝 Docker 和 Docker Compose。
- 如果需要更改配置，請更新 `.env` 文件中的相應參數。

希望這個系統能夠幫助你更方便地獲取 YouTube 的知識和新聞，無需打開 YouTube 即可獲得所需資訊。