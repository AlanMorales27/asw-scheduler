-- CreateEnum
CREATE TYPE "class_status" AS ENUM ('Vista', 'Programada', 'Cancelada');

-- CreateTable
CREATE TABLE "classes" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "scheduled_date" DATE NOT NULL,
    "scheduled_hour" TEXT NOT NULL,
    "status" "class_status" NOT NULL DEFAULT 'Programada',
    "raw_response" JSONB,
    "create_at" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_at" TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "classes_pkey" PRIMARY KEY ("id")
);
