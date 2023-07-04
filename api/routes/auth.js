import express from "express"
import { login, logout, register } from "../contollers/auth.js"

const router = express.Router()

//To register,login and logout
router.post("/register",register)
router.post("/login",login)
router.post("/logout",logout)

export default router