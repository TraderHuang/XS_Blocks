{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大盤N日均線站在N日均線之上
// 顯示名稱: 大盤[5]日均線站在[20]日均線之上
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的短均線期數
// _p1數值: 5,10,20,60,120,240
// _p2參數: 日的長均線期數
// _p2數值: 5,10,20,60,120,240
// 
Input: _p1(5); 
Input: _p2(20); 
var:_Side(1); 
SetTotalBar(2); 
setbarBack(maxList(_p1,_p2)+0+10);
value1 = average(GetField("收盤價")[0],_p1); 
value2 = average(GetField("收盤價")[0],_p2); 
if _Side = 1 and value1 > value2 then ret = 1
else if _Side = -1 and value1 < value2 then ret = 1;