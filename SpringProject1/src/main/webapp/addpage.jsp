<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
      body{
        background-color: black;
      }
       .form{
        background:linear-gradient(red,transparent),
            linear-gradient(to top right,blue,transparent);
            background-blend-mode: screen;
            height: 400px;
            width: 260px;
            padding: 30px;
            padding-left: 40px;
            padding-right: 40px;
            margin-left: 580px;
            margin-top: 50px;
            border-radius: 20px;
      }
      .input{
        background-color: rgb(241, 243, 243);
        height: 10px;
        width: 160px;
        padding: 10px;
        border-radius: 5px;
        box-shadow: 10px;
        color: black;
        margin-top: 10px;
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
#b1{
    margin-top: 10px;
    height: 30px;
    width: 100px;
    margin-left: 40px;
}
#b2{
    
    margin-top: 10px;
    height: 25px;
    width: 100px;
    margin-left: 0px;
}
    </style>
</head>
<body>
      <h1 style="color: blue; text-align: center;">Add Laptops To Your Space</h1>
      <div class="form">
        <form action="add">
          <input class="input" type="text" name="laptopid" placeholder="enter laptop id"><br>
          <input class="input"  type="text" name="modelname" placeholder="enter model name"><br>
          <input class="input" type="text" name="ramsize" placeholder="enter ramsize"><br>
          <input class="input" type="text" name="processor" placeholder="enter processor"><br>
          <input class="input" type="text" name="price" placeholder="enter price"><br>
          <input class="input"type="text" name="manfcompany" placeholder="enter company"><br>
          <input class="input"type="text" name="gpu" placeholder="enter gpu"><br>
          <input class="input"type="text" name="ratings" placeholder="enter ratings"><br>
          <button class="glow-on-hover" id="b1">Add </button>
        </form>
        <form action="main.jsp">
            <button class="glow-on-hover" id="b2">go to main</button>
      </form>
      </div>
      
</body>
</html>