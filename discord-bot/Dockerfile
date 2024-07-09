FROM python:3.10-slim

# 設定工作目錄
WORKDIR /app

# 複製 requirements.txt 並安裝依賴
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# 複製應用程式代碼
COPY . .

# 暴露應用埠
EXPOSE 8000

# 啟動應用
CMD ["python", "app.py"]