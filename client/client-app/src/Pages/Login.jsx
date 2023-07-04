import React,{useContext, useState} from 'react'
import { Link,useNavigate } from 'react-router-dom'
import { AuthContext } from '../context/authContext';


const Login = () => {
  const [inputs,setInputs] = useState({
    username:"",
    password:"",
  });

  const [err,setError] = useState(null);
  const navigate = useNavigate();

  const {currentUser,login} = useContext(AuthContext)
  const [noUserError,setnoUserError] = useState(currentUser)
  const handleChange = (e) =>{
    setInputs((prev) =>({...prev,[e.target.name]: e.target.value }));

  };
  
 const handleSubmit = async (e) =>{
  e.preventDefault();
  try{
    await login(inputs)
    if (currentUser==="User not found!") {setnoUserError(currentUser)}
      else {
    navigate("/")
    }
  }catch(err){
    setError(err.response.data)
    
  }
 };

  return (
    <div style={{width:"100%"}} className="auth">
     <h1>Login</h1>
     <form>
       <input required type ="text" placeholder="Username" name="username" onChange={handleChange}></input>
       <input required type ="password" placeholder="Password" name="password" onChange={handleChange}></input>
       <button onClick={handleSubmit}>Login</button>
       {noUserError && <p>{noUserError}</p>}
       {err && <p>{err}</p>}
       <span>Don't have account <Link to="/register" className='custom-link'>Register</Link></span>
     </form>
    </div>
  ) 
}

export default Login
