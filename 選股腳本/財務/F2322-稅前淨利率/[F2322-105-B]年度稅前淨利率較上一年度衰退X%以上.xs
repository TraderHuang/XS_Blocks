{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度稅前淨利率較上一年度衰退X%以上
// 顯示名稱: 年度稅前淨利率較上一年度[衰退10%以上]
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0=[衰退],3=[衰退3%以上],5=[衰退5%以上],10=[衰退10%以上],15=[衰退15%以上]
// 
input:_p1(10); 
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("稅前淨利率") < GetField("稅前淨利率")[1] then ret=1;
end else begin
  if (GetField("稅前淨利率") - GetField("稅前淨利率")[1])*1 < -1*_p1 then ret=1;
end;
OutputField(1, GetField("稅前淨利率")*1);