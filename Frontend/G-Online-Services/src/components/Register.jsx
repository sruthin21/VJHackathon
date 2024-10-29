import React, { useState } from 'react';


const Register = () => {
    const [formData, setFormData] = useState({
        firstName: '',
        lastName: '',
        email: '',
        password: '',
        confirmPassword: '',
        aadhaar: '',
        panCard: '',
        phoneNo: '',
        aadhaarPDF: null,
        panPDF: null,
    });

    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData({
            ...formData,
            [name]: value,
        });
    };

    const handleFileChange = (e) => {
        const { name, files } = e.target;
        setFormData({
            ...formData,
            [name]: files[0],
        });
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        // Handle form submission logic here
        console.log('Form submitted:', formData);
        // Reset form
        setFormData({
            firstName: '',
            lastName: '',
            email: '',
            password: '',
            confirmPassword: '',
            aadhaar: '',
            panCard: '',
            phoneNo: '',
            aadhaarPDF: null,
            panPDF: null,
        });
    };

  return (
    <div className="flex items-center justify-center h-auto">
    <div className="text-black p-2 rounded shadow-lg w-3/4">
    <div className="container mx-auto p-4 ">
            <h2 className="text-2xl mb-4">Registration Form</h2>
            <form onSubmit={handleSubmit} className="bg-gray-100 p-6 rounded shadow-md w-3/4">
                <div className="mb-4">
                    <label htmlFor="firstName" className="block text-gray-700">First Name:</label>
                    <input
                        type="text"
                        id="firstName"
                        name="firstName"
                        value={formData.firstName}
                        onChange={handleChange}
                        className="mt-1 block w-full p-2 border border-gray-300 rounded"
                        required
                    />
                </div>
                <div className="mb-4">
                    <label htmlFor="lastName" className="block text-gray-700">Last Name:</label>
                    <input
                        type="text"
                        id="lastName"
                        name="lastName"
                        value={formData.lastName}
                        onChange={handleChange}
                        className="mt-1 block w-full p-2 border border-gray-300 rounded"
                        required
                    />
                </div>
                <div className="mb-4">
                    <label htmlFor="email" className="block text-gray-700">Email:</label>
                    <input
                        type="email"
                        id="email"
                        name="email"
                        value={formData.email}
                        onChange={handleChange}
                        className="mt-1 block w-full p-2 border border-gray-300 rounded"
                        required
                    />
                </div>
                <div className="mb-4">
                    <label htmlFor="password" className="block text-gray-700">Password:</label>
                    <input
                        type="password"
                        id="password"
                        name="password"
                        value={formData.password}
                        onChange={handleChange}
                        className="mt-1 block w-full p-2 border border-gray-300 rounded"
                        required
                    />
                </div>
                <div className="mb-4">
                    <label htmlFor="confirmPassword" className="block text-gray-700">Confirm Password:</label>
                    <input
                        type="password"
                        id="confirmPassword"
                        name="confirmPassword"
                        value={formData.confirmPassword}
                        onChange={handleChange}
                        className="mt-1 block w-full p-2 border border-gray-300 rounded"
                        required
                    />
                </div>
                <div className="mb-4">
                    <label htmlFor="aadhaar" className="block text-gray-700">Aadhaar:</label>
                    <input
                        type="text"
                        id="aadhaar"
                        name="aadhaar"
                        value={formData.aadhaar}
                        onChange={handleChange}
                        className="mt-1 block w-full p-2 border border-gray-300 rounded"
                        required
                    />
                </div>
                <div className="mb-4">
                    <label htmlFor="panCard" className="block text-gray-700">Pan Card (optional):</label>
                    <input
                        type="text"
                        id="panCard"
                        name="panCard"
                        value={formData.panCard}
                        onChange={handleChange}
                        className="mt-1 block w-full p-2 border border-gray-300 rounded"
                    />
                </div>
                <div className="mb-4">
                    <label htmlFor="phoneNo" className="block text-gray-700">Phone No:</label>
                    <input
                        type="tel"
                        id="phoneNo"
                        name="phoneNo"
                        value={formData.phoneNo}
                        onChange={handleChange}
                        className="mt-1 block w-full p-2 border border-gray-300 rounded"
                        required
                    />
                </div>
                <div className="mb-4">
                    <label htmlFor="aadhaarPDF" className="block text-gray-700">Upload Aadhaar PDF:</label>
                    <input
                        type="file"
                        id="aadhaarPDF"
                        name="aadhaarPDF"
                        accept="application/pdf"
                        onChange={handleFileChange}
                        className="mt-1 block w-full p-2 border border-gray-300 rounded"
                        required
                    />
                </div>
                <div className="mb-4">
                    <label htmlFor="panPDF" className="block text-gray-700">Upload Pan PDF (optional):</label>
                    <input
                        type="file"
                        id="panPDF"
                        name="panPDF"
                        accept="application/pdf"
                        onChange={handleFileChange}
                        className="mt-1 block w-full p-2 border border-gray-300 rounded"
                    />
                </div>
                <button
                    type="submit"
                    className="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600"
                >
                    Register
                </button>
                <div className='flex flex-row mt-5'>
                <div >If Already Registered?</div>
                <a href="/login" className='underline ml-3'>Login</a>
                </div>
            </form>
        </div>
    </div>
   </div>
  )
}

export default Register