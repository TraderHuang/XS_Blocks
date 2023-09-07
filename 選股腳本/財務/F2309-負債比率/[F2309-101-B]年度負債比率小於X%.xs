{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度負債比率小於X%
// 顯示名稱: 年度負債比率 < [30]%
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 10,30,50,70
// 
input:_p1(30); 
SetTotalBar(2); 
Value1 = GetField("負債比率")*1;
if Value1 < _p1 then ret=1; 
OutputField(1, Value1);