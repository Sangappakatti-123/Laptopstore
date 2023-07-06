<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find </title>
    <style>
         body{
             background-color: #000;
        }
        .forms{
            background-color: rgb(250, 252, 252);
            height: 400px;
            width: 250px;
            padding: 30px;
            padding-top: 10px;
            margin-top: 50px;
            margin-left: 580px;
            border-radius: 10px;
        }
        .form1{
            background:linear-gradient(red,transparent),
            linear-gradient(to top right,blue,transparent);
            background-blend-mode: screen;
            height: 60px;
            padding: 20px;
            width: 180px;
            margin-top: 30px;
            border-radius: 10px;
        }
        .form2{
            background:linear-gradient(red,transparent),
            linear-gradient(to top right,blue,transparent);
            background-blend-mode: screen;
            height: 60px;
            padding: 20px;
            width: 180px;
            margin-top: 30px;
            border-radius: 10px;
        }
        .form3{
            background:linear-gradient(red,transparent),
            linear-gradient(to top right,blue,transparent);
            background-blend-mode: screen;
            height: 60px;
            padding: 20px;
            width: 180px;
            margin-top: 30px;
            border-radius: 10px;
        }
        .input{
        background-color: rgb(241, 243, 243);
        height: 8px;
        width: 160px;
        padding: 10px;
        border-radius: 5px;
        box-shadow: 10px;
        color: black;
        margin-top: 10px;
      }
      .glow-on-hover {
    width: 100px;
    height: 30px;
    border: none;
    outline: none;
    color: #fff;
    background: #111;
    cursor: pointer;
    position: relative;
    z-index: 0;
    border-radius: 10px;
    margin-top: 5px;
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
.goback{
     position:absolute;
     top: 250px;
     left:10px
}
    </style>
</head>
<body>
      <h1 style="color: green; text-align: center;">Find Laptop....!</h1>
      <div class="forms">
        <div class="form1">
            <form action="findbyid">
                <input class="input"type="text" name="laptopid" placeholder="enter laptop id"><br>
                <button class="glow-on-hover" id="b1">Find </button>
              </form>
          </div>
          
          <div class="form2">
            <form action="findbyprice">
                <input class="input"type="text" name="price" placeholder="enter laptop price"><br>
                <button class="glow-on-hover" id="b1">Find </button>
              </form>
          </div>
          
          <div class="form3">
            <form action="findbyprocessor">
                <input class="input" type="text" name="processor" placeholder="enter laptop processor"><br>
                <button class="glow-on-hover" id="b1">Find </button>
              </form>
            </div>
    
      </div>
     
        <form action="main.jsp" class="goback">
            <button class="glow-on-hover" id="b1">go to main</button>
        </form>
   
      
</body>
</html>