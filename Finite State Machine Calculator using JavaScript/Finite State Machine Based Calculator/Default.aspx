<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title> 
   <script src="calc2.js" type="text/javascript"></script>
    <style type="text/css">
      
        #output
        {
            width: 304px;
            text-align: right;
            border:solid;
            height: 31px;
            font-size :x-large;
        }
    
        #clear
        {
            width: 309px;
            background:-moz-linear-gradient(bottom, #0a0809, #0a0f0b 50%, #6d7673 50%, #afbdc0);
              background:-webkit-gradient(linear, left bottom, left top, from(#0a0809), to(#afbdc0), color-stop(0.5, #0a0f0b), color-stop(0.5, #6d7673));
              -moz-border-radius:20px;
              -webkit-border-radius:20px;

              -moz-box-shadow:0px 0px 7px rgba(255, 255,255, 0.5);
              -webkit-box-shadow:0px 0px 7px rgba(255, 255,255, 0.5);

              /* Text Styling */
              color:#ff7d00;
 
              font-family:'HighlandGothicFLFRegular', Impact, 'Arial Black', sans-serif;
              font-size:20px;
              padding-bottom:5px;

        }
        

        #button {
  /* General Properties */
  height:34px;
  width:250px;
  border:1px solid #000;
  background:#717a77;
  /* CSS3 Styling */
  background:-moz-linear-gradient(bottom, #0a0809, #0a0f0b 50%, #6d7673 50%, #afbdc0);
  background:-webkit-gradient(linear, left bottom, left top, from(#0a0809), to(#afbdc0), color-stop(0.5, #0a0f0b), color-stop(0.5, #6d7673));
  -moz-border-radius:20px;
  -webkit-border-radius:20px;
  border-radius:20px;
  -moz-box-shadow:0px 0px 7px rgba(255, 255,255, 0.5);
  -webkit-box-shadow:0px 0px 7px rgba(255, 255,255, 0.5);
  box-shadow:0px 0px 7px rgba(255, 255,255, 0.5);
  /* Text Styling */
  color:#ff7d00;
  text-shadow:0px -1px 0px #000;
  font-family:'HighlandGothicFLFRegular', Impact, 'Arial Black', sans-serif;
  font-size:20px;
  padding-bottom:5px;
}

#button:hover {
  font-size:21px;
  -moz-box-shadow:0px 0px 7px rgba(255, 255,255, 1);
  -webkit-box-shadow:0px 0px 7px rgba(255, 255,255, 1);
  box-shadow:0px 0px 7px rgba(255, 255,255, 1);
}

#button:focus {
  -moz-box-shadow:0px 0px 7px rgba(255, 255,255, 0.75);
  -webkit-box-shadow:0px 0px 7px rgba(255, 255,255, 0.75);
  box-shadow:0px 0px 7px rgba(255, 255,255, 0.75);
}
        #box {
            height:370px;
             width:308px;
             padding-left:10px;
             padding-right:10px;
             padding-bottom:25px;
             padding-top:25px;
            
         border:5px solid #000;
        }
  
#button:active {
  border-width:2px 1px 1px 2px;
  font-size:20px;
}
        #Label1 {
             text-shadow:0px -1px 0px #000;
  font-family:'HighlandGothicFLFRegular', Impact, 'Arial Black', sans-serif;
  font-size:40px;
        }

    </style>
    
</head>
<body onload="Page_Load()" style="margin-top: 10px">   
    <form id="form1" runat="server">
        &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Calculator and FSM - UTD" style="margin-left: 440px; margin-top: 100px" ></asp:Label>
    <div id="box" style="margin-left: 489px; margin-top: 30px">
    <div>   
        <input id="output" type="text" readonly="readonly" value="0"  />
   </div>
    <p>
        <input id="button" type="button" value="7" style="width: 50px" onclick="btn_Click(7)"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="button"type="button" value="8" style="width: 50px" onclick="btn_Click(8)"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="button" type="button" value="9" style="width: 50px" onclick="btn_Click(9)" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="button" type="button" value="/" style="width: 50px" onclick="div_Click()"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        <input id="button" type="button" value="4" style="width: 50px"onclick="btn_Click(4)"/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="button" type="button" value="5" style="width: 50px" onclick="btn_Click(5)"/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="button" type="button" value="6" style="width: 50px" onclick="btn_Click(6)"/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="button" type="button" value="*" style="width: 50px" onclick="mul_Click()" />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        <input id="button" type="button" value="1" style="width: 50px" onclick="btn_Click(1)"/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="button" type="button" value="2" style="width: 50px" onclick="btn_Click(2)"/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="button" type="button" value="3" style="width: 50px" onclick="btn_Click(3)"/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="button" type="button" value="+" style="width: 50px" onclick="plus_Click()"/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        <input id="button" type="button" value="0" style="width: 50px" onclick="btn_Click(0)"/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="button" type="button" value="." style="width: 50px" onclick="dot_Click()"/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="button" type="button" value="=" style="width: 50px" onclick="eql_Click()"/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="button" type="button" value="-" style="width: 50px" onclick="min_Click()"/>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     </p>
   
    <p>
        <input id="clear" type="button" value="CLEAR" onclick="clr_Click()" /></p>
   
   
   </div>
        <p>
            
        </p>
    </form>
    <asp:Image ID="FiniteStateMachine" runat="server" Height="534px" style="margin-left: 125px; border:solid;  margin-right: 195px;" Width="1099px" ImageUrl="~/FiniteStateMachine.jpg" />
</body>
</html>

