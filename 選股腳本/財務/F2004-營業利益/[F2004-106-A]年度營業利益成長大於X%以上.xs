{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度營業利益成長大於X%以上
// 顯示名稱: 年度營業利益[成長10%以上]
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0=[成長],10=[成長10%以上],20=[成長20%以上],30=[成長30%以上],50=[成長50%以上]
// 
input:_p1(10); 
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("營業利益") > GetField("營業利益")[1] then ret=1;
end else begin
  if RateOfChange(GetField("營業利益"), 1) >= _p1 then ret=1;
end;
OutputField(1, GetField("營業利益")*0.01);