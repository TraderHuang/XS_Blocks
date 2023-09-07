{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度每股自由現金流量小於近N年平均
// 顯示名稱: 年度每股自由現金流量 < 近[3]年平均
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 3,5,10
// 
input:_p1(3);
SetTotalBar(2); 
Value1 = GetField("每股自由現金流量")*1;
Value2 = Average(GetField("每股自由現金流量"), _p1)*1;
if Value1 < Value2 then ret=1; 
OutputField(1, Value1);