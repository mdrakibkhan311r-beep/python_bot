# Python 3.11 ব্যবহার
FROM python:3.11-slim

# কাজের ডিরেক্টরি
WORKDIR /app

# লাইব্রেরি ইনস্টল
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# সব কোড কপি করা
COPY . .

# Discord বট রান করার কমান্ড
CMD ["python", "bot.py"]
