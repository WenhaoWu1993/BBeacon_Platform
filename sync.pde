void weightSync(){
  if(stateWeight[0]*stateWeight[1]*stateWeight[2] >= 0){
    for(int k = 0;k < 3;k++){
      stateTemp[k] = stateWeight[k];
      stateHumid[k] = stateWeight[k];
    }
    if(stateWeight[0] == 0){
      tempDay.getCaptionLabel().set("-");
      humidDay.getCaptionLabel().set("-");
    }else{
      tempDay.getCaptionLabel().set(str(int(stateWeight[0])));
      humidDay.getCaptionLabel().set(str(int(stateWeight[0])));
    }
    if(stateWeight[1] == 0){
      tempMonth.getCaptionLabel().set("-");
      humidMonth.getCaptionLabel().set("-");
    }else{
      tempMonth.getCaptionLabel().set(months[int(stateWeight[1]-1)]);
      humidMonth.getCaptionLabel().set(months[int(stateWeight[1]-1)]);
    }
    tempYear.getCaptionLabel().set(str(int(stateWeight[2]+2011)));
    humidYear.getCaptionLabel().set(str(int(stateWeight[2]+2011)));    
  }
}

void tempSync(){
  if(stateTemp[0]*stateTemp[1]*stateTemp[2] >= 0){
    for(int k = 0;k < 3;k++){
      stateWeight[k] = stateTemp[k];
      stateHumid[k] = stateTemp[k];
    }
    if(stateTemp[0] == 0){
      weightDay.getCaptionLabel().set("-");
      humidDay.getCaptionLabel().set("-");
    }else{
      weightDay.getCaptionLabel().set(str(int(stateTemp[0])));
      humidDay.getCaptionLabel().set(str(int(stateTemp[0])));
    }
    if(stateWeight[1] == 0){
      weightMonth.getCaptionLabel().set("-");
      humidMonth.getCaptionLabel().set("-");
    }else{
      weightMonth.getCaptionLabel().set(months[int(stateTemp[1]-1)]);
      humidMonth.getCaptionLabel().set(months[int(stateTemp[1]-1)]);
    }
    weightYear.getCaptionLabel().set(str(int(stateTemp[2]+2011)));
    humidYear.getCaptionLabel().set(str(int(stateTemp[2]+2011)));    
  }
}

void humidSync(){
  if(stateHumid[0]*stateHumid[1]*stateHumid[2] >= 0){
    for(int k = 0;k < 3;k++){
      stateWeight[k] = stateHumid[k];
      stateTemp[k] = stateHumid[k];
    }
    if(stateHumid[0] == 0){
      weightDay.getCaptionLabel().set("-");
      tempDay.getCaptionLabel().set("-");
    }else{
      weightDay.getCaptionLabel().set(str(int(stateHumid[0])));
      tempDay.getCaptionLabel().set(str(int(stateHumid[0])));
    }
    if(stateHumid[1] == 0){
      weightMonth.getCaptionLabel().set("-");
      tempMonth.getCaptionLabel().set("-");
    }else{
      weightMonth.getCaptionLabel().set(months[int(stateHumid[1]-1)]);
      tempMonth.getCaptionLabel().set(months[int(stateHumid[1]-1)]);
    }
    weightYear.getCaptionLabel().set(str(int(stateHumid[2]+2011)));
    tempYear.getCaptionLabel().set(str(int(stateHumid[2]+2011)));    
  }
}