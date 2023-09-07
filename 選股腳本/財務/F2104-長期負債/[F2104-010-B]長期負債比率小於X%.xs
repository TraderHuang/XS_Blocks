{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 長期負債比率小於X%
// 顯示名稱: 長期負債比率 < [20]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 20,40,60
// 
input:_p1(20);
SetTotalBar(2);
value1= getField("長期負債");
value2 = getField("資產總額");
value3 = 100 * value1 / value2;
if value3 < _p1 then ret=1;