{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: EPS去年同期獲利,今年轉盈為虧
// 顯示名稱: EPS去年同期獲利，今年轉盈為虧
// 執行頻率: 季
// 
// 
input: _p1(0);
SetTotalBar(2);
value2 = GetField("EPS");
value3 = GetField("EPS")[4];
if value3 > 0 and value2 < 0 then ret=1;
outputField1(value2);