
import React from 'react';
import Trow from './Trow';

const Notifications = () => {
  const events = [
    { time: "08:00 AM", title: "Morning Workout" },
    { time: "09:00 AM", title: "Team Meeting" },
    { time: "11:00 AM", title: "Project Planning" },
    { time: "12:00 PM", title: "Lunch Break" },
    { time: "01:30 PM", title: "Client Presentation" },
    { time: "03:00 PM", title: "Code Review" },
    { time: "04:30 PM", title: "UI Design Review" },
    { time: "06:00 PM", title: "Wrap Up & Notes"}
  ]
  return (
    <div className="col-md-4">
      <div className="card panel-default">
        <div className="card-header">
          <div className="heading_s1">
            <h4 className='text-black font-bold text-2xl'>Notifications</h4>
          </div>
        </div>
        <div className="card-body">
          <div className="d-flex align-items-center">
            <div
              className="animation"
              data-animation="fadeInLeft"
              data-animation-delay="0.02s"
            >
              <div className="col-md-12">
                <ul className="demo1">
                  {/* {events.map((event,index)=>{
                      <li className="news-item"  key={index}>
                      <table cellpadding="4">
                        <Trow time={event.time} title={event.title}/>
                      </table>
                      </li>
                      
                  })}
                   */}
                  <li className="news-item">
                    <table cellpadding="4">
                      <Trow time="Updated on 16-10-2024, 15:26:15" title="Notification 1"/>
                    </table>
                  </li>
                  <li className="news-item">
                    <table cellpadding="4">
          
                      <tbody>
                        <tr>
                          <td className="text_default">
                            <i className="ti-user"></i> Updated on
                            15-10-2024, 15:13:43
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <a 
                              href="http://202.63.117.72/results%20index.html"
                              target="_blank"
                            >
                              Notification 2
                            </a>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </li>
                  {/* Add the rest of the news items here */}
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Notifications;