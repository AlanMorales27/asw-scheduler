FROM node:24-alpine AS base

# 
# Install project dependencies 
#
FROM base AS deps
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci

#
# Build the application for production
#
FROM base AS builder
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .
RUN npm run build

#
# Run the application in production mode
#
FROM base AS runner
WORKDIR /app
ENV NODE_ENV=production
ENV PORT=3000
ENV HOSTNAME=0.0.0.0

COPY --from=builder /app/public ./public
COPY --from=builder /app/.next/standalone ./.next/standalone
COPY --from=builder /app/.next/static ./.next/static

EXPOSE 3000
CMD ["node", "server.js"]
