{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 即將有新股上市(N日之內)
// 顯示名稱: 即將有新股上市([3]日之內)
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,14
// 
input:_p1(3);
SetTotalBar(3); 
if GetField("新股上市日") > 0 then 
Value1 = DateDiff(GetField("新股上市日"),Date) else 
Value1 = -1; 
if Value1 <= _p1 and Value1 >= 0 then ret =1; 
OutputField1(GetField("新股上市日"));