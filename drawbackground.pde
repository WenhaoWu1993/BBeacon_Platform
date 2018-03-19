void drawbackground(){
//head
  fill(4);
  noStroke();
  rect(0,0,width,62);
  logo = loadImage("logo.png");
  image(logo,50,10);
  
  //center frame
  rectMode(CENTER);
  noFill();
  stroke(102);
  rect(width/2,(height/2) + 31,1388,800);
  
  //three blocks
  rectMode(CORNER);
  noStroke();
  fill(4);
  rect(blockX,blockY1,blockWidth,blockHeight);
  rect(blockX,blockY2,blockWidth,blockHeight);
  rect(blockX,blockY3,blockWidth,blockHeight);
  iconWeight = loadImage("iconWeight.png");
  iconTemp = loadImage("iconTemp.png");
  iconHumidity = loadImage("iconHumidity.png");
  image(iconWeight,blockX+20,blockY1+10);
  image(iconTemp,blockX+20,blockY2+10);
  image(iconHumidity,blockX+20,blockY3+10);
  fill(255);
  textAlign(LEFT,TOP);
  textSize(20);
  text("Weight/ g",blockX+60,blockY1+10);
  text("Temperature/ C",blockX+60,blockY2+10);
  text("Humidity/ %",blockX+60,blockY3+10);
}