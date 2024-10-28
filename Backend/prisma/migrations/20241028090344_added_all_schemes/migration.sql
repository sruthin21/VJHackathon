/*
  Warnings:

  - You are about to drop the column `stateId` on the `AardramApplication` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `AasaraPensionApplication` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `AmmaUnavagamApplication` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `BhagyalakshmiApplication` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `BreakfastSchemeApplication` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `EmploymentSchemeApplication` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `GramaOneApplication` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `KSDCApplication` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `KSFEApplication` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `KSHCLApplication` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `KalyanaLakshmiApplication` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `KudumbashreeApplication` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `MGNREGAApplication` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `NaanMudhalvanApplication` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `RythuBandhuApplication` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `RythuBimaApplication` table. All the data in the column will be lost.
  - You are about to drop the column `stateId` on the `SakalaApplication` table. All the data in the column will be lost.
  - Added the required column `keralaId` to the `AardramApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `telanganaId` to the `AasaraPensionApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tamilNaduId` to the `AmmaUnavagamApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `karnatakaId` to the `BhagyalakshmiApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tamilNaduId` to the `BreakfastSchemeApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `keralaId` to the `EmploymentSchemeApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `karnatakaId` to the `GramaOneApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `karnatakaId` to the `KSDCApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `keralaId` to the `KSFEApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `karnatakaId` to the `KSHCLApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `telanganaId` to the `KalyanaLakshmiApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `keralaId` to the `KudumbashreeApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tamilNaduId` to the `MGNREGAApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tamilNaduId` to the `NaanMudhalvanApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `telanganaId` to the `RythuBandhuApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `telanganaId` to the `RythuBimaApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `karnatakaId` to the `SakalaApplication` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "AardramApplication" DROP CONSTRAINT "AardramApplication_stateId_fkey";

-- DropForeignKey
ALTER TABLE "AasaraPensionApplication" DROP CONSTRAINT "AasaraPensionApplication_stateId_fkey";

-- DropForeignKey
ALTER TABLE "AmmaUnavagamApplication" DROP CONSTRAINT "AmmaUnavagamApplication_stateId_fkey";

-- DropForeignKey
ALTER TABLE "BhagyalakshmiApplication" DROP CONSTRAINT "BhagyalakshmiApplication_stateId_fkey";

-- DropForeignKey
ALTER TABLE "BreakfastSchemeApplication" DROP CONSTRAINT "BreakfastSchemeApplication_stateId_fkey";

-- DropForeignKey
ALTER TABLE "EmploymentSchemeApplication" DROP CONSTRAINT "EmploymentSchemeApplication_stateId_fkey";

-- DropForeignKey
ALTER TABLE "GramaOneApplication" DROP CONSTRAINT "GramaOneApplication_stateId_fkey";

-- DropForeignKey
ALTER TABLE "KSDCApplication" DROP CONSTRAINT "KSDCApplication_stateId_fkey";

-- DropForeignKey
ALTER TABLE "KSFEApplication" DROP CONSTRAINT "KSFEApplication_stateId_fkey";

-- DropForeignKey
ALTER TABLE "KSHCLApplication" DROP CONSTRAINT "KSHCLApplication_stateId_fkey";

-- DropForeignKey
ALTER TABLE "KalyanaLakshmiApplication" DROP CONSTRAINT "KalyanaLakshmiApplication_stateId_fkey";

-- DropForeignKey
ALTER TABLE "KudumbashreeApplication" DROP CONSTRAINT "KudumbashreeApplication_stateId_fkey";

-- DropForeignKey
ALTER TABLE "MGNREGAApplication" DROP CONSTRAINT "MGNREGAApplication_stateId_fkey";

-- DropForeignKey
ALTER TABLE "NaanMudhalvanApplication" DROP CONSTRAINT "NaanMudhalvanApplication_stateId_fkey";

-- DropForeignKey
ALTER TABLE "RythuBandhuApplication" DROP CONSTRAINT "RythuBandhuApplication_stateId_fkey";

-- DropForeignKey
ALTER TABLE "RythuBimaApplication" DROP CONSTRAINT "RythuBimaApplication_stateId_fkey";

-- DropForeignKey
ALTER TABLE "SakalaApplication" DROP CONSTRAINT "SakalaApplication_stateId_fkey";

-- AlterTable
ALTER TABLE "AardramApplication" DROP COLUMN "stateId",
ADD COLUMN     "keralaId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "AasaraPensionApplication" DROP COLUMN "stateId",
ADD COLUMN     "telanganaId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "AmmaUnavagamApplication" DROP COLUMN "stateId",
ADD COLUMN     "tamilNaduId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BhagyalakshmiApplication" DROP COLUMN "stateId",
ADD COLUMN     "karnatakaId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BreakfastSchemeApplication" DROP COLUMN "stateId",
ADD COLUMN     "tamilNaduId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "EmploymentSchemeApplication" DROP COLUMN "stateId",
ADD COLUMN     "keralaId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "GramaOneApplication" DROP COLUMN "stateId",
ADD COLUMN     "karnatakaId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "KSDCApplication" DROP COLUMN "stateId",
ADD COLUMN     "karnatakaId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "KSFEApplication" DROP COLUMN "stateId",
ADD COLUMN     "keralaId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "KSHCLApplication" DROP COLUMN "stateId",
ADD COLUMN     "karnatakaId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "KalyanaLakshmiApplication" DROP COLUMN "stateId",
ADD COLUMN     "telanganaId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "KudumbashreeApplication" DROP COLUMN "stateId",
ADD COLUMN     "keralaId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "MGNREGAApplication" DROP COLUMN "stateId",
ADD COLUMN     "tamilNaduId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "NaanMudhalvanApplication" DROP COLUMN "stateId",
ADD COLUMN     "tamilNaduId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "RythuBandhuApplication" DROP COLUMN "stateId",
ADD COLUMN     "telanganaId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "RythuBimaApplication" DROP COLUMN "stateId",
ADD COLUMN     "telanganaId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "SakalaApplication" DROP COLUMN "stateId",
ADD COLUMN     "karnatakaId" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "TamilNadu" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "stateId" INTEGER,

    CONSTRAINT "TamilNadu_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Telangana" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "stateId" INTEGER,

    CONSTRAINT "Telangana_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Kerala" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "stateId" INTEGER,

    CONSTRAINT "Kerala_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Karnataka" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "stateId" INTEGER,

    CONSTRAINT "Karnataka_pkey" PRIMARY KEY ("id")
);

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
