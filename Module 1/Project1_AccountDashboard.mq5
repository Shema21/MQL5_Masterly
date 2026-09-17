//+------------------------------------------------------------------+
//|                                             AccountDashboard.mq5 |
//|                                      Copyright 2026, Landry Live |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2026, Landry Live"
#property link      "https://www.mql5.com"
#property version   "1.00"

void OnStart(){
   double balance  = AccountInfoDouble(ACCOUNT_BALANCE);
   double equity     = AccountInfoDouble(ACCOUNT_EQUITY);
   double margin     = AccountInfoDouble(ACCOUNT_MARGIN);
   double freeMargin = AccountInfoDouble(ACCOUNT_MARGIN_FREE);
   int    leverage   = (int)AccountInfoInteger(ACCOUNT_LEVERAGE);
   string accountName = AccountInfoString(ACCOUNT_NAME);
   
   double spread = SymbolInfoInteger(Symbol(), SYMBOL_SPREAD) * SymbolInfoDouble(Symbol(), SYMBOL_POINT);
   int digits = (int)SymbolInfoInteger(Symbol(), SYMBOL_DIGITS);
   double point = SymbolInfoDouble(Symbol(), SYMBOL_POINT);
   
   Comment(
      "=== ACCOUNT DASHBOARD ===\n",
      "Account: ", accountName, "\n",
      "Balance: ", DoubleToString(balance, 2), "\n",
      "Equity: ", DoubleToString(equity, 2), "\n",
      "Free Margin: ", DoubleToString(freeMargin, 2), "\n",
      "Leverage: 1:", leverage, "\n",
      "\n",
      "=== SYMBOL INFO: ", Symbol(), " ===\n",
      "Spread: ", DoubleToString(spread, digits), "\n",
      "Digits: ", digits, "\n",
      "Point: ", DoubleToString(point, digits)
      );
}
   
//+------------------------------------------------------------------+
