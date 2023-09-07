{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N季營收合計小於X億
// 顯示名稱: 近[4]季營收合計 < [1]億
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 2,3,4
// _p2參數: 
// _p2數值: 1,3,5,10,20,50,100,200,500,1000
// 
input:_p1(4);
input:_p2(1); 
SetTotalBar(2); 
Value1 = Summation(GetField("營業收入淨額"), _p1)*0.01;
if Value1 < _p2 then ret=1; 
OutputField(1, Value1);