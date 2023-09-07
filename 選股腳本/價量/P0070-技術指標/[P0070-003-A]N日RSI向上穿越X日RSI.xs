{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日RSI向上穿越X日RSI
// 顯示名稱: [6]日RSI向上穿越[12]日RSI
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,6,12
// _p2參數: 
// _p2數值: 10,12,14
// 
input: _p1(6), _p2(12);
settotalbar(maxlist(_p1,_p2) * 10);
Value1 = RSI(Close, _p1);
Value2 = RSI(Close, _p2);
if Value1 Crosses Above Value2 then ret=1;