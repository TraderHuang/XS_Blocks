{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N張大戶持股比例小於X%
// 顯示名稱: [400]張持股大戶比率 < [50]%
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 400,600,800,1000
// _p2參數: 
// _p2數值: 30,40,50,60,70,80
// 
input:_p1(400);
input:_p2(50);
SetTotalBar(2); 
Value1 = GetField("大戶持股比例", param:=_p1);
if Value1 < _p2 then ret=1; 
OutputField(1, Value1, 2);