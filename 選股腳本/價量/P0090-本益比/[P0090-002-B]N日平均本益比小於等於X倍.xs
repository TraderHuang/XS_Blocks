{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日平均本益比小於等於X倍
// 顯示名稱: [20]日平均本益比 <= [10]倍
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// _p2參數: 
// _p2數值: 5,6,7,8,9,10,11,12,13,14,15,20,30,40
// 
input:_p1(20);
input:_p2(10); 
SetTotalBar(2); 
Value1 = Average(GetField("本益比"), _p1);
if Value1 < _p2 and Value1 > 0 then ret=1; 
OutputField(1, Value1, 2, "本益比(平均)");