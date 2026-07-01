
<!DOCTYPE HTML>
<html lang= 'en'>
<head>
<title>learning ajax</title>
<h1>Basic calculator</h1>
</head>

<body>
<table>
<tr><td>
First Number</td> <td> <input type = 'number' name= 'first' id = 'first' placeholder = 'enter a number'>
</td></tr>
<tr><td>
Second Number</td> <td> <input type = 'number' name= 'second' id = 'second' placeholder = 'enter a number'>
</td></tr>
<tr><td>
<Button type ='button' onclick='calculate()'>calculate sum</button>
</tr></td>
<tr><td>
</td> <td> <span style='color:black' id = 'resultField'></span>
</td></tr>
</table>
</body>
<script>

function calculate()
{
var vFirst=document.getElementById('first').value;
var vSecond=document.getElementById('second').value;

var xmlHttpRequest=new XMLHttpRequest(); 



xmlHttpRequest.open("GET","RequestReceiver?first="+vFirst+"&second="+vSecond, true)

console.log("RequestReceiver?first="+vFirst+"&second="+vSecond); 
xmlHttpRequest.onreadystatechange = function () // in context to js fun are treated as objects
{
if(xmlHttpRequest.readyState==4)
{
if(xmlHttpRequest.status==200)
{
document.getElementById('resultField').innerHTML=xmlHttpRequest.responseText;
}
else
{
console.log("request failed "+xmlHttpRequest.status);
}
}
} 

xmlHttpRequest.send();
}
</script>

</html>