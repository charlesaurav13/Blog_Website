import React, { useContext, useEffect,  useState } from "react";
import { FaEdit } from "react-icons/fa";
import { MdDelete } from "react-icons/md";
import { Link, useLocation, useNavigate } from "react-router-dom";
import Menu from "../Components/Menu";
import { AuthContext } from '../context/authContext';
import axios from "axios";
// to set 2 days ago or any date or time we use moment
import moment from "moment"
import DOMPurify from "dompurify";

const Single = () => {

  const [post,setPost] = useState([])

  //Sending search property to backend server
   const location = useLocation()
   const postId = location.pathname.split("/")[2]
   const {currentUser} = useContext(AuthContext)
   const navigate = useNavigate()

   useEffect(()=>{
    const fetchData = async ()=>{
      try{
        const res = await axios.get(`/posts/${postId}`)
        setPost(res.data)
      }catch(err){
        console.log(err)
      }
    }
    fetchData();
  },[postId])

  const handleDelete = async ()=>{
    try{
      await axios.delete(`/posts/${postId}`)
      navigate("/")
    }catch(err){
      console.log(err)
    }
  }

  const getText = (html) =>{
    const doc = new DOMParser().parseFromString(html, "text/html")
    return doc.body.textContent
  }

  return (
    <div className="single">
      <div className="content">
        {post.img && post.img.includes("https")?(
          <img src={post.img} alt="Loading" />
        ):(
          <img src={`../upload/${post?.img}`} alt="Loading" />
        )}
        <div className="user">
          {post.userImg &&<img
            src={post.userImg}
            alt=""
          />}
          <div className="info">
            <span>{post.username}</span>
            <p>Posted {moment(post.date).fromNow()}.</p>
          </div>
          {currentUser?.username===post.username &&
          <div className="edit">
          <Link to={`/write?edit=2`} state={post}>
            <FaEdit className="icon" />
          </Link>
          <Link>
            <MdDelete onClick={handleDelete}className="icon" />
          </Link>
        </div> 
          }
        </div>
        <h1>
          {post.title}
        </h1>
        {/* Description of the Images */}
        <p
          dangerouslySetInnerHTML={{
            __html: DOMPurify.sanitize(post.description),
          }}
        ></p>
      </div>
      {/* fetching other data */}
      <Menu cat={post.cat}/>
    </div>
  );
};

export default Single;
