//+------------------------------------------------------------------+
//|                                                      Strings.mq5 |
//|                                      Copyright 2026, Landry Live |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2026, Landry Live"
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart(){

   //string symbol = "EURUSD";
   //string message = "Trading symbol: " + symbol;
   // Print(message);
   
   double price = 1.23456;
   string formatted = StringFormat("Price: %.2f", price);
   // Print(formatted);   // Price: 1.23
   
   string data = "EURUSD,GBPUSD,USDJPY";
   string parts[];
   int count = StringSplit(data, ',', parts);

   //for(int i = 0; i < count; i++)
   //   Print(parts[i]);
   
   double balance = 10432.5;  
   //Print(DoubleToString(balance, 2));   // 10432.50
   
   string symbol      = "EURUSD";
   double entryPrice  = 1.10234;
   double lotSize      = 0.10;
   
   string logMsg = StringFormat("Opened %s at %.5f, lot size %.2f", symbol,
                                 entryPrice, lotSize);
   Print(logMsg);


   
}
