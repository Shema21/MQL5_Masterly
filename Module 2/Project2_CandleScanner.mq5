//+------------------------------------------------------------------+
//|                                                CandleScanner.mq5 |
//|                                      Copyright 2026, Landry Live |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2026, Landry Live"
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart(){
   int inpBarsToScan = 5;

   MqlRates rates[];
   ArraySetAsSeries(rates, true);

   int copied = CopyRates(Symbol(), PERIOD_CURRENT, 0, inpBarsToScan, rates);
   if(copied <= 0){
      Print("Failed to copy rates, error: ", GetLastError());
      return;
   }
   
   Print("=== CANDLE DATA SCANNER — ", Symbol(), " ===");
   Print(StringFormat("%-5s %-12s %-10s %-10s %-10s %-10s",
         "Bar", "Time", "Open", "High", "Low", "Close"));
         
   for(int i = 0; i < copied; i++)
     {
      string row = StringFormat("%-5d %-12s %-10.5f %-10.5f %-10.5f %-10.5f",
                     i,
                     TimeToString(rates[i].time, TIME_DATE|TIME_MINUTES),
                     rates[i].open,
                     rates[i].high,
                     rates[i].low,
                     rates[i].close);
      Print(row);
     }

   
}
