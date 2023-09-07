{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 單季稅後常續性利益較去年同期成長X%以上
// 顯示名稱: 單季稅後常續性利益較去年同期[成長10%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[成長],10=[成長10%以上],20=[成長20%以上],30=[成長30%以上],50=[成長50%以上]
// 
input:_p1(10); 
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("常續性利益(稅後)") > GetField("常續性利益(稅後)")[4] then ret=1;
end else begin
  if RateOfChange(GetField("常續性利益(稅後)"), 4) >= _p1 then ret=1;
end;
OutputField(1, GetField("常續性利益(稅後)")*0.01);