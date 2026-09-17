//+------------------------------------------------------------------+
//|                                                       Scopes.mq5 |
//|                                      Copyright 2026, Landry Live |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2026, Landry Live"
#property link      "https://www.mql5.com"
#property version   "1.00"

int GlobalCount = 5; 

void SomeFunction(){
     // only exists inside this function
   Print(GlobalCount);
  }
// localCount doesn't exist here anymore

void CountCalls(){
   static int callCount = 0;
   callCount++;
   Print("This function has been called ", callCount, " times");
}

void OnStart() {
   Print(GlobalCount);

   CountCalls();
   CountCalls();
   CountCalls();

   

   
}
