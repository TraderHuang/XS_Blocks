{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 稅後淨利率跌破X%
// 顯示名稱: 稅後淨利率跌破[20]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0,5,10,15,20,30
// 
input:_p1(20); 
SetTotalBar(2); 
Value1 = GetField("稅後淨利率")*1;
Value2 = GetField("稅後淨利率")[1]*1;
if Value2 > _p1 and Value1 < _p1 then ret=1; 
OutputField(1, Value1);