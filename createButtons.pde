void createButtons(){
  cp5.addButton("weightSync")
     .setValue(0)
     .setPosition(blockX+1244,blockY1)
     .setSize(int(blockWidth-1244),26)
     .setColorBackground(color(137,121,10))
     .setColorForeground(color(230,199,31));
  cp5.addButton("tempSync")
     .setValue(0)
     .setPosition(blockX+1244,blockY2)
     .setSize(int(blockWidth-1244),26)
     .setColorBackground(color(86,114,24))
     .setColorForeground(color(168,207,56));
  cp5.addButton("humidSync")
     .setValue(0)
     .setPosition(blockX+1244,blockY3)
     .setSize(int(blockWidth-1244),26)
     .setColorBackground(color(31,96,127))
     .setColorForeground(color(68,174,227));
}