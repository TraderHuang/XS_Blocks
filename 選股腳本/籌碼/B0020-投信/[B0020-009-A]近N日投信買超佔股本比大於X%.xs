{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日投信買超佔股本比大於X%
// 顯示名稱: 近[5]日投信買超佔股本比 > [0.3]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// _p2參數: 
// _p2數值: 0.3,0.5,1,1.5,2,2.5,3,5,10,15,20
// 
input:_p1(5);
input:_p2(0.3);
SetTotalBar(_p1+2);
Value1 = GetField("投信買賣超");
value2 = GetField("發行張數(張)");
if value2<> 0 and summation(value1,_p1) < 0 and 
(summation(value1,_p1)/value2)*100 > _p2 then ret = 1;
OutputField(1,(summation(value1,_p1)/value2)*100);
OutputField2(Value2);