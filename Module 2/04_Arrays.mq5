//+------------------------------------------------------------------+
//|                                                       Arrays.mq5 |
//|                                      Copyright 2026, Landry Live |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2026, Landry Live"
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart(){
   double prices[5];
   prices[0] = 1.1000;
   prices[1] = 1.1010;
   prices[2] = 1.0995;

   double dynamicPrices[];
   ArrayResize(dynamicPrices, 10);
   dynamicPrices[0] = 1.1000;
   dynamicPrices[1] = 1.1010;
   
   double values[] = {5.2, 1.8, 3.4, 9.1, 2.0};
   ArraySort(values);
 

//   for(int i = 0; i < ArraySize(values); i++)
//      Print(values[i]);

      double closePrices[];
      ArraySetAsSeries(closePrices, true);
      // now closePrices[0] = most recent close
      // closePrices[1] = previous close
      // and so on
      
      double prices[];
      // forgot ArraySetAsSeries here
      CopyClose(Symbol(), PERIOD_CURRENT, 0, 10, prices);
      
      double mostRecentClose = prices[0]; // this may NOT be the most recent bar!

   
  }
