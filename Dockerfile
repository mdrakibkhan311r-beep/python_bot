FROM python:3.11-slim

WORKDIR /app

# লাইব্রেরি ইনস্টল
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# কোড কপি করা
COPY . .

# Telegram bot রান করার কমান্ড
CMD ["python", "bot.py"]

