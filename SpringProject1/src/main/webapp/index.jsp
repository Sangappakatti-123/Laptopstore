<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login page</title>
    <style>
        body{
           background-color: black;
            
        }
        .login{
            background:linear-gradient(red,transparent),
            linear-gradient(to top right,blue,transparent);
            background-blend-mode: screen;
            width: 250px;
            height: 150px;
            padding: 40px 40px 50px 50px ;
             margin-left: 580px;
            margin-top: 150px;
            border-radius: 10px;
        }
        .input{
            background-color: aliceblue;
            color: black;
            width: auto;
            padding: 5px;
            border-radius: 10px;
            box-shadow: 20px;
            margin-top: 10px;
        }
        .glow-on-hover {
    width: 80px;
    height: 30px;
    border: none;
    outline: none;
    color: #fff;
    background: #111;
    cursor: pointer;
    position: relative;
    z-index: 0;
    border-radius: 10px;
    margin-top: 10px;
}

.glow-on-hover:before {
    content: '';
    background: linear-gradient(45deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5, #002bff, #7a00ff, #ff00c8, #ff0000);
    position: absolute;
    top: -2px;
    left:-2px;
    background-size: 400%;
    z-index: -1;
    filter: blur(5px);
    width: calc(100% + 4px);
    height: calc(100% + 4px);
    animation: glowing 20s linear infinite;
    opacity: 0;
    transition: opacity .3s ease-in-out;
    border-radius: 10px;
}

.glow-on-hover:active {
    color: #000
}

.glow-on-hover:active:after {
    background: transparent;
}

.glow-on-hover:hover:before {
    opacity: 1;
}

.glow-on-hover:after {
    z-index: -1;
    content: '';
    position: absolute;
    width: 100%;
    height: 100%;
    background: #111;
    left: 0;
    top: 0;
    border-radius: 10px;
}

@keyframes glowing {
    0% { background-position: 0 0; }
    50% { background-position: 400% 0; }
    100% { background-position: 0 0; }
}
    </style>
</head>
<body>
       <h1 style="color:purple; text-align: center;">Login Page</h1>
       <div class="login">
        <form action="login">
            <input class="input" type="text" name="data" placeholder=" username or email"><br>
            <input class="input" type="password" name="password" placeholder=" password"><br>
            <button class="glow-on-hover" >Login</button>
           </form>
       </div>
       
</body>
</html>