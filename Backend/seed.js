const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient();

async function main() {
  // Check if Tamil Nadu already exists
  let tamilNadu = await prisma.tamilNadu.findUnique({
    where: { name: 'Tamil Nadu' },
  });

  // If not, create it
  if (!tamilNadu) {
    tamilNadu = await prisma.tamilNadu.create({
      data: {
        name: 'Tamil Nadu',
        ammaUnavagamApplications: {
          create: [
            {
              applicantName: 'Alice',
              familyIncome: 30000,
              aadhaar: 'AADHAAR1234',
              bankAccountDetails: 'BankAccount1',
            },
            {
              applicantName: 'Bob',
              familyIncome: 25000,
              aadhaar: 'AADHAAR5678',
              bankAccountDetails: 'BankAccount2',
            },
          ],
        },
        naanMudhalvanApplications: {
          create: [
            {
              applicantName: 'Charlie',
              educationalQualification: 'Graduate',
              skillSet: 'Software Development',
              bankAccountDetails: 'BankAccount3',
            },
            {
              applicantName: 'David',
              educationalQualification: 'Postgraduate',
              skillSet: 'Data Science',
              bankAccountDetails: 'BankAccount4',
            },
          ],
        },
        breakfastSchemeApplications: {
          create: [
            {
              schoolName: 'School A',
              numberOfStudents: 100,
              bankAccountDetails: 'BankAccount5',
            },
            {
              schoolName: 'School B',
              numberOfStudents: 150,
              bankAccountDetails: 'BankAccount6',
            },
          ],
        },
        mgnregaApplications: {
          create: [
            {
              applicantName: 'Eve',
              jobCardNumber: 'JOB123',
              workDetails: 'Road Construction',
              bankAccountDetails: 'BankAccount7',
            },
            {
              applicantName: 'Frank',
              jobCardNumber: 'JOB456',
              workDetails: 'Canal Cleaning',
              bankAccountDetails: 'BankAccount8',
            },
          ],
        },
      },
    });
    console.log('Tamil Nadu data inserted:', tamilNadu);
  } else {
    console.log('Tamil Nadu already exists:', tamilNadu);
  }
}