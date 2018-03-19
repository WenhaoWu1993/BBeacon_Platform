void setSubs(float[] stateWeight, float[] stateTemp, float[] stateHumid, String controller, float value, ControlEvent theEvent){
  if(theEvent.isController() && controller.indexOf("sub") == -1){
    //set subs of the weight block
      //when day&month&year
    if(stateWeight[0] > 0){
        //day
      subweightDay.clear();
      for(int k = 0;k < days_weight;k++){
        subweightDay.addItem(str(k+1),k);
      }
      if((stateWeight[0] - 1) <= 0){
        subweightDay.getCaptionLabel().set("1");
      }else{
        subweightDay.getCaptionLabel().set(str(int(stateWeight[0] - 1)));
      }
        //month
      subweightMonth.clear();
      for(int k = 0;k < 12;k++){
        subweightMonth.addItem(months[k],k);
      }
      subweightMonth.getCaptionLabel().set(months[int(stateWeight[1]-1)]);
        //year
      subweightYear.clear();
      for(int k = 0;k < 6;k++){
        subweightYear.addItem(str(k + 2011),k);
      }
      subweightYear.getCaptionLabel().set(str(int(stateWeight[2] + 2011)));
    }
      //when month&year
    else if(stateWeight[0] == 0 && stateWeight[1] > 0){
        //day
      subweightDay.clear();
      subweightDay.getCaptionLabel().set("-");
        //month
      subweightMonth.clear();
      for(int k = 0;k < 12;k++){
        subweightMonth.addItem(months[k],k);
      }
      if((stateWeight[1]-2) <= 0){
        subweightMonth.getCaptionLabel().set(months[0]);
      }else{
        subweightMonth.getCaptionLabel().set(months[int(stateWeight[1]-2)]);
      }
        //year
      subweightYear.clear();
      for(int k = 0;k < 6;k++){
        subweightYear.addItem(str(k + 2011),k);
      }
      subweightYear.getCaptionLabel().set(str(int(stateWeight[2] + 2011)));
    }
      //when year
    else if(stateWeight[0] == 0 && stateWeight[1] == 0){
        //day
      subweightDay.clear();
      subweightDay.getCaptionLabel().set("-");
        //month
      subweightMonth.clear();
      subweightMonth.getCaptionLabel().set("-");
      
      subweightYear.clear();
      for(int k = 0;k < 6;k++){
        subweightYear.addItem(str(k + 2011),k);
      }
      if(stateWeight[2] <= 0){
        subweightYear.getCaptionLabel().set("2011");
      }else{
        subweightYear.getCaptionLabel().set(str(int(stateWeight[2] + 2010)));
      }
    }
      
    //set subs of the humid block
      //when day&month&year
    if(stateHumid[0] > 0){
        //day
      subhumidDay.clear();
      for(int k = 0;k < days_humid;k++){
        subhumidDay.addItem(str(k+1),k);
      }
      if((stateHumid[0] - 1) <= 0){
        subhumidDay.getCaptionLabel().set("1");
      }else{
        subhumidDay.getCaptionLabel().set(str(int(stateHumid[0] - 1)));
      }
        //month
      subhumidMonth.clear();
      for(int k = 0;k < 12;k++){
        subhumidMonth.addItem(months[k],k);
      }
      subhumidMonth.getCaptionLabel().set(months[int(stateHumid[1]-1)]);
        //year
      subhumidYear.clear();
      for(int k = 0;k < 6;k++){
        subhumidYear.addItem(str(k + 2011),k);
      }
      subhumidYear.getCaptionLabel().set(str(int(stateHumid[2] + 2011)));
    }
      //when month&year
    else if(stateHumid[0] == 0 && stateHumid[1] > 0){
        //day
      subhumidDay.clear();
      subhumidDay.getCaptionLabel().set("-");
        //month
      subhumidMonth.clear();
      for(int k = 0;k < 12;k++){
        subhumidMonth.addItem(months[k],k);
      }
      if((stateHumid[1]-2) <= 0){
        subhumidMonth.getCaptionLabel().set(months[0]);
      }else{
        subhumidMonth.getCaptionLabel().set(months[int(stateHumid[1]-2)]);
      }
        //year
      subhumidYear.clear();
      for(int k = 0;k < 6;k++){
        subhumidYear.addItem(str(k + 2011),k);
      }
      subhumidYear.getCaptionLabel().set(str(int(stateHumid[2] + 2011)));
    }
      //when year
    else if(stateHumid[0] == 0 && stateHumid[1] == 0){
        //day
      subhumidDay.clear();
      subhumidDay.getCaptionLabel().set("-");
        //month
      subhumidMonth.clear();
      subhumidMonth.getCaptionLabel().set("-");
      
      subhumidYear.clear();
      for(int k = 0;k < 6;k++){
        subhumidYear.addItem(str(k + 2011),k);
      }
      if(stateHumid[2] <= 0){
        subhumidYear.getCaptionLabel().set("2011");
      }else{
        subhumidYear.getCaptionLabel().set(str(int(stateHumid[2] + 2010)));
      }      
    }
    //set subs of the temp block
      //when day&month&year
    if(stateTemp[0] > 0){
        //day
      subtempDay.clear();
      for(int k = 0;k < days_temp;k++){
        subtempDay.addItem(str(k+1),k);
      }
      if((stateTemp[0] - 1) <= 0){
        subtempDay.getCaptionLabel().set("1");
      }else{
        subtempDay.getCaptionLabel().set(str(int(stateTemp[0] - 1)));
      }
        //month
      subtempMonth.clear();
      for(int k = 0;k < 12;k++){
        subtempMonth.addItem(months[k],k);
      }
      subtempMonth.getCaptionLabel().set(months[int(stateTemp[1]-1)]);
        //year
      subtempYear.clear();
      for(int k = 0;k < 6;k++){
        subtempYear.addItem(str(k + 2011),k);
      }
      subtempYear.getCaptionLabel().set(str(int(stateTemp[2] + 2011)));
    }
      //when month&year
    else if(stateTemp[0] == 0 && stateTemp[1] > 0){
        //day
      subtempDay.clear();
      subtempDay.getCaptionLabel().set("-");
        //month
      subtempMonth.clear();
      for(int k = 0;k < 12;k++){
        subtempMonth.addItem(months[k],k);
      }
      if((stateTemp[1]-2) <= 0){
        subtempMonth.getCaptionLabel().set(months[0]);
      }else{
        subtempMonth.getCaptionLabel().set(months[int(stateTemp[1]-2)]);
      }
        //year
      subtempYear.clear();
      for(int k = 0;k < 6;k++){
        subtempYear.addItem(str(k + 2011),k);
      }
      subtempYear.getCaptionLabel().set(str(int(stateTemp[2] + 2011)));
    }
      //when year
    else if(stateTemp[0] == 0 && stateTemp[1] == 0){
        //day
      subtempDay.clear();
      subtempDay.getCaptionLabel().set("-");
        //month
      subtempMonth.clear();
      subtempMonth.getCaptionLabel().set("-");
      
      subtempYear.clear();
      for(int k = 0;k < 6;k++){
        subtempYear.addItem(str(k + 2011),k);
      }
      if(stateTemp[2] <= 0){
        subtempYear.getCaptionLabel().set("2011");
      }else{
        subtempYear.getCaptionLabel().set(str(int(stateTemp[2] + 2010)));
      }      
    }
  }
}