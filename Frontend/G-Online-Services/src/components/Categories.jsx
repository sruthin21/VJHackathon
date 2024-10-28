// src/components/Categories.js

import React from 'react'
import Notifications from '../Components/Notifications';
import { redirect, useNavigate } from 'react-router-dom';

const categories = [
  { name: 'Health Services', description: 'Access health-related services',navi:'/health' },
  { name: 'Education Services', description: 'Find educational resources',navi:'/edu' },
  { name: 'Social Welfare', description: 'Apply for welfare programs',navi:'/social' },
  { name: 'Employment Services', description: 'Job portals and resources',navi:'/emp' },
  { name: 'Legal Services', description: 'Legal resources and information',navi:'/legal' },
];

const Categories = () => {
  const navigate = useNavigate();
  return (
    <div className='flex '>
    <div className="flex flex-col basis-4/6 p-6 bg-gray-900 text-white">
      <h2 className="text-3xl font-bold text-center mb-8">Categories</h2>
      
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
        {categories.map((category, index) => (
          <div
            key={index}
            className="p-6 rounded-lg shadow-lg bg-gradient-to-r from-indigo-500 via-purple-500 to-pink-500 hover:from-pink-500 hover:to-indigo-500 transition duration-300 ease-in-out"
           onClick={()=>{
              navigate(category.navi)
           }}
         >
            <h3 className="text-xl font-semibold mb-2">{category.name}</h3>
            <p className="text-gray-200">{category.description}</p>
          </div>
        ))}
      </div>
      <div className='mt-10  font-bold'>
      
      <button onClick={()=>{
        navigate('/tracking')
      }}  className='mt-10 pt-5 bg-white text-black w-1/2 rounded-full  p-3 '>Track Your Application</button>  
      
      </div>
    </div>
    <div className='basis-2/6 '>
        <div className='flex bg-white ml-5 h-screen'>
          <Notifications/>
        </div>
    </div>
    </div>
  );
};

export default Categories;
