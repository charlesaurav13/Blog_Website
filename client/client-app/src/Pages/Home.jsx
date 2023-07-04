import React, { useEffect, useState } from 'react'
import { Link, useLocation } from 'react-router-dom'
import axios from "axios"
import DOMPurify from "dompurify";

const Home = () => {

  const [posts,setPosts] = useState([])

  //Sending search property to backend server
   const cat = useLocation().search
   useEffect(()=>{

    const fetchData = async ()=>{
      try{
        const res = await axios.get(`/posts${cat}`)
        setPosts(res.data)
      }catch(err){
        console.log(err)
      }
    }
    fetchData();
  },[cat])

  const getText = (html) =>{
    const doc = new DOMParser().parseFromString(html, "text/html")
    return doc.body.textContent
  }

  return (
    <div className="home">
      <div className="posts">
        {Array.isArray(posts) && posts.map((post)=>(
          <div className="post" key={post.id}>
            <div className="img">
            {post.img && (post.img).includes("https") ? (
                      <img src={post.img} alt="Loading" />
                    ):(
                      <img src={`../upload/${post?.img}`} alt="Loading" />
                    )}
            </div>
            <div className="content">
              <Link className='link' to={`/post/${post.id}`}>
              <h1>{post.title}</h1>
              <p>{getText(post.description)}</p>
              </Link>
              <button>Read More</button>
            </div>
          </div>
        ))}
      </div>
    </div>
  )
}

export default Home
