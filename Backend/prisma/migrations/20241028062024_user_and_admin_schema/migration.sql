/*
  Warnings:

  - You are about to drop the `Document` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Scheme` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_User Schemes` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `AdhaarId` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Caste_certificate` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Degree_certificate` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Driver_licence` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Health_insurance` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Income_tax_returns` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Medical_certificate` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Salary_Slip` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `voterId` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Document" DROP CONSTRAINT "Document_userId_fkey";

-- DropForeignKey
ALTER TABLE "_User Schemes" DROP CONSTRAINT "_User Schemes_A_fkey";

-- DropForeignKey
ALTER TABLE "_User Schemes" DROP CONSTRAINT "_User Schemes_B_fkey";

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "AdhaarId" TEXT NOT NULL,
ADD COLUMN     "Caste_certificate" TEXT NOT NULL,
ADD COLUMN     "Degree_certificate" TEXT NOT NULL,
ADD COLUMN     "Driver_licence" TEXT NOT NULL,
ADD COLUMN     "Health_insurance" TEXT NOT NULL,
ADD COLUMN     "Income_tax_returns" TEXT NOT NULL,
ADD COLUMN     "Medical_certificate" TEXT NOT NULL,
ADD COLUMN     "Salary_Slip" TEXT NOT NULL,
ADD COLUMN     "voterId" TEXT NOT NULL;

-- DropTable
DROP TABLE "Document";

-- DropTable
DROP TABLE "Scheme";

-- DropTable
DROP TABLE "_User Schemes";

-- CreateTable
CREATE TABLE "Admin" (
    "adminId" TEXT NOT NULL,
    "password" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Admin_adminId_key" ON "Admin"("adminId");
