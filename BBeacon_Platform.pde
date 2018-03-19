import controlP5.*;

PImage logo, iconWeight, iconTemp, iconHumidity;
PImage daychart_weight, daychart_temp, daychart_humid;
PImage monthchart_weight, monthchart_temp, monthchart_humid;
PImage yearchart_weight, yearchart_temp, yearchart_humid;

float frameWidth = 1388, frameHeight = 800;
float blockWidth = 1352, blockHeight = 242;
float blockX = 0, blockY1 = 0, blockY2 = 0, blockY3 = 0;

float[] stateWeight = {-5,-5,-5};
float[] stateTemp = {-5,-5,-5};
float[] stateHumid = {-5,-5,-5};
float[] substateWeight = {-5,-5,-5};
float[] substateTemp = {-5,-5,-5};
float[] substateHumid = {-5,-5,-5};

ControlP5 cp5;
DropdownList weightYear, weightMonth, weightDay, subweightYear, subweightMonth, subweightDay;
DropdownList tempYear, tempMonth, tempDay, subtempYear, subtempMonth, subtempDay;
DropdownList humidYear, humidMonth, humidDay, subhumidYear, subhumidMonth, subhumidDay;

CheckBox checkboxWeight, checkboxTemp, checkboxHumid;

String[] months ={"January","February","March","April","May","June","July",
                  "August","September","October","November","December"};

String[] name = {"0","0"};
float[] value_ = {0,0};

int[] checkWeight = {-1,-1,-1,-1,-1};
int[] checkTemp = {-1,-1,-1,-1,-1};
int[] checkHumid = {-1,-1,-1,-1,-1};

float[] boxWeightY = new float[5];
float[] boxTempY = new float[5];
float[] boxHumidY = new float[5];

boolean leapYear_weight = false;
int days_weight = 30;
boolean leapYear_temp = false;
int days_temp = 30;
boolean smallMonth_humid = false, leapYear_humid = false, february_humid = false;
int days_humid = 30;

float daysbuff = -1;

boolean boxWeight = false, boxTemp = false, boxHumid = false;

PImage weightday, weightmonth, weightyear;
PImage tempday, subtempday, tempaverage, temphigh, templow, tempincrease;
PImage humidday;

PImage sideTexts;

PImage checkweight, checktemp, checkhumid;

void setup(){
  fullScreen();
  //background(15);
  cp5 = new ControlP5(this);
  
  blockX = ((frameWidth - blockWidth)/2) + (width - frameWidth)/2;
  blockY1 = ((frameHeight - 3*blockHeight)/4) + (height/2) + 31 - frameHeight/2;
  blockY2 = blockY1 + (frameHeight - 3*blockHeight)/4 + blockHeight;
  blockY3 = blockY1 + (frameHeight - 3*blockHeight)/2 + 2*blockHeight;
  //create dropdownlists
  createDropdownLists();
  createButtons();
  //initialize charts
  daychart_weight = loadImage("daychartweight.png");
  daychart_temp = loadImage("daycharttemp.png");
  daychart_humid = loadImage("daycharthumid.png");
  monthchart_weight = loadImage("monthchartweight.png");
  monthchart_temp = loadImage("monthcharttemp.png");
  monthchart_humid = loadImage("monthcharthumid.png");
  yearchart_weight = loadImage("yearchartweight.png");
  yearchart_temp = loadImage("yearcharttemp.png");
  yearchart_humid = loadImage("yearcharthumid.png");
  
  weightday = loadImage("weightday.png");
  weightmonth = loadImage("weightmonth.png");
  weightyear = loadImage("weightyear.png");
  tempday = loadImage("tempday.png");
  subtempday = loadImage("subtempday.png");
  tempaverage = loadImage("tempaverage.png");
  tempincrease = loadImage("tempincrease.png");
  temphigh = loadImage("temphigh.png");
  templow = loadImage("templow.png");
  humidday = loadImage("humidday.png");
  sideTexts = loadImage("sideText.png");
  
  checktemp = loadImage("checktemp.png");
  checkweight = loadImage("checkweight.png");
  checkhumid = loadImage("checkhumid.png");
  
  for(int k = 0;k < 5;k++){
    if(k < 4){
      boxWeightY[k] = blockY1+64+k*25.4;
      boxTempY[k] = blockY2+64+k*25.4;
      boxHumidY[k] = blockY3+64+k*25.4;
    }else{
      boxWeightY[k] = blockY1+171.4;
      boxTempY[k] = blockY2+171.4;
      boxHumidY[k] = blockY3+171.4;
    }
  }
  
}

void customize(DropdownList ddl,String i,String j,String m){
  if(m.equals("main")){
    ddl.setSize(154,188)
       .setItemHeight(20)
       .setBarHeight(26);
  }else{
    ddl.setSize(64,65)
       .setItemHeight(12)
       .setBarHeight(15);
  }
  if(i.equals("weight")){
    ddl.setColorBackground(color(137,121,10))
       .setColorActive(color(230,199,31))
       .setColorForeground(color(230,199,31));
  }else if(i.equals("temp")){
    ddl.setColorBackground(color(86,114,24))
       .setColorActive(color(168,207,56))
       .setColorForeground(color(168,207,56));
  }else{
    ddl.setColorBackground(color(31,96,127))
       .setColorActive(color(68,174,227))
       .setColorForeground(color(68,174,227));
  }
  if(j.equals("year")){
    for(int k = 0;k < 6;k++){
      ddl.addItem(str(k + 2011),k);
    }
    ddl.getCaptionLabel().set("Year");
  }else if(j.equals("month")){
    ddl.addItem("-",0);
    for(int k = 0;k < 12;k++){
      ddl.addItem(months[k],k+1);
    }
    ddl.getCaptionLabel().set("Month");
  }else{
    ddl.addItem("-",0);
    for(int k = 0;k < 30;k++){
      ddl.addItem(str(k + 1),k+1);
    }
    ddl.getCaptionLabel().set("Day");
  }
}

