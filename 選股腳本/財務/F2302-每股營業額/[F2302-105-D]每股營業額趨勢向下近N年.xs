{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 每股營業額趨勢向下近N年
// 顯示名稱: 近[10]年每股營業額趨勢向下
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 5,10,15
// 
input:_p1(10);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
if DownTrend(GetField("每股營業額(元)"), _p1) then ret=1;