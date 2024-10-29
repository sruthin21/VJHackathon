
import React from 'react';
import Trow from './Trow';

const Notifications = () => {
  return (
    <div class="bg-gray-100 p-6 rounded-lg shadow-lg text-gray-800">
  <h2 class="text-xl font-bold mb-4">Notifications</h2>
  <p class="text-blue-600 font-semibold mb-2">Updated on 26-10-2024, 15:26:15</p>
  <table class="min-w-full bg-white border border-gray-200">
    <thead>
      <tr>
        <th class="py-2 px-4 border-b border-gray-200 text-left font-semibold">Date</th>
        <th class="py-2 px-4 border-b border-gray-200 text-left font-semibold">Message</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="py-2 px-4 border-b border-gray-200">26-10-2024</td>
        <td class="py-2 px-4 border-b border-gray-200">
          Health Services portal will undergo maintenance on 17-10-2024 from 02:00 AM to 05:00 AM. Please plan accordingly.
        </td>
      </tr>
      <tr>
        <td class="py-2 px-4 border-b border-gray-200">15-10-2024</td>
        <td class="py-2 px-4 border-b border-gray-200">
          New educational resources added under Education Services. Check out the latest courses and scholarships available.
        </td>
      </tr>
      <tr>
        <td class="py-2 px-4 border-b border-gray-200">14-10-2024</td>
        <td class="py-2 px-4 border-b border-gray-200">
          Employment Services: Update your job profile to access the latest job opportunities in your area.
        </td>
      </tr>
      <tr>
        <td class="py-2 px-4 border-b border-gray-200">12-10-2024</td>
        <td class="py-2 px-4 border-b border-gray-200">
          Social Welfare application processing times have been temporarily extended due to a high volume of requests. We appreciate your patience.
        </td>
      </tr>
      <tr>
        <td class="py-2 px-4 border-b border-gray-200">11-10-2024</td>
        <td class="py-2 px-4 border-b border-gray-200">
          Legal Services: A new guide on citizens' rights is now available. Visit the Legal Services section to download.
        </td>
      </tr>
    </tbody>
  </table>
</div>

  );
};

export default Notifications;