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

-- CreateTable
CREATE TABLE "State" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "State_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TamilNadu" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "stateId" INTEGER,

    CONSTRAINT "TamilNadu_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AmmaUnavagamApplication" (
    "id" SERIAL NOT NULL,
    "tamilNaduId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "familyIncome" DOUBLE PRECISION NOT NULL,
    "aadhaar" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "AmmaUnavagamApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "NaanMudhalvanApplication" (
    "id" SERIAL NOT NULL,
    "tamilNaduId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "educationalQualification" TEXT NOT NULL,
    "skillSet" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "NaanMudhalvanApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BreakfastSchemeApplication" (
    "id" SERIAL NOT NULL,
    "tamilNaduId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "schoolName" TEXT NOT NULL,
    "numberOfStudents" INTEGER NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "BreakfastSchemeApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MGNREGAApplication" (
    "id" SERIAL NOT NULL,
    "tamilNaduId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "jobCardNumber" TEXT NOT NULL,
    "workDetails" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "MGNREGAApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Telangana" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "stateId" INTEGER,

    CONSTRAINT "Telangana_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "KalyanaLakshmiApplication" (
    "id" SERIAL NOT NULL,
    "telanganaId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "brideName" TEXT NOT NULL,
    "groomName" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,
    "marriageInvitationCard" TEXT NOT NULL,
    "ageProof" TEXT NOT NULL,
    "aadhaar" TEXT NOT NULL,
    "panCard" TEXT NOT NULL,

    CONSTRAINT "KalyanaLakshmiApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "RythuBandhuApplication" (
    "id" SERIAL NOT NULL,
    "telanganaId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,
    "landOwnershipDocuments" TEXT NOT NULL,

    CONSTRAINT "RythuBandhuApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AasaraPensionApplication" (
    "id" SERIAL NOT NULL,
    "telanganaId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "identityProof" TEXT NOT NULL,
    "ageProof" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "AasaraPensionApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "RythuBimaApplication" (
    "id" SERIAL NOT NULL,
    "telanganaId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "identityProof" TEXT NOT NULL,
    "landOwnershipDocuments" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "RythuBimaApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Kerala" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "stateId" INTEGER,

    CONSTRAINT "Kerala_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "KudumbashreeApplication" (
    "id" SERIAL NOT NULL,
    "keralaId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "familyIncome" DOUBLE PRECISION NOT NULL,
    "aadhaar" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "KudumbashreeApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EmploymentSchemeApplication" (
    "id" SERIAL NOT NULL,
    "keralaId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "educationalQualification" TEXT NOT NULL,
    "skillSet" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "EmploymentSchemeApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "KSFEApplication" (
    "id" SERIAL NOT NULL,
    "keralaId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "loanAmount" DOUBLE PRECISION NOT NULL,
    "repaymentPeriod" INTEGER NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "KSFEApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AardramApplication" (
    "id" SERIAL NOT NULL,
    "keralaId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "healthIssue" TEXT NOT NULL,
    "requiredAssistance" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "AardramApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Karnataka" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "stateId" INTEGER,

    CONSTRAINT "Karnataka_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GramaOneApplication" (
    "id" SERIAL NOT NULL,
    "karnatakaId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "serviceRequired" TEXT NOT NULL,
    "aadhaar" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "GramaOneApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BhagyalakshmiApplication" (
    "id" SERIAL NOT NULL,
    "karnatakaId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "familyIncome" DOUBLE PRECISION NOT NULL,
    "childBirthDate" TIMESTAMP(3) NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "BhagyalakshmiApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "KSHCLApplication" (
    "id" SERIAL NOT NULL,
    "karnatakaId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "loanAmount" DOUBLE PRECISION NOT NULL,
    "repaymentPeriod" INTEGER NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "KSHCLApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "KSDCApplication" (
    "id" SERIAL NOT NULL,
    "karnatakaId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "skillSet" TEXT NOT NULL,
    "trainingCenter" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "KSDCApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SakalaApplication" (
    "id" SERIAL NOT NULL,
    "karnatakaId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "serviceRequested" TEXT NOT NULL,
    "applicationStatus" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "SakalaApplication_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Admin_adminId_key" ON "Admin"("adminId");

-- CreateIndex
CREATE UNIQUE INDEX "State_name_key" ON "State"("name");

-- CreateIndex
CREATE UNIQUE INDEX "TamilNadu_name_key" ON "TamilNadu"("name");

-- CreateIndex
CREATE UNIQUE INDEX "TamilNadu_stateId_key" ON "TamilNadu"("stateId");

-- CreateIndex
CREATE UNIQUE INDEX "Telangana_name_key" ON "Telangana"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Telangana_stateId_key" ON "Telangana"("stateId");

-- CreateIndex
CREATE UNIQUE INDEX "Kerala_name_key" ON "Kerala"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Kerala_stateId_key" ON "Kerala"("stateId");

-- CreateIndex
CREATE UNIQUE INDEX "Karnataka_name_key" ON "Karnataka"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Karnataka_stateId_key" ON "Karnataka"("stateId");

-- AddForeignKey
ALTER TABLE "TamilNadu" ADD CONSTRAINT "TamilNadu_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AmmaUnavagamApplication" ADD CONSTRAINT "AmmaUnavagamApplication_tamilNaduId_fkey" FOREIGN KEY ("tamilNaduId") REFERENCES "TamilNadu"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "NaanMudhalvanApplication" ADD CONSTRAINT "NaanMudhalvanApplication_tamilNaduId_fkey" FOREIGN KEY ("tamilNaduId") REFERENCES "TamilNadu"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BreakfastSchemeApplication" ADD CONSTRAINT "BreakfastSchemeApplication_tamilNaduId_fkey" FOREIGN KEY ("tamilNaduId") REFERENCES "TamilNadu"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MGNREGAApplication" ADD CONSTRAINT "MGNREGAApplication_tamilNaduId_fkey" FOREIGN KEY ("tamilNaduId") REFERENCES "TamilNadu"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Telangana" ADD CONSTRAINT "Telangana_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "KalyanaLakshmiApplication" ADD CONSTRAINT "KalyanaLakshmiApplication_telanganaId_fkey" FOREIGN KEY ("telanganaId") REFERENCES "Telangana"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RythuBandhuApplication" ADD CONSTRAINT "RythuBandhuApplication_telanganaId_fkey" FOREIGN KEY ("telanganaId") REFERENCES "Telangana"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AasaraPensionApplication" ADD CONSTRAINT "AasaraPensionApplication_telanganaId_fkey" FOREIGN KEY ("telanganaId") REFERENCES "Telangana"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RythuBimaApplication" ADD CONSTRAINT "RythuBimaApplication_telanganaId_fkey" FOREIGN KEY ("telanganaId") REFERENCES "Telangana"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Kerala" ADD CONSTRAINT "Kerala_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "KudumbashreeApplication" ADD CONSTRAINT "KudumbashreeApplication_keralaId_fkey" FOREIGN KEY ("keralaId") REFERENCES "Kerala"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EmploymentSchemeApplication" ADD CONSTRAINT "EmploymentSchemeApplication_keralaId_fkey" FOREIGN KEY ("keralaId") REFERENCES "Kerala"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "KSFEApplication" ADD CONSTRAINT "KSFEApplication_keralaId_fkey" FOREIGN KEY ("keralaId") REFERENCES "Kerala"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AardramApplication" ADD CONSTRAINT "AardramApplication_keralaId_fkey" FOREIGN KEY ("keralaId") REFERENCES "Kerala"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Karnataka" ADD CONSTRAINT "Karnataka_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GramaOneApplication" ADD CONSTRAINT "GramaOneApplication_karnatakaId_fkey" FOREIGN KEY ("karnatakaId") REFERENCES "Karnataka"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BhagyalakshmiApplication" ADD CONSTRAINT "BhagyalakshmiApplication_karnatakaId_fkey" FOREIGN KEY ("karnatakaId") REFERENCES "Karnataka"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "KSHCLApplication" ADD CONSTRAINT "KSHCLApplication_karnatakaId_fkey" FOREIGN KEY ("karnatakaId") REFERENCES "Karnataka"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "KSDCApplication" ADD CONSTRAINT "KSDCApplication_karnatakaId_fkey" FOREIGN KEY ("karnatakaId") REFERENCES "Karnataka"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SakalaApplication" ADD CONSTRAINT "SakalaApplication_karnatakaId_fkey" FOREIGN KEY ("karnatakaId") REFERENCES "Karnataka"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
