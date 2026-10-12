# ==========================================
# Voting App - Python Flask
# ==========================================

# 1. Base Image
FROM python:3.12-slim

# 2. Set Working Directory
WORKDIR /app

# 3. Copy Python Dependencies
COPY app/vote/requirements.txt .

# 4. Install Dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy Application Source Code
COPY app/vote/ .

# 6. Document Container Port
EXPOSE 80

# 7. Start Flask Application with Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:app"]