void draw(){
  background(15);
  drawbackground();
  addChart(stateWeight, stateTemp, stateHumid);
}

void checkboxWeight(){
  for(int k = 0;k < 5;k++){
    stroke(255);
    noFill();
    ellipse(blockX+1083,boxWeightY[k],11,11);
    if(checkWeight[k] == 1){
      image(checkweight,blockX+1083-8,boxWeightY[k]-5);
    }
  }
}

void checkboxTemp(){
  for(int k = 0;k < 5;k++){
    stroke(255);
    noFill();
    ellipse(blockX+1083,boxTempY[k],11,11); 
    if(checkTemp[k] == 1){
      image(checktemp,blockX+1083-8,boxTempY[k]-5);
    }
  }
}

void checkboxHumid(){
  for(int k = 0;k < 5;k++){
    stroke(255);
    noFill();
    ellipse(blockX+1083,boxHumidY[k],11,11);
    if(checkHumid[k] == 1){
      image(checkhumid,blockX+1083-8,boxHumidY[k]-5);
    }
  }
}

void mouseClicked(){
  for(int k = 0;k < 5;k++){
    //weight
    if(boxWeight && dist(mouseX,mouseY,blockX+1083,boxWeightY[k]) <= 11){
      checkWeight[k] = checkWeight[k] * -1;
    }
    //temp
    if(boxTemp && dist(mouseX,mouseY,blockX+1083,boxTempY[k]) <= 11){
      checkTemp[k] = checkTemp[k] * -1;
    }
    //humid
    if(boxHumid && dist(mouseX,mouseY,blockX+1083,boxHumidY[k]) <= 11){
      checkHumid[k] = checkHumid[k] * -1;
    }
  }
}


void addChart(float[] stateWeight, float[] stateTemp, float[] stateHumid){
  //weight chart
  if(stateWeight[0] > 0 && stateWeight[1] > 0 && stateWeight[2] >= 0){
    checkboxWeight();
    boxWeight = true;
    image(daychart_weight,blockX+19,blockY1+49);
    image(sideTexts,blockX+1098,blockY1+55);
    if(stateWeight[0] == 2){
      image(weightday,blockX,blockY1);
    }
  }
  else if(stateWeight[0] == 0 && stateWeight[1] > 0 && stateWeight[2] >= 0){
    checkboxWeight();
    boxWeight = true;
    image(monthchart_weight,blockX+19,blockY1+49);
    image(sideTexts,blockX+1098,blockY1+55);
    if(stateWeight[1] == 2){
      image(weightmonth,blockX,blockY1);
    }
  }
  else if(stateWeight[0] == 0 && stateWeight[1] == 0 && stateWeight[2] >= 0){
    checkboxWeight();
    boxWeight = true;
    image(yearchart_weight,blockX+19,blockY1+49);
    image(sideTexts,blockX+1098,blockY1+55);
    if(stateWeight[2] == 2){
      image(weightyear,blockX,blockY1);
    }
  }else{
    boxWeight = false;
  }
  //temp chart
  if(stateTemp[0] > 0 && stateTemp[1] > 0 && stateTemp[2] >= 0){
    checkboxTemp();
    boxTemp = true;
    image(daychart_temp,blockX+19,blockY2+49);
    image(sideTexts,blockX+1098,blockY2+55);
    if(stateTemp[0] == 2){
      image(tempday,blockX,blockY2);
    }
    if(checkTemp[0] == 1){
      image(tempaverage,blockX,blockY2);
    }
    if(checkTemp[1] == 1){
      image(tempincrease,blockX,blockY2);
    }
    if(checkTemp[2] == 1){
      image(temphigh,blockX,blockY2);
    }
    if(checkTemp[3] == 1){
      image(templow,blockX,blockY2);
    }
    if(checkTemp[4] == 1){
      image(subtempday,blockX,blockY2);
    }
  }
  else if(stateTemp[0] == 0 && stateTemp[1] > 0 && stateTemp[2] >= 0){
    checkboxTemp();
    boxTemp = true;
    image(monthchart_temp,blockX+19,blockY2+49);
    image(sideTexts,blockX+1098,blockY2+55);
  }
  else if(stateTemp[0] == 0 && stateTemp[1] == 0 && stateTemp[2] >= 0){
    checkboxTemp();
    boxTemp = true;
    image(yearchart_temp,blockX+19,blockY2+49);
    image(sideTexts,blockX+1098,blockY2+55);
  }else{
    boxTemp = false;
  }
  //humid chart
  if(stateHumid[0] > 0 && stateHumid[1] > 0 && stateHumid[2] >= 0){
    checkboxHumid();
    boxHumid = true;
    image(daychart_humid,blockX+19,blockY3+49);
    image(sideTexts,blockX+1098,blockY3+55);
    if(stateHumid[0] == 2){
      image(humidday,blockX,blockY3);
    }
  }
  else if(stateHumid[0] == 0 && stateHumid[1] > 0 && stateHumid[2] >= 0){
    checkboxHumid();
    boxHumid = true;
    image(monthchart_humid,blockX+19,blockY3+49);
    image(sideTexts,blockX+1098,blockY3+55);
  }
  else if(stateHumid[0] == 0 && stateHumid[1] == 0 && stateHumid[2] >= 0){
    checkboxHumid();
    boxHumid = true;
    image(yearchart_humid,blockX+19,blockY3+49);
    image(sideTexts,blockX+1098,blockY3+55);
  }else{
    boxHumid = false;
  }
}
  

  
  
  