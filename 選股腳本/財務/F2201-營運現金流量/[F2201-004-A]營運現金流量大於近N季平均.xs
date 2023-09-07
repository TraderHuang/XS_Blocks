{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 營運現金流量大於近N季平均
// 顯示名稱: 營運現金流量 > 近[4]季平均
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// 
input:_p1(4);
SetTotalBar(2); 
Value1 = GetField("來自營運之現金流量")*0.01;
Value2 = Average(GetField("來自營運之現金流量"), _p1)*0.01;
if Value1 > Value2 then ret=1; 
OutputField(1, Value1);