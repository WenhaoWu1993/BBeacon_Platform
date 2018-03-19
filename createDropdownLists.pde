void createDropdownLists(){
  //main weight
  weightDay = cp5.addDropdownList("weightDay")
                 .setPosition(blockX+776,blockY1).close();
  customize(weightDay, "weight", "day", "main");
  
  weightMonth = cp5.addDropdownList("weightMonth")
                   .setPosition(blockX+776+154,blockY1).close();
  customize(weightMonth, "weight", "month", "main");
  
  weightYear = cp5.addDropdownList("weightYear")
                  .setPosition(blockX+776+154*2,blockY1).close();
  customize(weightYear, "weight", "year", "main");
  //sub weight
  subweightDay = cp5.addDropdownList("subweightDay")
                 .setPosition(blockX+1097,blockY1+188).close();
  customize(subweightDay, "weight", "day", "sub");
  
  subweightMonth = cp5.addDropdownList("subweightMonth")
                   .setPosition(blockX+1097+71,blockY1+188).close();
  customize(subweightMonth, "weight", "month", "sub");
  
  subweightYear = cp5.addDropdownList("subweightYear")
                  .setPosition(blockX+1097+71*2,blockY1+188).close();
  customize(subweightYear, "weight", "year", "sub");
  
  //main temp
  tempDay = cp5.addDropdownList("tempDay")
                 .setPosition(blockX+776,blockY2).close();
  customize(tempDay,"temp","day","main");
  
  tempMonth = cp5.addDropdownList("tempMonth")
                   .setPosition(blockX+776+154,blockY2).close();
  customize(tempMonth,"temp","month","main");
  
  tempYear = cp5.addDropdownList("tempYear")
                  .setPosition(blockX+776+154*2,blockY2).close();  
  customize(tempYear,"temp","year","main");
  //sub temp
  subtempDay = cp5.addDropdownList("subtempDay")
                 .setPosition(blockX+1097,blockY2+188).close();
  customize(subtempDay,"temp","day","sub");
  
  subtempMonth = cp5.addDropdownList("subtempMonth")
                   .setPosition(blockX+1097+71,blockY2+188).close();
  customize(subtempMonth,"temp","month","sub");
  
  subtempYear = cp5.addDropdownList("subtempYear")
                  .setPosition(blockX+1097+71*2,blockY2+188).close();  
  customize(subtempYear,"temp","year","sub");
  
  //main humid
  humidDay = cp5.addDropdownList("humidDay")
                 .setPosition(blockX+776,blockY3).close();
  customize(humidDay,"humid","day","main");
  
  humidMonth = cp5.addDropdownList("humidMonth")
                   .setPosition(blockX+776+154,blockY3).close();
  customize(humidMonth,"humid","month","main");
  
  humidYear = cp5.addDropdownList("humidYear")
                  .setPosition(blockX+776+154*2,blockY3).close(); 
  customize(humidYear,"humid","year","main");
  //sub humid
  subhumidDay = cp5.addDropdownList("subhumidDay")
                 .setPosition(blockX+1097,blockY3+188).close();
  customize(subhumidDay,"humid","day","sub");
  
  subhumidMonth = cp5.addDropdownList("subhumidMonth")
                   .setPosition(blockX+1097+71,blockY3+188).close();
  customize(subhumidMonth,"humid","month","sub");
  
  subhumidYear = cp5.addDropdownList("subhumidYear")
                  .setPosition(blockX+1097+71*2,blockY3+188).close(); 
  customize(subhumidYear,"humid","year","sub");

  

}