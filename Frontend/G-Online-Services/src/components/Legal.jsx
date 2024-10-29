import React from 'react'
import tsla from '../assets/tsla.jpg'
import lok from '../assets/lok.jpg'
import clinic from '../assets/clinic.jpg'
const Legal = () => {
    const categories = [
        { name: 'Telangana State Legal Services Authority (TSLSA)', description: 'The TSLSA offers free legal aid, legal counseling, and representation for eligible citizens. It primarily serves economically weaker sections, including Scheduled Castes, Scheduled Tribes, women, and senior citizens.',navi:'/legal/service1',image:tsla},
        { name: 'Lok Adalat Services ', description: 'Telangana regularly conducts Lok Adalats to provide a quicker, cost-effective alternative to conventional court procedures. Cases settled in Lok Adalats are binding and help reduce the burden on the judicial system.',navi:'/legal/service2',image:lok },
        { name: 'Legal Aid Clinics', description: 'These clinics are set up across districts to provide on-the-spot legal assistance. The clinics, often located in remote and rural areas, help people understand their rights and offer initial guidance on legal procedures.',navi:'/legal/service3',image:clinic }
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

export default Legal
