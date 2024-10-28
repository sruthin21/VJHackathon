-- CreateTable
CREATE TABLE "State" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "State_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AmmaUnavagamApplication" (
    "id" SERIAL NOT NULL,
    "stateId" INTEGER NOT NULL,
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
    "stateId" INTEGER NOT NULL,
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
    "stateId" INTEGER NOT NULL,
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
    "stateId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "jobCardNumber" TEXT NOT NULL,
    "workDetails" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "MGNREGAApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "KalyanaLakshmiApplication" (
    "id" SERIAL NOT NULL,
    "stateId" INTEGER NOT NULL,
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
    "stateId" INTEGER NOT NULL,
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
    "stateId" INTEGER NOT NULL,
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
    "stateId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "identityProof" TEXT NOT NULL,
    "landOwnershipDocuments" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "RythuBimaApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "KudumbashreeApplication" (
    "id" SERIAL NOT NULL,
    "stateId" INTEGER NOT NULL,
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
    "stateId" INTEGER NOT NULL,
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
    "stateId" INTEGER NOT NULL,
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
    "stateId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "healthIssue" TEXT NOT NULL,
    "requiredAssistance" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "AardramApplication_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GramaOneApplication" (
    "id" SERIAL NOT NULL,
    "stateId" INTEGER NOT NULL,
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
    "stateId" INTEGER NOT NULL,
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
    "stateId" INTEGER NOT NULL,
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
    "stateId" INTEGER NOT NULL,
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
    "stateId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "applicantName" TEXT NOT NULL,
    "serviceRequested" TEXT NOT NULL,
    "applicationStatus" TEXT NOT NULL,
    "bankAccountDetails" TEXT NOT NULL,

    CONSTRAINT "SakalaApplication_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "State_name_key" ON "State"("name");

-- AddForeignKey
ALTER TABLE "AmmaUnavagamApplication" ADD CONSTRAINT "AmmaUnavagamApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "NaanMudhalvanApplication" ADD CONSTRAINT "NaanMudhalvanApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BreakfastSchemeApplication" ADD CONSTRAINT "BreakfastSchemeApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MGNREGAApplication" ADD CONSTRAINT "MGNREGAApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "KalyanaLakshmiApplication" ADD CONSTRAINT "KalyanaLakshmiApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RythuBandhuApplication" ADD CONSTRAINT "RythuBandhuApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AasaraPensionApplication" ADD CONSTRAINT "AasaraPensionApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RythuBimaApplication" ADD CONSTRAINT "RythuBimaApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "KudumbashreeApplication" ADD CONSTRAINT "KudumbashreeApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EmploymentSchemeApplication" ADD CONSTRAINT "EmploymentSchemeApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "KSFEApplication" ADD CONSTRAINT "KSFEApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AardramApplication" ADD CONSTRAINT "AardramApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GramaOneApplication" ADD CONSTRAINT "GramaOneApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BhagyalakshmiApplication" ADD CONSTRAINT "BhagyalakshmiApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "KSHCLApplication" ADD CONSTRAINT "KSHCLApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "KSDCApplication" ADD CONSTRAINT "KSDCApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SakalaApplication" ADD CONSTRAINT "SakalaApplication_stateId_fkey" FOREIGN KEY ("stateId") REFERENCES "State"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
