/*
  Warnings:

  - You are about to drop the column `stateId` on the `Karnataka` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `Kerala` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `TamilNadu` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `Telangana` table. All the data in the column will be lost.
  - You are about to drop the `State` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Karnataka" DROP CONSTRAINT "Karnataka_stateId_fkey";

-- DropForeignKey
ALTER TABLE "Kerala" DROP CONSTRAINT "Kerala_stateId_fkey";

-- DropForeignKey
ALTER TABLE "TamilNadu" DROP CONSTRAINT "TamilNadu_stateId_fkey";

-- DropForeignKey
ALTER TABLE "Telangana" DROP CONSTRAINT "Telangana_stateId_fkey";

-- DropIndex
DROP INDEX "Karnataka_stateId_key";

-- DropIndex
DROP INDEX "Kerala_stateId_key";

-- DropIndex
DROP INDEX "TamilNadu_stateId_key";

-- DropIndex
DROP INDEX "Telangana_stateId_key";

-- AlterTable
ALTER TABLE "Karnataka" DROP COLUMN "stateId";

-- AlterTable
ALTER TABLE "Kerala" DROP COLUMN "stateId";

-- AlterTable
ALTER TABLE "TamilNadu" DROP COLUMN "stateId";

-- AlterTable
ALTER TABLE "Telangana" DROP COLUMN "stateId";

-- DropTable
DROP TABLE "State";
