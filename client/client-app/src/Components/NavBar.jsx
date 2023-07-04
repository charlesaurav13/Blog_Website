import React, { useContext } from 'react'
import Image from "../img/Blog.png"
import { Link } from 'react-router-dom'
import { AuthContext } from '../context/authContext'


const NavBar = () => {
  const {currentUser,logout} = useContext(AuthContext)

  return (
    <div className='navbar'>
        <div className="container">
            <Link className='link' to="/">
            <div className="logo">
              <img src={Image} alt="Loading"/>
            </div>
            </Link>
            <div className="links">
              <Link className='link' to="/?cat=art"><h4>ART</h4></Link>
              <Link className='link' to="/?cat=science"><h4>SCIENCE</h4></Link>
              <Link className='link' to="/?cat=design"><h4>DESIGN</h4></Link>
              <Link className='link' to="/?cat=cinema"><h4>CINEMA</h4></Link> 
              <Link className='link' to="/?cat=food"><h4>FOOD</h4></Link>
              {/* To login curent user and show  his name */}
              <span><strong>{currentUser?.username}</strong></span>
              {/* To logout user and if no user is login to Show login button here */}
              {currentUser ?<span onClick={logout}>Logout</span> 
              :<Link className='link'to="/login">Login</Link>}
              
              
              <span className="write">
                <Link to="/write" className='link'>Write</Link>
              </span>
            </div>
        </div>
    </div>
  )
}

export default NavBar
