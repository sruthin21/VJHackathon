import React from 'react'
import TSMDC from '../assets/TSMDC.png'
import tsipass from '../assets/tsipass.png'
import task from '../assets/task.png'
const Emp = () => {
    const categories = [
        { name: 'TSMDC (Telangana State Mineral Development Corporation)', description: 'TSMDC (Telangana State Mineral Development Corporation) Employment Opportunities.TSMDC focuses on mining and mineral resources in the state, creating employment opportunities in mining, logistics, and associated services.',navi:'/emp/service1',image:TSMDC },
        { name: 'TS-iPASS (Telangana State Industrial Project Approval and Self-Certification System)', description: 'Through TS-iPASS, the government promotes industrial growth by streamlining approvals and attracting industries, thereby boosting job creation across various sectors.',navi:'/emp/service2',image: tsipass},
        { name: 'TASK (Telangana Academy for Skill and Knowledge)', description: 'TASK provides training programs to enhance the skills of graduates and job seekers, improving their employability in sectors like IT, healthcare, and manufacturing.',navi:'/emp/service3',image: task}
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

export default Emp
