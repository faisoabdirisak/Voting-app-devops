# ==========================================
# Voting App - Node.js Result Service
# ==========================================

# 1. Use Node.js as the base image
FROM node:22-alpine

# 2. Set the working directory
WORKDIR /app

# 3. Copy dependency manifests
COPY app/result/package*.json ./

# 4. Install production dependencies
RUN npm ci --omit=dev

# 5. Copy application source code
COPY app/result/ .

# 6. Document the application port
EXPOSE 4000

# 7. Start the Node.js application
CMD ["node", "server.js"]