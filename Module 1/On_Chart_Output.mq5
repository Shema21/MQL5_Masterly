//+------------------------------------------------------------------+
//|                                              On_Chart_Output.mq5 |
//|                                      Copyright 2026, Landry Live |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2026, Landry Live"
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart(){
    Comment("Live Debug Info \n",
            "Symbol: ", Symbol(), "\n",
            "Time: ", TimeCurrent());
            
    // Alert("Prie Crosses resistance");
    SendNotification("EA Opened a New trade on EURUSD");
   
  }
//+------------------------------------------------------------------+
