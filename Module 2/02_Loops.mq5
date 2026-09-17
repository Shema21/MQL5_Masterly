//+------------------------------------------------------------------+
//|                                                        Loops.mq5 |
//|                                      Copyright 2026, Landry Live |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2026, Landry Live"
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart(){
   // For Loop
  //for(int i = 0; i <= 10; i++){
  // Print("Iteration: ", i);
  //}
  
// While Loops  
  
//   int attempts = 0;
//   bool success = false;
//   
//   while(!success && attempts < 3){
//      Print("Attempt ", attempts);
//      attempts++;
//      // pretend this is a retry for a failed trade request
//     }
      
      
     // Do while Loop  
     //int counter = 0;
     // do
     //   {
     //    Print("Counter: ", counter);
     //    counter++;
     //   }
     // while(counter < 3);
     
     int barsToCheck = 20;

      for(int i = 0; i < barsToCheck; i++){
         double closePrice = iClose(Symbol(), PERIOD_CURRENT, i);
         Print("Bar ", i, " close: ", closePrice);
        }

   
}
