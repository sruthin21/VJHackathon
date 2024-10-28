import React from 'react';

const Services = () => {
    return (
        <div className="container mx-auto p-6 w-full h-screen">
            <h1 className="text-2xl font-bold mb-4">Government Services</h1>
            <p className="mb-4">Download the user manual for more information:</p>
            <a
                href="/path/to/user-manual.pdf"
                className="inline-block bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600"
                download
            >
                Download User Manual
            </a>

            <h2 className="text-xl font-semibold mt-6 mb-2">Required Documents:</h2>
            <ul className="list-disc list-inside mb-4">
                  <form action="">
                  <h3>DoB Certificate</h3>
                  <input type="file"  />
                  <h3>Aadhar Card</h3>
                  <input type="file"  />
                  <h3>Income Certificate</h3>
                  <input type="file"  />
                  </form>
            </ul>

            <button className="mt-4 bg-green-500 text-white px-4 py-2 rounded hover:bg-green-600">
                Submit
            </button>
        </div>
    );
};

export default Services;