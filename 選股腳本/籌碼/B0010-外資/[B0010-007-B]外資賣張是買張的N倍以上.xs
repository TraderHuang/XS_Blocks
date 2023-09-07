{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 外資賣張是買張的N倍以上
// 顯示名稱: 外資賣張是買張的[2]倍以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 2,3,5,10
// 
input:_p1(2);
SetTotalBar(2); 
Value1 = GetField("外資賣張");
value2 = GetField("外資買張");
If value1 > (_p1* value2) then ret = 1;
OutputField(1, Value1); 
OutputField(2, Value2);