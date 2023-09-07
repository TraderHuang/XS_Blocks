{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 自由現金流量較上一季減少X%以上
// 顯示名稱: 自由現金流量較上一季[減少10%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[減少],10=[減少10%以上],20=[減少20%以上],30=[減少30%以上],50=[減少50%以上]
// 
input:_p1(10); 
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("自由現金流量") < GetField("自由現金流量")[1] then ret=1;
end else begin
  if RateOfChange(GetField("自由現金流量"), 1) <= -1*_p1 then ret=1;
end;
OutputField(1, GetField("自由現金流量")*0.01);