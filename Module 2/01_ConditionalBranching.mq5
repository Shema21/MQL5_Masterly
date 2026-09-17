//+------------------------------------------------------------------+
//|                                                if_statements.mq5 |
//|                                      Copyright 2026, Landry Live |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2026, Landry Live"
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart(){
   double rsiValue = 22.0;
   
   if(rsiValue > 70){
      Print("Overbought");
   }else if(rsiValue < 30){
      Print("Oversold");
   }else{
      Print("Neutral");
   }
   
   //CheckTrade(true,true, 4.5);
   
   
   
   enum MARKET_STATE { TRENDING, RANGING, VOLATILE };
   MARKET_STATE state = TRENDING;
   
   switch(state)
     {
      case TRENDING:
         Print("Market is trending");
         break;
      case RANGING:
         Print("Market is ranging");
         break;
      case VOLATILE:
         Print("Market is volatile");
         break;
     }
     
     double atrValue = 0.0015;
     double avgAtr = 0.0010;
     MiniProject(atrValue, avgAtr);
     
     
     
  }
  
  
 void MiniProject(double atrValue, double avgAtr){
   if(atrValue > avgAtr * 1.5){
      Print("Volatile Market");
   }else if(atrValue < avgAtr * 0.5){
      Print("Quiet Market");
   }else{
      Print("Normal market");
   }
 }
 
  
 void CheckTrade(bool isMarketOpen, bool hasSignal, double spread){
   //if(isMarketOpen){
   //   if(hasSignal){
   //      if(spread < 20){
   //         Print("Trade Allowed");
   //      }
   //   }
   //}
   
   if(!isMarketOpen){ return; }
   if(!hasSignal){ return; }
   if(spread >= 20) { return;}
   Print("Trade Allowed");
 }
//+------------------------------------------------------------------+
