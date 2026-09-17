//+------------------------------------------------------------------+
//|                                                    Functions.mq5 |
//|                                      Copyright 2026, Landry Live |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2026, Landry Live"
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart(){
   //double spread = CalculateSpread(_Symbol);
   //Print("Spread: ", spread);
   
   //Print("Lotsize: ", CalculateLotSize(10,50));
   //double num = 5;
   //TryToDouble(num);
   //Print("After function call ", num);
   
   double  Norm = NormalizePriceToSymbol(_Symbol, iClose(_Symbol, PERIOD_CURRENT,0));
   Print("Norm Price: ", Norm);
   


   
}

double NormalizePriceToSymbol(string symbol, double price){
   int digits = (int)SymbolInfoInteger(symbol, SYMBOL_DIGITS);
   return NormalizeDouble(price, digits);
}



double CalculateSpread(string symbol){
   double spreadPoints = (double)SymbolInfoInteger(symbol, SYMBOL_SPREAD);
   double point         = SymbolInfoDouble(symbol, SYMBOL_POINT);
   return spreadPoints * point;
}

double CalculateLotSize(double riskPercent = 1.0, double stopLossPips = 20)
  {
   // simplified example — full risk formula comes in Module 5
   return riskPercent / stopLossPips;
  }



void TryToDouble(double &value){
   value = value * 2;
   Print("Inside function: ", value);
  }