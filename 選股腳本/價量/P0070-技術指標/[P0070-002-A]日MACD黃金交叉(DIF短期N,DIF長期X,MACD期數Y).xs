{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 日MACD黃金交叉(DIF短期N,DIF長期X,MACD期數Y)
// 顯示名稱: 日MACD黃金交叉(DIF短期[12],DIF長期[26],MACD期數[9])
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,4,5,9,12,20
// _p2參數: 
// _p2數值: 9,18,26,35,60
// _p3參數: 
// _p3數值: 3,5,9,7
// 
input: _p1(12), _p2(26), _p3(9);
variable: difValue(0), macdValue(0), oscValue(0);
SetTotalBar((maxlist(_p1,_p2) +_p3) * 4);
MACD(weightedclose(), _p1, _p2, _p3, difValue, macdValue, oscValue);
Ret = difValue Crosses Above macdValue;