{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N季稅後淨利率趨勢向上
// 顯示名稱: 近[8]季稅後淨利率趨勢向上
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12,16
// 
input:_p1(8);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
if GetTotalBar < _p1 then return; 
if UpTrend(GetField("稅後淨利率"), _p1) then ret=1;