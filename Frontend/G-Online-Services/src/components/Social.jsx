import React from 'react'
import social1img from '../assets/TSWREIS.jpg' 
import KGPGimg from '../assets/KGPG.jpg'
import MiddayImg from '../assets/midday.jpg'
const Social = () => {
    const categories = [
        { name: 'Telangana Social Welfare Residential Educational Institutions Society (TSWREIS)', description: 'Manages residential schools for children from Scheduled Castes (SC) and other marginalized communities.Provides free education, boarding, and lodging along with comprehensive academic support, emphasizing holistic development and equality.',navi:'/social/service1',image:social1img },
        { name: 'KG to PG Free Education Scheme ', description: 'Envisioned as a long-term plan to offer free education from kindergarten to postgraduate levels, aiming to reduce the financial burden on families.The scheme focuses on providing accessible, high-quality education, with special provisions for economically weaker sections and marginalized communities.',navi:'/social/service2',image:KGPGimg },
        { name: 'Mid-Day Meal Scheme', description: 'A nationwide scheme implemented by the Telangana government in all government and government-aided schools to improve nutritional standards among children.Provides free, nutritious meals to students, which encourages regular school attendance and enhances learning outcomes.',navi:'/social/service3',image:MiddayImg }
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

export default Social
