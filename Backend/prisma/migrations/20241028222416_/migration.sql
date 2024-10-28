/*
  Warnings:

  - You are about to drop the column `keralaId` on the `AardramApplication` table. All the data in the column will be lost.
  - You are about to drop the column `telanganaId` on the `AasaraPensionApplication` table. All the data in the column will be lost.
  - You are about to drop the column `tamilNaduId` on the `AmmaUnavagamApplication` table. All the data in the column will be lost.
  - You are about to drop the column `karnatakaId` on the `BhagyalakshmiApplication` table. All the data in the column will be lost.
  - You are about to drop the column `tamilNaduId` on the `BreakfastSchemeApplication` table. All the data in the column will be lost.
  - You are about to drop the column `keralaId` on the `EmploymentSchemeApplication` table. All the data in the column will be lost.
  - You are about to drop the column `karnatakaId` on the `GramaOneApplication` table. All the data in the column will be lost.
  - You are about to drop the column `karnatakaId` on the `KSDCApplication` table. All the data in the column will be lost.
  - You are about to drop the column `keralaId` on the `KSFEApplication` table. All the data in the column will be lost.
  - You are about to drop the column `karnatakaId` on the `KSHCLApplication` table. All the data in the column will be lost.
  - You are about to drop the column `telanganaId` on the `KalyanaLakshmiApplication` table. All the data in the column will be lost.
  - You are about to drop the column `keralaId` on the `KudumbashreeApplication` table. All the data in the column will be lost.
  - You are about to drop the column `tamilNaduId` on the `MGNREGAApplication` table. All the data in the column will be lost.
  - You are about to drop the column `tamilNaduId` on the `NaanMudhalvanApplication` table. All the data in the column will be lost.
  - You are about to drop the column `telanganaId` on the `RythuBandhuApplication` table. All the data in the column will be lost.
  - You are about to drop the column `telanganaId` on the `RythuBimaApplication` table. All the data in the column will be lost.
  - You are about to drop the column `karnatakaId` on the `SakalaApplication` table. All the data in the column will be lost.
  - You are about to drop the `Karnataka` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Kerala` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `State` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TamilNadu` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Telangana` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `stateId` to the `AardramApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stateId` to the `AasaraPensionApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stateId` to the `AmmaUnavagamApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stateId` to the `BhagyalakshmiApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stateId` to the `BreakfastSchemeApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stateId` to the `EmploymentSchemeApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stateId` to the `GramaOneApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stateId` to the `KSDCApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stateId` to the `KSFEApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stateId` to the `KSHCLApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stateId` to the `KalyanaLakshmiApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stateId` to the `KudumbashreeApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stateId` to the `MGNREGAApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stateId` to the `NaanMudhalvanApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stateId` to the `RythuBandhuApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stateId` to the `RythuBimaApplication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stateId` to the `SakalaApplication` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "AardramApplication" DROP CONSTRAINT "AardramApplication_keralaId_fkey";

-- DropForeignKey
ALTER TABLE "AasaraPensionApplication" DROP CONSTRAINT "AasaraPensionApplication_telanganaId_fkey";

-- DropForeignKey
ALTER TABLE "AmmaUnavagamApplication" DROP CONSTRAINT "AmmaUnavagamApplication_tamilNaduId_fkey";

-- DropForeignKey
ALTER TABLE "BhagyalakshmiApplication" DROP CONSTRAINT "BhagyalakshmiApplication_karnatakaId_fkey";

-- DropForeignKey
ALTER TABLE "BreakfastSchemeApplication" DROP CONSTRAINT "BreakfastSchemeApplication_tamilNaduId_fkey";

-- DropForeignKey
ALTER TABLE "EmploymentSchemeApplication" DROP CONSTRAINT "EmploymentSchemeApplication_keralaId_fkey";

-- DropForeignKey
ALTER TABLE "GramaOneApplication" DROP CONSTRAINT "GramaOneApplication_karnatakaId_fkey";

-- DropForeignKey
ALTER TABLE "KSDCApplication" DROP CONSTRAINT "KSDCApplication_karnatakaId_fkey";

-- DropForeignKey
ALTER TABLE "KSFEApplication" DROP CONSTRAINT "KSFEApplication_keralaId_fkey";

-- DropForeignKey
ALTER TABLE "KSHCLApplication" DROP CONSTRAINT "KSHCLApplication_karnatakaId_fkey";

-- DropForeignKey
ALTER TABLE "KalyanaLakshmiApplication" DROP CONSTRAINT "KalyanaLakshmiApplication_telanganaId_fkey";

-- DropForeignKey
ALTER TABLE "Karnataka" DROP CONSTRAINT "Karnataka_stateId_fkey";

-- DropForeignKey
ALTER TABLE "Kerala" DROP CONSTRAINT "Kerala_stateId_fkey";

-- DropForeignKey
ALTER TABLE "KudumbashreeApplication" DROP CONSTRAINT "KudumbashreeApplication_keralaId_fkey";

-- DropForeignKey
ALTER TABLE "MGNREGAApplication" DROP CONSTRAINT "MGNREGAApplication_tamilNaduId_fkey";

-- DropForeignKey
ALTER TABLE "NaanMudhalvanApplication" DROP CONSTRAINT "NaanMudhalvanApplication_tamilNaduId_fkey";

-- DropForeignKey
ALTER TABLE "RythuBandhuApplication" DROP CONSTRAINT "RythuBandhuApplication_telanganaId_fkey";

-- DropForeignKey
ALTER TABLE "RythuBimaApplication" DROP CONSTRAINT "RythuBimaApplication_telanganaId_fkey";

-- DropForeignKey
ALTER TABLE "SakalaApplication" DROP CONSTRAINT "SakalaApplication_karnatakaId_fkey";

-- DropForeignKey
ALTER TABLE "TamilNadu" DROP CONSTRAINT "TamilNadu_stateId_fkey";

-- DropForeignKey
ALTER TABLE "Telangana" DROP CONSTRAINT "Telangana_stateId_fkey";

-- AlterTable
ALTER TABLE "AardramApplication" DROP COLUMN "keralaId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "AasaraPensionApplication" DROP COLUMN "telanganaId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "AmmaUnavagamApplication" DROP COLUMN "tamilNaduId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BhagyalakshmiApplication" DROP COLUMN "karnatakaId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "BreakfastSchemeApplication" DROP COLUMN "tamilNaduId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "EmploymentSchemeApplication" DROP COLUMN "keralaId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "GramaOneApplication" DROP COLUMN "karnatakaId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "KSDCApplication" DROP COLUMN "karnatakaId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "KSFEApplication" DROP COLUMN "keralaId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "KSHCLApplication" DROP COLUMN "karnatakaId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "KalyanaLakshmiApplication" DROP COLUMN "telanganaId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "KudumbashreeApplication" DROP COLUMN "keralaId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "MGNREGAApplication" DROP COLUMN "tamilNaduId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "NaanMudhalvanApplication" DROP COLUMN "tamilNaduId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "RythuBandhuApplication" DROP COLUMN "telanganaId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "RythuBimaApplication" DROP COLUMN "telanganaId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "SakalaApplication" DROP COLUMN "karnatakaId",
ADD COLUMN     "stateId" INTEGER NOT NULL;

-- DropTable
DROP TABLE "Karnataka";

-- DropTable
DROP TABLE "Kerala";

-- DropTable
DROP TABLE "State";

-- DropTable
DROP TABLE "TamilNadu";

-- DropTable
DROP TABLE "Telangana";
