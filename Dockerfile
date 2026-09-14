FROM node:24-alpine AS base
WORKDIR /app

#
# Install project dependencies
#
FROM base AS deps
COPY package.json package-lock.json ./
RUN npm ci

#
# Run database migrations
#
FROM deps AS migrator
COPY prisma ./prisma
COPY prisma.config.ts ./
CMD ["npx", "prisma", "migrate", "deploy"]

#
# Build the application for production
#
FROM base AS builder
COPY --from=deps /app/node_modules ./node_modules
COPY . .
# Dummy value to avoid Prisma error when building the app.
ENV DIRECT_URL=postgresql://placeholder:placeholder@localhost:5432/placeholder  

RUN npx prisma generate
RUN npm run lint
RUN npm run build

#
# Run the application in production mode
#
FROM base AS runner
ENV NODE_ENV=production
ENV PORT=3000
ENV HOSTNAME=0.0.0.0

COPY --from=builder /app/public ./public
COPY --from=builder /app/.next/standalone ./
COPY --from=builder /app/.next/static ./.next/static

EXPOSE 3000
CMD ["node", "server.js"]
