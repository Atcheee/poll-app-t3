-- CreateTable
CREATE TABLE "Poll" (
    "id" TEXT NOT NULL,
    "prompt" TEXT NOT NULL,

    CONSTRAINT "Poll_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Answer" (
    "id" TEXT NOT NULL,
    "pollId" TEXT,
    "text" TEXT NOT NULL,

    CONSTRAINT "Answer_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Response" (
    "id" TEXT NOT NULL,
    "answerId" TEXT,

    CONSTRAINT "Response_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "Answer_pollId_idx" ON "Answer"("pollId");

-- CreateIndex
CREATE INDEX "Response_answerId_idx" ON "Response"("answerId");

-- CreateIndex
CREATE INDEX "Account_userId_idx" ON "Account"("userId");
