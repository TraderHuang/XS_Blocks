{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日三大法人持股比例趨勢向上
// 顯示名稱: 近[10]日三大法人持股趨勢向上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,60
// 
input: _p1(10);
SetTotalBar(_p1+2);
if CurrentBar < GetTotalBar then return;
ret = UpTrend(GetField("法人持股"), _p1); 
OutputField(1, GetField("法人持股"));