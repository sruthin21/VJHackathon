import React, { useState } from 'react';

const AdminDashboard = () => {
    const [isLoggedIn, setIsLoggedIn] = useState(false);
    const [username, setUsername] = useState('');
    const [password, setPassword] = useState('');
    const [searchTerm, setSearchTerm] = useState('');
    const [filter, setFilter] = useState('All');
    const [selectedScheme, setSelectedScheme] = useState(null);

    const handleLogin = (e) => {
        e.preventDefault();
        // Here you would typically validate the username and password
        // For this example, we'll just set isLoggedIn to true
        if (username && password) {
            setIsLoggedIn(true);
        }
    };

    const dashboardCards = [
        {
            title: 'Total Users',
            value: '1,234',
            description: 'Total number of registered users.',
            icon: '👥',
        },
        {
            title: 'Active Sessions',
            value: '567',
            description: 'Number of users currently active.',
            icon: '🟢',
        },
        {
            title: 'Pending Requests',
            value: '89',
            description: 'Requests awaiting approval.',
            icon: '⏳',
        },
        {
            title: 'Total Revenue',
            value: '₹ 1,00,000',
            description: 'Total revenue generated this month.',
            icon: '💰',
        },
    ];
const categories = [
  { name: 'Health Services', description: 'Access health-related services',navi:'/health' },
  { name: 'Education Services', description: 'Find educational resources',navi:'/social' },
  { name: 'Social Welfare', description: 'Apply for welfare programs',navi:'/edu' },
  { name: 'Employment Services', description: 'Job portals and resources',navi:'/emp' },
  { name: 'Legal Services', description: 'Legal resources and information',navi:'/legal' },
];

    const schemeCards = [
        {
            title: 'Health Services',
            description: 'Access health-related services',
            icon: '📈',
            applications: [
                { id: 1, name: 'John Doe', status: 'Approved' },
                { id: 2, name: 'Jane Smith', status: 'Rejected' },
            ],
        },
        {
            title: 'Education Services',
            description: 'Find educational resources',
            icon: '📊',
            applications: [
                { id: 1, name: 'John Doe', status: 'Approved' },
                { id: 2, name: 'Jane Smith', status: 'Rejected' },
            ],
        },
        {
            title: 'Social Welfare',
            description: 'Apply for welfare programs',
            icon: '💼',
            applications: [
                { id: 1, name: 'John Doe', status: 'Approved' },
                { id: 2, name: 'Jane Smith', status: 'Rejected' },
            ],
        },
        {
            title: 'Employment Services',
            description: 'Job portals and resources',
            icon: '🏆',
            applications: [
                { id: 1, name: 'John Doe', status: 'Approved' },
                { id: 2, name: 'Jane Smith', status: 'Rejected' },
            ],
        },
    ];

    const applications = [
        { id: 1, name: 'John Doe', status: 'Approved' },
        { id: 2, name: 'Jane Smith', status: 'Rejected' },
        { id: 3, name: 'Alice Johnson', status: 'Approved' },
        { id: 4, name: 'Bob Brown', status: 'Pending' },
        { id: 5, name: 'Charlie Davis', status: 'Rejected' },
    ];

    const filteredApplications = applications.filter(app => {
        const matchesSearch = app.name.toLowerCase().includes(searchTerm.toLowerCase());
        const matchesFilter = filter === 'All' || app.status === filter;
        return matchesSearch && matchesFilter;
    });

    return (
        <div className="flex flex-col h-screen p-6 bg-gray-100">
            <h1 className="text-3xl font-bold mb-6">Admin Dashboard</h1>

            {!isLoggedIn ? (
                <form onSubmit={handleLogin} className="bg-white p-6 rounded-lg shadow-md w-96 mx-auto">
                    <h2 className="text-2xl font-bold mb-4">Admin Login</h2>
                    <div className="mb-4">
                        <label className="block text-gray-700">Username</label>
                        <input
                            type="text"
                            className="border rounded-lg p-2 w-full"
                            value={username}
                            onChange={(e) => setUsername(e.target.value)}
                        />
                    </div>
                    <div className="mb-4">
                        <label className="block text-gray-700">Password</label>
                        <input
                            type="password"
                            className="border rounded-lg p-2 w-full"
                            value={password}
                            onChange={(e) => setPassword(e.target.value)}
                        />
                    </div>
                    <button type="submit" className="bg-blue-500 text-white rounded-lg p-2 w-full">
                        Login
                    </button>
                </form>
            ) : (
                <>
                    
                    {/* Dashboard Cards */}
                    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 mb-6">
                        {dashboardCards.map((card, index) => (
                            <div key={index} className="bg-white p-4 rounded-lg shadow-md flex flex-col justify-between">
                                <div className="flex items-center mb-2">
                                    <span className="text-3xl mr-2">{card.icon}</span>
                                    <h2 className="text-xl font-semibold">{card.title}</h2>
                                </div>
                                <p className="text-2xl font-bold">{card.value}</p>
                                <p className="text-gray-600">{card.description}</p>
                            </div>
                        ))}
                    </div>

                    {/* Scheme Cards */}
                    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 mb-6">
                        {schemeCards.map((scheme, index) => (
                            <div key={index} className="bg-white p-4 rounded-lg shadow-md flex flex-col justify-between">
                                <div className="flex items-center mb-2">
                                    <span className="text-3xl mr-2">{scheme.icon}</span>
                                    <h2 className="text-xl font-semibold">{scheme.title}</h2>
                                </div>
                                <p className="text-gray-600">{scheme.description}</p>
                            </div>
                        ))}
                    </div>

                    {/* Search and Filter Section */}
                    <div className="flex mb-4">
                        <input
                            type="text"
                            placeholder="Search by name..."
                            className="border rounded-lg p-2 mr-4 flex-grow"
                            value={searchTerm}
                            onChange={(e) => setSearchTerm(e.target.value)}
                        />
                        <select
                            className="border rounded-lg p-2"
                            value={filter}
                            onChange={(e) => setFilter(e.target.value)}
                        >
                            <option value="All">All</option>
                            <option value="Approved">Approved</option>
                            <option value="Rejected">Rejected</option>
                            <option value="Pending">Pending</option>
                        </select>
                    </div>

                    {/* Applications Table */}
                    <div className="bg-white p-6 rounded-lg shadow-md">
                        <h2 className="text-2xl font-bold mb-4">Applications</h2>
                        <table className="min-w-full border-collapse border border-gray-300">
                            <thead>
                                <tr>
                                    <th className="border border-gray-300 p-2">ID</th>
                                    <th className="border border-gray-300 p-2">Name</th>
                                    <th className="border border-gray-300 p-2">Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                {filteredApplications.map((app) => (
                                    <tr key={app.id}>
                                        <td className="border border-gray-300 p-2">{app.id}</td>
                                        <td className="border border-gray-300 p-2">{app.name}</td>
                                        <td className="border border-gray-300 p-2">{app.status}</td>
                                    </tr>
                                ))}
                            </tbody>
                        </table>
                    </div>
                </>
            )}
        </div>
    );
};

export default AdminDashboard;