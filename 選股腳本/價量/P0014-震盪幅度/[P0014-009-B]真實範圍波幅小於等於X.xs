{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 真實範圍波幅小於等於X
// 顯示名稱: 真實範圍波幅 <= [2]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,7,10
// 
input:_p1(2);
SetTotalBar(2); 
Value1 = GetField("真實範圍波幅");
if Value1 < _p1 then ret=1; 
OutputField(1, Value1, 2, "震盪幅度");