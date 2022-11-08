-- CreateTable
CREATE TABLE "Vote" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "votedForId" INTEGER NOT NULL,
    "votedAgainstId" INTEGER NOT NULL,
    CONSTRAINT "Vote_votedForId_fkey" FOREIGN KEY ("votedForId") REFERENCES "City" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Vote_votedAgainstId_fkey" FOREIGN KEY ("votedAgainstId") REFERENCES "City" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "City" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "city" TEXT NOT NULL,
    "region" TEXT NOT NULL,
    "regionCode" TEXT NOT NULL,
    "population" INTEGER NOT NULL,
    "averageRent" INTEGER NOT NULL,
    "walkScore" INTEGER NOT NULL,
    "transitScore" INTEGER NOT NULL,
    "bikeScore" INTEGER NOT NULL,
    "nonViolentCrime" REAL NOT NULL,
    "violentCrime" REAL NOT NULL,
    "crimePercentile" INTEGER NOT NULL
);

-- CreateIndex
CREATE INDEX "Vote_votedForId_idx" ON "Vote"("votedForId");

-- CreateIndex
CREATE INDEX "Vote_votedAgainstId_idx" ON "Vote"("votedAgainstId");
