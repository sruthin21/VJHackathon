import React from 'react'
import RythuImg from '../assets/rythu.png'
import aasara from '../assets/aasara.jpg'
import kalyan from '../assets/kalyan.png'
const Edu = () => {

  
    const categories = [
        { name: 'Rythu Bandhu', description: 'Eligible farmers receive a fixed amount per acre to support crop investments each season, helping reduce debt dependency and encouraging sustainable agriculture.',navi:'/edu/service1',image:RythuImg },
        { name: 'Aasara Pension Scheme', description: 'Monthly pension amounts are disbursed to ensure a basic income for these groups, promoting inclusivity and economic support for those who cannot easily earn a livelihood.',navi:'/edu/service2',image:aasara },
        { name: 'Kalyana Lakshmi / Shaadi Mubarak', description: 'Under Kalyana Lakshmi (for Hindus) and Shaadi Mubarak (for Muslims), families receive a one-time grant to assist with the expenses of the marriage of daughters, aimed at reducing the financial burden on the families.',navi:'/edu/service3',image:kalyan }
      ];
  return (
    <div className='flex flex-col h-screen justify-center items-center'>
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
        {categories.map((category, index) => (
          <div
            key={index}
            className="p-6 rounded-lg shadow-lg bg-gradient-to-r from-indigo-500 via-purple-500 to-pink-500 hover:from-pink-500 hover:to-indigo-500 transition duration-300 ease-in-out"
           onClick={()=>{
              navigate(category.navi)
           }}
         >
            <img src={category.image}/>
            <h3 className="text-xl font-semibold mb-2">{category.name}</h3>
            <p className="text-gray-200">{category.description}</p>
          </div>
        ))}
      </div>
    </div>
  )
}

export default Edu
