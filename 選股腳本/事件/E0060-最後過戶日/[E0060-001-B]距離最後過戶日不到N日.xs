{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 距離最後過戶日不到N日
// 顯示名稱: 距離最後過戶日不到[3]日
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,14
// 
input:_p1(3);
SetTotalBar(3); 
if GetField("最後過戶日期") > 0 then 
Value1 = DateDiff(GetField("最後過戶日期"),Date) else 
Value1 = -1; 
if Value1 <= _p1 and Value1 >= 0 then ret =1; 
OutputField1(GetField("最後過戶日期"));