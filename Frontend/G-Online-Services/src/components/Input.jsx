import React from 'react'

const Input = ({title,desc}) => {
  return (
    <form>
  <label class="block">
    <span class="block text-sm font-medium text-slate-700">{title}</span>
    <input class="border-slate-200 placeholder-slate-400 contrast-more:border-slate-400 contrast-more:placeholder-slate-500"/>
    <p class="mt-2 opacity-10 contrast-more:opacity-100 text-slate-600 text-sm">
      {}
    </p>
  </label>
   </form>

  )
}

export default Input
