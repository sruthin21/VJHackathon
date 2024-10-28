import React from 'react'

const Edu = () => {
    const categories = [
        { name: 'Service1', description: 'This is Service 1',navi:'/edu/service1' },
        { name: 'Service2 ', description: 'This is Service 1',navi:'/edu/service2' },
        { name: 'Service3', description: 'This is Service 1',navi:'/edu/service3' }
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
            <h3 className="text-xl font-semibold mb-2">{category.name}</h3>
            <p className="text-gray-200">{category.description}</p>
          </div>
        ))}
      </div>
    </div>
  )
}

export default Edu
