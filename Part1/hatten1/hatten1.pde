size(800, 600);
noStroke();

float cos1 = 400 + 150 * cos(0 * 3.14 / 180) - 90;
float cos2 = 400 + 150 * cos(45 * 3.14 / 180) - 90;
float cos3 = 400 + 150 * cos(90 * 3.14 / 180) - 90;
float cos4 = 400 + 150 * cos(135 * 3.14 / 180) - 90;
float cos5 = 400 + 150 * cos(180 * 3.14 / 180) - 90;
float cos6 = 400 + 150 * cos(225 * 3.14 / 180) - 90;
float cos7 = 400 + 150 * cos(270 * 3.14 / 180) - 90;
float cos8 = 400 + 150 * cos(315 * 3.14 / 180) - 90;

float sin1 = 300 - 150 * sin(0 * 3.14 / 180) - 90;
float sin2 = 300 - 150 * sin(45 * 3.14 / 180) - 90;
float sin3 = 300 - 150 * sin(90 * 3.14 / 180) - 90;
float sin4 = 300 - 150 * sin(135 * 3.14 / 180) - 90;
float sin5 = 300 - 150 * sin(180 * 3.14 / 180) - 90;
float sin6 = 300 - 150 * sin(225 * 3.14 / 180) - 90;
float sin7 = 300 - 150 * sin(270 * 3.14 / 180) - 90;
float sin8 = 300 - 150 * sin(315 * 3.14 / 180) - 90;




fill(255, 255, 0);
rect(cos1, sin1, 180, 90);

//RED
fill(128, 0, 255);
rect(cos2, sin2, 180, 180);

fill(0, 255, 255);
rect(cos3, sin3, 180, 180);

fill(255, 0, 0);
rect(cos4, sin4, 180, 180);

fill(0, 255, 0);
rect(cos5, sin5, 180, 180);

fill(0, 0, 255);
rect(cos6, sin6, 180, 180);

fill(255, 128, 0);
rect(cos7, sin7, 180, 180);

fill(255, 0, 128);
rect(cos8, sin8, 180, 180);

fill(255, 255, 0);
rect(cos1, sin1 + 90, 180, 90);