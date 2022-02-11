size(800, 800);

//background_sky
stroke(#000031);
fill(#000031);
rect(0, 0, 800, 800);
stroke(#FFFFFF);
fill(#FFFFFF, 40);
rect(0, 0, 800, 800);

//background_stars
stroke(#CEF2FF);
strokeWeight(4);
point(50, 198);
point(140, 105);
point(198, 91);
point(111, 308);
point(263, 177);
point(385, 267);
point(429, 151);
point(433, 293);
point(501, 224);
point(384, 63);
point(577, 195);
point(619, 189);
point(518, 147);
point(752, 293);
point(640, 50);

//sun
stroke(#FFF4B9);
strokeWeight(1);
fill(#FFF4B9);
ellipse(680, 130, 80, 80);

//earth
stroke(#1C8FFF);
strokeWeight(1);
fill(#1C8FFF);
ellipse(600, 180, 150, 150);

//background_mountain
stroke(#818181);
strokeWeight(1);
fill(#818181);
triangle(0, 420, 800, 420, 400, 350);
triangle(40, 420, 170, 450, 100, 380);
triangle(150, 400, 300, 440, 190, 355);
triangle(475, 400, 590, 415, 540, 350);
triangle(500, 420, 700, 420, 610, 370);
triangle(677, 420, 757, 420, 720, 378);

//moon
stroke(#ADADAD);
strokeWeight(1);
fill(#ADADAD);
ellipse(400, 600, 2500, 380);

//dome_base
stroke(#C5E1FA);
strokeWeight(1);
fill(#C5E1FA, 0);
arc(400, 500, 600, 100, PI, TWO_PI);
stroke(#C5E1FA);
fill(#C5E1FA, 30);
arc(400, 500, 600, 100, 0, PI);

//buildings
stroke(#A0A0A0);
strokeWeight(1);
fill(#A0A0A0);
rect(180, 400, 50, 100);
rect(220, 350, 60, 170);
rect(230, 425, 75, 75);
rect(305, 380, 60, 120);
rect(365, 300, 100, 220);
rect(465, 400, 40, 100);
rect(505, 390, 55, 110);
rect(555, 330, 45, 170);

//dome
stroke(#C5E1FA);
strokeWeight(1);
fill(#C5E1FA, 30);
arc(400, 500, 600, 500, PI, TWO_PI);
