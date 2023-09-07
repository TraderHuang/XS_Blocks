{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 稅後淨利率大於等於X%
// 顯示名稱: 稅後淨利率 >= [20]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0,5,10,15,20,30
// 
input:_p1(20); 
SetTotalBar(2); 
Value1 = GetField("稅後淨利率")*1;
if _p1 = 0 and Value1 > 0 then ret=1;
if _p1 > 0 and value1 >= _p1 then ret=1; 
if _p1 < 0  and Value1 < _p1*-1  and value1 >0  then ret=1; 
OutputField(1, Value1);