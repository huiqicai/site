import { useState } from 'react'
import construction from './assets/construction.png'
import './App.css'

function App() {

  return (
    <>
      <div className='f fcol p5'>
          <img src={construction} className="image" alt="Construction" />
          <h1>Under Construction</h1>
      </div>
    </>
  )
}

export default App
