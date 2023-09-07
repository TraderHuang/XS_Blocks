{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 總成交次數大於等於X次
// 顯示名稱: 總成交次數 >= [100]次
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 50,100,200,300,500,1000,2000,5000,10000
// 
input:_p1(100);
SetTotalBar(2); 
Value1 = GetField("總成交次數");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1, 0, "總成交次數");