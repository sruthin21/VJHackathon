import React from 'react'

const Trow = ({time,title}) => {
  return (
    <tbody>
       <tr>
            <td className="text_default text-2xl font-semibold text-blue-400">
                <i className="ti-user"></i> {time}
              </td>
               </tr>
                  <tr>
                     <td>
                     <a
                          href="pdfs/ec/M.E. V-Sem (CEEP) Exam Notification (Oct-2024) .pdf"
                           target="_blank"
                        >
                            {title}
                            </a>
                          </td>
                        </tr>
                      </tbody>
  )
}

export default Trow