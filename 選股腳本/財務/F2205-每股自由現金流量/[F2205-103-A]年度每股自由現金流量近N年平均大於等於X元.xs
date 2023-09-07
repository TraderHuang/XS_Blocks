{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度每股自由現金流量近N年平均大於等於X元
// 顯示名稱: 年度每股自由現金流量近[3]年平均 >= [1]元
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 3,5,10
// _p2參數: 
// _p2數值: 0,1,5,10,20
// 
input:_p1(3);
input:_p2(1); 
SetTotalBar(2); 
Value1 = Average(GetField("每股自由現金流量"), _p1)*1;
if Value1 >= _p2 then ret=1; 
OutputField(1, Value1);