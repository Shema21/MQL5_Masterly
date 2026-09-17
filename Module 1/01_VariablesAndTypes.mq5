//+------------------------------------------------------------------+
//|                                      Variables_and_Datatypes.mq5 |
//|                                      Copyright 2026, Landry Live |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2026, Landry Live"
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart(){
   int    barsCount   = 100;        // whole numbers
   double currentPrice = 1.2345;    // decimals — prices, lot sizes
   string symbolName   = "EURUSD";  // text
   bool   isTradingOn  = true;      // true/false
   datetime now         = TimeCurrent(); // date and time values
   color  lineColor    = clrRed;    // colors, mostly for chart objects
   
   double stopLossPips = 20;
   int magicNumber = 567;
   
   int a =5;
   int b =2;
   double result = (double)a / b;
   Print(result);
   

   
  }
//+------------------------------------------------------------------+
