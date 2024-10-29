import React from 'react';
import aadhaarImage from '../assets/aarogyasri.png';
import kcrkitImage from '../assets/kcrkit.png';
import BastiImage from '../assets/basti.png';
const Health = () => {
    const categories = [
        { 
            name: 'Aarogyasri Health Care Trust', 
            description: 'A flagship scheme providing free healthcare to families below the poverty line (BPL). Covers tertiary healthcare services, including major surgeries and treatments for severe illnesses. Empaneled network hospitals across the state offer cashless treatment under this scheme.',
            navi: '/health/service1', 
            image: aadhaarImage 
        },
        { 
            name: 'KCR Kit Scheme', 
            description: 'This scheme focuses on pregnant women and newborns, providing financial assistance, essential items, and health services. Benefits include 12,000 INR for the first two deliveries (an extra 1,000 INR for a girl child) and a kit with items like clothes, baby oil, and other essentials. Aimed at reducing infant and maternal mortality rates.',
            navi: '/health/service2', 
            image: kcrkitImage 
        },
        { 
            name: 'Basti Dawakhana', 
            description: 'These are free neighborhood clinics in urban areas, primarily in Hyderabad and Warangal, designed to provide basic healthcare at no cost. Services include general medical consultations, basic diagnostics, medicines, and referrals. Helps reduce the load on tertiary healthcare facilities by providing primary care at the community level.',
            navi: '/health/service3', 
            image: BastiImage // No image provided for this category
        }
    ];

    return (
        <div className="flex flex-col h-screen justify-center items-center">
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
                {categories.map((category, index) => (
                    <div
                        key={index}
                        className="p-6 rounded-lg shadow-lg bg-gradient-to-r from-indigo-500 via-purple-500 to-pink-500 hover:from-pink-500 hover:to-indigo-500 transition duration-300 ease-in-out"
                        onClick={() => {
                            navigate(category.navi);
                        }}
                    >
                        {category.image && (
                            <img src={category.image} alt={category.name} height={100} />
                        )}
                        <h3 className="text-xl font-semibold mb-2">{category.name}</h3>
                        <p className="text-gray-200">{category.description}</p>
                    </div>
                ))}
            </div>
        </div>
    );
}

export default Health;