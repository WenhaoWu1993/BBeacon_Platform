void calculateDays(String controller, float value, ControlEvent theEvent){
  if(theEvent.isController() && controller.indexOf("Day") == -1 && controller.indexOf("sub") == -1){
   //println(theEvent.getController());
   //test leapYear_weight, smallMonth_weight and february_weight
   if(controller.indexOf("weightYear") != -1){
     if(value == 1 || value == 5){
       leapYear_weight = true;
     }else{
       leapYear_weight = false;
     }
     if(daysbuff == 2 || daysbuff == 4 || daysbuff == 6 || daysbuff == 9 || daysbuff == 11){
       if(daysbuff != 2){
         days_weight = 30;
       }else{
         days_weight = 28;
         if(leapYear_weight){
           days_weight = 29;
         }
       }
     }else{
       days_weight = 31;
     }     
   }else if(controller.indexOf("weightMonth") != -1){
     daysbuff = value;
     if(value == 2 || value == 4 || value == 6 || value == 9 || value == 11){
       if(value != 2){
         days_weight = 30;
       }else{
         days_weight = 28;
         if(leapYear_weight){
           days_weight = 29;
         }
       }
     }else{
       days_weight = 31;
     }
   }
   //test leapYear_temp, smallMonth_temp and february_temp
   if(controller.indexOf("tempYear") != -1){
     if(value == 1 || value == 5){
       leapYear_temp = true;
     }else{
       leapYear_temp = false;
     }
     if(daysbuff == 2 || daysbuff == 4 || daysbuff == 6 || daysbuff == 9 || daysbuff == 11){
       if(daysbuff != 2){
         days_temp = 30;
       }else{
         days_temp = 28;
         if(leapYear_temp){
           days_temp = 29;
         }
       }
     }else{
       days_temp = 31;
     } 
   }else if(controller.indexOf("tempMonth") != -1){
     daysbuff = value;
     if(value == 2 || value == 4 || value == 6 || value == 9 || value == 11){
       if(value != 2){
         days_temp = 30;
       }else{
         days_temp = 28;
         if(leapYear_temp){
           days_temp = 29;
         }
       }
     }else{
       days_temp = 31;
     }
   }
   //test leapYear_humid, smallMonth_humid and february_humid
   if(controller.indexOf("humidYear") != -1){
     if(value == 1 || value == 5){
       leapYear_humid = true;
     }else{
       leapYear_humid = false;
     }
     if(daysbuff == 2 || daysbuff == 4 || daysbuff == 6 || daysbuff == 9 || daysbuff == 11){
       if(daysbuff != 2){
         days_humid = 30;
       }else{
         days_humid = 28;
         if(leapYear_humid){
           days_humid = 29;
         }
       }
     }else{
       days_humid = 31;
     }
   }else if(controller.indexOf("humidMonth") != -1){
     daysbuff = value;
     if(value == 2 || value == 4 || value == 6 || value == 9 || value == 11){
       if(value != 2){
         days_humid = 30;
       }else{
         days_humid = 28;
         if(leapYear_humid){
           days_humid = 29;
         }
       }
     }else{
       days_humid = 31;
     }
   }
   setDays(days_weight, days_temp, days_humid);
  }
}

void setDays(int days_weight, int days_temp, int days_humid){
   //change day list of weight
   if(days_weight == 30){
     weightDay.clear();
     weightDay.addItem("-",0);
     for(int k = 1;k <= 30;k++){
       weightDay.addItem(str(k),k);
     }
   }else if(days_weight == 28){
     weightDay.clear();
     weightDay.addItem("-",0);
     for(int k = 1;k <= 28;k++){
       weightDay.addItem(str(k),k);
     }
   }else if(days_weight == 31){
     weightDay.clear();
     weightDay.addItem("-",0);
     for(int k = 1;k <= 31;k++){
       weightDay.addItem(str(k),k);
     }
   }else if(days_weight == 29){
     weightDay.clear();
     weightDay.addItem("-",0);
     for(int k = 1;k <= 29;k++){
       weightDay.addItem(str(k),k);
     }
   }
   //change day list of temp
   if(days_temp == 30){
     tempDay.clear();
     tempDay.addItem("-",0);
     for(int k = 1;k <= 30;k++){
       tempDay.addItem(str(k),k);
     }
   }else if(days_temp == 28){
     tempDay.clear();
     tempDay.addItem("-",0);
     for(int k = 1;k <= 28;k++){
       tempDay.addItem(str(k),k);
     }
   }else if(days_temp == 31){
     tempDay.clear();
     tempDay.addItem("-",0);
     for(int k = 1;k <= 31;k++){
       tempDay.addItem(str(k),k);
     }
   }else if(days_temp == 29){
     tempDay.clear();
     tempDay.addItem("-",0);
     for(int k = 1;k <= 29;k++){
       tempDay.addItem(str(k),k);
     }
   }
   //change day list of humid
   if(days_humid == 30){
     humidDay.clear();
     humidDay.addItem("-",0);
     for(int k = 1;k <= 30;k++){
       humidDay.addItem(str(k),k);
     }
   }else if(days_humid == 28){
     humidDay.clear();
     humidDay.addItem("-",0);
     for(int k = 1;k <= 28;k++){
       humidDay.addItem(str(k),k);
     }
   }else if(days_humid == 31){
     humidDay.clear();
     humidDay.addItem("-",0);
     for(int k = 1;k <= 31;k++){
       humidDay.addItem(str(k),k);
     }
   }else if(days_humid == 29){
     humidDay.clear();
     humidDay.addItem("-",0);
     for(int k = 1;k <= 29;k++){
       humidDay.addItem(str(k),k);
     }
   }
}