# Module 2: Programming Fundamentals — MQL5 Source Code

Welcome to the **Module 2 Source Code Repository**! This directory contains all MQL5 example scripts, code snippets, and mini-projects covering the core programming fundamentals required to build Expert Advisors and technical indicators in MetaTrader 5.

---

## 📁 Repository Structure & Video Index

| Video | Topic | Primary Code / Script | Key Concepts Covered |
| :--- | :--- | :--- | :--- |
| **2.1** | [If/Else & Switch Statements](#video-21--ifelse-and-switch-statements) | `01_ConditionalBranching.mq5` | Branching logic, early returns, enums |
| **2.2** | [Loops — `for`, `while`, `do-while`](#video-22--loops--for-while-do-while) | `02_Loops.mq5` | Iteration, historical bar loops, safety checks |
| **2.3** | [Functions — Parameters & Return Values](#video-23--functions--parameters--return-values) | `03_Functions.mq5` | Default parameters, pass-by-reference (`&`), utilities |
| **2.4** | [Arrays — Static & Dynamic](#video-24--arrays--static--dynamic) | `04_Arrays.mq5` | Dynamic arrays, sorting, series orientation (`ArraySetAsSeries`) |
| **2.5** | [Working with Strings](#video-25--working-with-strings) | `05_Strings.mq5` | String manipulation, `StringFormat()`, `StringSplit()` |
| **2.6** | [Enumerations & Input Constants](#video-26--enumerations--input-constants) | `06_Enumerations.mq5` | Custom dropdowns, `#define`, `input` parameters |
| **2.7** | [Scope — Global vs Local Variables](#video-27--scope--global-vs-local-variables) | `07_Scope.mq5` | Global vs local vs `static` state management |
| **2.8** | [Debugging Techniques](#video-28--debugging-techniques) | `08_Debugging.mq5` | Strategic `Print()` logs, breakpoints, error handling |
| **2.9** | [**PROJECT 2: Candle Data Scanner**](#video-29--project-2-candle-data-scanner) | `Project2_CandleScanner.mq5` | Full capstone script combining all Module 2 concepts |

---


## 🚀 How to Run the Code in MetaTrader 5

1. Open MetaEditor inside MT5 (`F4`).
2. In the **Navigator** sidebar, right-click **Scripts** and select **New File**.
3. Select **Script**, name it (e.g., `CandleScanner.mq5`), and click Next/Finish.
4. Replace the default template code with the code snippet from this repository.
5. Press **`F7`** to compile.
6. Return to MetaTrader 5, drag the compiled script from the **Navigator** window onto an active chart, and view the output in **Toolbox -> Experts**.
