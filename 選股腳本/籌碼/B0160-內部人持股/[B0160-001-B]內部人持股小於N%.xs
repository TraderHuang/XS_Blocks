{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 內部人持股小於N%
// 顯示名稱: 內部人持股 < [20]%
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 10,20,30,40
// 
input:_p1(20);
SetTotalBar(2); 
Value1 = GetField("內部人持股比例");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);