void controlEvent(ControlEvent theEvent){
  String controller = theEvent.getName();
  float value = theEvent.getController().getValue();
  calculateDays(controller,value,theEvent);
  setBarsColor(controller,value,theEvent);
  setSubs(stateWeight, stateTemp, stateHumid, controller, value, theEvent);
}

void setBarsColor(String controller, float value, ControlEvent theEvent){
  if(theEvent.isController() && controller.indexOf("sub") == -1){
    if(controller.indexOf("weight") != -1){
      if(controller.indexOf("Day") != -1){
        stateWeight[0] = value;
      }else if(controller.indexOf("Month") != -1){
        stateWeight[1] = value;
      }else if(controller.indexOf("Year") != -1){
        stateWeight[2] = value;
      }
    }else if(controller.indexOf("temp") != -1){
      if(controller.indexOf("Day") != -1){
        stateTemp[0] = value;
      }else if(controller.indexOf("Month") != -1){
        stateTemp[1] = value;
      }else if(controller.indexOf("Year") != -1){
        stateTemp[2] = value;
      }
    }else if(controller.indexOf("humid") != -1){
      if(controller.indexOf("Day") != -1){
        stateHumid[0] = value;
      }else if(controller.indexOf("Month") != -1){
        stateHumid[1] = value;
      }else if(controller.indexOf("Year") != -1){
        stateHumid[2] = value;
      }
    }
    //change color
    //weight
    if(stateWeight[0] > 0){
      weightDay.setColorBackground(color(230,199,31));
      weightDay.setColorForeground(color(196,172,26));
      weightMonth.setColorBackground(color(137,121,10));
      weightMonth.setColorForeground(color(230,199,31));
      weightYear.setColorBackground(color(137,121,10));
      weightYear.setColorForeground(color(230,199,31));
    }else if(stateWeight[0] == 0 && stateWeight[1] > 0){
      weightDay.setColorBackground(color(137,121,10));
      weightDay.setColorForeground(color(230,199,31));
      weightMonth.setColorBackground(color(230,199,31));
      weightMonth.setColorForeground(color(196,172,26));
      weightYear.setColorBackground(color(137,121,10));
      weightYear.setColorForeground(color(230,199,31));
    }else if(stateWeight[0] == 0 && stateWeight[1] == 0){
      weightDay.setColorBackground(color(137,121,10));
      weightDay.setColorForeground(color(230,199,31));
      weightMonth.setColorBackground(color(137,121,10));
      weightMonth.setColorForeground(color(230,199,31));
      weightYear.setColorBackground(color(230,199,31));
      weightYear.setColorForeground(color(196,172,26));
    }
    //temp
    if(stateTemp[0] > 0){
      tempDay.setColorBackground(color(168,207,56));
      tempDay.setColorForeground(color(123,155,40));
      tempMonth.setColorBackground(color(86,114,24));
      tempMonth.setColorForeground(color(168,207,56));
      tempYear.setColorBackground(color(86,114,24));
      tempYear.setColorForeground(color(168,207,56));
    }else if(stateTemp[0] == 0 && stateTemp[1] > 0){
      tempDay.setColorBackground(color(86,114,24));
      tempDay.setColorForeground(color(168,207,56));
      tempMonth.setColorBackground(color(168,207,56));
      tempMonth.setColorForeground(color(123,155,40));
      tempYear.setColorBackground(color(86,114,24));
      tempYear.setColorForeground(color(168,207,56));
    }else if(stateTemp[0] == 0 && stateTemp[1] == 0){
      tempDay.setColorBackground(color(86,114,24));
      tempDay.setColorForeground(color(168,207,56));
      tempMonth.setColorBackground(color(86,114,24));
      tempMonth.setColorForeground(color(168,207,56));
      tempYear.setColorBackground(color(168,207,56));
      tempYear.setColorForeground(color(123,155,40));
    }
    //humid
    if(stateHumid[0] > 0){
      humidDay.setColorBackground(color(68,174,227));
      humidDay.setColorForeground(color(58,146,190));
      humidMonth.setColorBackground(color(31,96,127));
      humidMonth.setColorForeground(color(68,174,227));
      humidYear.setColorBackground(color(31,96,127));
      humidYear.setColorForeground(color(68,174,227));
    }else if(stateHumid[0] == 0 && stateHumid[1] > 0){
      humidDay.setColorBackground(color(31,96,127));
      humidDay.setColorForeground(color(68,174,227));
      humidMonth.setColorBackground(color(68,174,227));
      humidMonth.setColorForeground(color(58,146,190));
      humidYear.setColorBackground(color(31,96,127));
      humidYear.setColorForeground(color(68,174,227));
    }else if(stateHumid[0] == 0 && stateHumid[1] == 0){
      humidDay.setColorBackground(color(31,96,127));
      humidDay.setColorForeground(color(68,174,227));
      humidMonth.setColorBackground(color(31,96,127));
      humidMonth.setColorForeground(color(68,174,227));
      humidYear.setColorBackground(color(68,174,227));
      humidYear.setColorForeground(color(58,146,190));
    }
  }
}