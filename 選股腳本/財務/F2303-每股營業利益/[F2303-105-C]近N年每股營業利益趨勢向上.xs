{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N年每股營業利益趨勢向上
// 顯示名稱: 近[10]年每股營業利益趨勢向上
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 5,10,15
// 
input:_p1(10);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
if UpTrend(GetField("每股營業利益(元)"), _p1) then ret=1;