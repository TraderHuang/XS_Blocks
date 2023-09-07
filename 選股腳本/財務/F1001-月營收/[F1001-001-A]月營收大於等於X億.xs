{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 月營收大於等於X億
// 顯示名稱: 月營收 >= [10]億
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 1,3,5,10,20,50,100
// 
input:_p1(10); 
SetTotalBar(2); 
Value1 = GetField("月營收")*1;
if _p1 = 0 and Value1 > 0 then ret=1;
if _p1 > 0 and value1 >= _p1 then ret=1; 
if _p1 < 0  and Value1 < _p1*-1  and value1 >0  then ret=1; 
OutputField(1, Value1);