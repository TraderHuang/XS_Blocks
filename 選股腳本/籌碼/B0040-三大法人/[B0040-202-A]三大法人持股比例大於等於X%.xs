{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 三大法人持股比例大於等於X%
// 顯示名稱: 三大法人持股比例 >= [30]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 10,20,30,40,45,50
// 
input:_p1(30);
SetTotalBar(2); 
Value1 = GetField("法人持股比例");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1);