//+------------------------------------------------------------------+
//|                                                    Operators.mq5 |
//|                                      Copyright 2026, Landry Live |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2026, Landry Live"
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart(){

   // Arithmetic Operator
   double sum = 10+5;
   double difference = 10 - 5;
   double product = 10 * 5;
   double quotient = 10 / 5;
   double remainder = 10 % 3;
   
   
   // Comparison Operators 
   bool isEqual = (5 == 5);
   bool isNotEqual = (5 != 4);
   bool isgreater = (5 > 3);
   bool isLessOrEqual = (5 <= 5);
   
   // = vs ==
   int a = 5;
   if(a == 5){
      //Print(a);
   }
   //if(a == 5)
   
   // Logical Operator with Multiple Conditions
   bool result1 = (true && false);
   bool result2 = (true || false);
   bool result3 = !false; 
   
   
   double currentPrice = SymbolInfoDouble(_Symbol, SYMBOL_ASK);
   double resistance = 1.3700;
   double support = 1.3500;
   bool inRange = (currentPrice < resistance && currentPrice > support);
   Print("Pricce in range: ", inRange);   
}
