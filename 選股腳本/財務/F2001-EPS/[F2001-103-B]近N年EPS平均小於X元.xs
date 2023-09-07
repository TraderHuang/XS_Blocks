{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N年EPS平均小於X元
// 顯示名稱: 近[3]年EPS平均 < [1]元
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 2,3,4,5,10
// _p2參數: 
// _p2數值: 0,1,2,3,5,7,10
// 
input:_p1(3);
input:_p2(1); 
SetTotalBar(2); 
Value1 = Average(GetField("EPS"), _p1)*1;
if Value1 < _p2 then ret=1; 
OutputField(1, Value1);