<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
      body {
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100vh;
    display: block;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    background: #000;
}
.options{
            background-color:lightblue;
            padding: 40px;
            height: 250px;
            width: 220px;
            margin-top: 120px;
            margin-left: 580px;
            border-radius: 15px;
            
}
.glow-on-hover {
    width: 200px;
    height: 40px;
    border: none;
    outline: none;
    color: #fff;
    background: #111;
    cursor: pointer;
    position: relative;
    z-index: 0;
    border-radius: 10px;
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
#goback{
    width: 100px;
    height: 30px;
    background-color: #002bff;
    margin-left: 50px;
}
    </style>
</head>
<body>
    <h1 style="color:rgb(21, 255, 0);text-align:center">Main Page</h1>
         <div class="options">
            <form action="addpage.jsp">
           
                <button class="glow-on-hover" >Add Laptop</button>
            </form>
           
            <br>
            <form action="find.jsp">
                <button class="glow-on-hover" >Find Laptop</button>
             </form>
             <br>
             <form action="delete.jsp">
                <button class="glow-on-hover" >Delete Laptop</button>
             </form>
             <br>
        <form action="index.jsp">
            <button class="glow-on-hover" id="goback" >go to login </button>
        </form>
         </div>
        
</body>
</html>