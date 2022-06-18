var R = 8,r = 1,a = 4;
var x, y, z;
z = 0;
 s = "";
for (var t = 0.0; t < Math.PI * 16; t += 0.03) {
x = (R + r) * Math.cos((r / R) * t) - a * Math.cos((1 + r / R) * t);
x = 34.02097 + 0.001 * x;
y = (R + r) * Math.sin((r / R) * t) - a * Math.sin((1 + r / R) * t);
y = -118.289509 + 0.001 * y;
document.write(y + " , " + x + "<br>");
z += 1;
s +=
    "<Placemark>\n<styleUrl>#z1</styleUrl><Point><coordinates>" +
    y +
    "," +
    x +
    "</coordinates></Point>\n</Placemark>\n";
}
console.log(z);
console.log(s);