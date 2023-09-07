{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年營收近N年平均小於X億
// 顯示名稱: 年營收近[3]年平均 < [1]億
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 3,5,10
// _p2參數: 
// _p2數值: 1,3,5,10,20,50,100,200,500
// 
input:_p1(3);
input:_p2(1); 
SetTotalBar(2); 
Value1 = Average(GetField("營業收入淨額"), _p1)*0.01;
if Value1 < _p2 then ret=1; 
OutputField(1, Value1);