import {createBrowserRouter,RouterProvider,Outlet} from "react-router-dom";
import React from 'react';
import Home from "./Pages/Home";
import Login from "./Pages/Login";
import Register from "./Pages/Register";
import Write from "./Pages/Write";
import Single from "./Pages/Single";
import NavBar from "./Components/NavBar";
import Footer from "./Components/Footer";
import "./App.scss";


const Layout =()=>{
  return(
    <>
    <NavBar/>
    <Outlet/>
    <Footer/>
    </>
  )
}

const router = createBrowserRouter([
    {
      path: "/",
      element: <Layout/>,
      children:[
        {
          path:"/",
          element:<Home/>
        },
        {
          path:"/post/:id",
          element:<Single/>
        },
        {
          path:"/write",
          element:<Write/>
        },
      ]
    },
    {
        path: "/login",
        element: <Login/>,
      },
      {
        path: "/register",
        element: <Register/>,
      }
  ]);


const App = () => {
  return (
    <div className="app">
      <div className="container">
      <RouterProvider router={router}/>
      </div>
    </div>
  )
}

export default App
