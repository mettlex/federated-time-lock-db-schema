-- CreateTable
CREATE TABLE "keys" (
    "id" TEXT NOT NULL,
    "random_bytes_digest" VARCHAR(512) NOT NULL,
    "first_secret_key_digest" VARCHAR(512) NOT NULL,
    "duration_in_seconds" INTEGER NOT NULL DEFAULT 1,
    "encrypted_second_key" VARCHAR(512) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "keys_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "keys_random_bytes_digest_key" ON "keys"("random_bytes_digest");
