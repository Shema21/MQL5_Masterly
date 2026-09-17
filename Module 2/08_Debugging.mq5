//+------------------------------------------------------------------+
//|                                                    Debugginh.mq5 |
//|                                      Copyright 2026, Landry Live |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2026, Landry Live"
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart(){
   double price = SymbolInfoDouble(Symbol(), SYMBOL_BID);
   Print("Current price: ", price);

   bool signal = (price > 1.1000);
   Print("Signal triggered: ", signal);

   if(signal)
     {
      Print("Attempting to open trade...");
      // trade logic here
     }
   
}
