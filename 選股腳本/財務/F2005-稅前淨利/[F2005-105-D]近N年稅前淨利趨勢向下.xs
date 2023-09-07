{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N年稅前淨利趨勢向下
// 顯示名稱: 近[10]年稅前淨利趨勢向下
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 5,10,15
// 
input:_p1(10);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
if DownTrend(GetField("稅前淨利"), _p1) then ret=1;