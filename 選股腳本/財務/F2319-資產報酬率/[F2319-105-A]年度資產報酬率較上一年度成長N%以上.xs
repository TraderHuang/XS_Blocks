{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度資產報酬率較上一年度成長N%以上
// 顯示名稱: 年度資產報酬率較上一年度[成長5%以上]
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 0=[成長],1=[成長1%以上],3=[成長3%以上],5=[成長5%以上],10=[成長10%以上],15=[成長15%以上]
// 
input:_p1(5); 
SetTotalBar(2);
if _p1 = 0 then begin
  if GetField("資產報酬率") > GetField("資產報酬率")[1] then ret=1;
end else begin
  if (GetField("資產報酬率") - GetField("資產報酬率")[1])*1 >= _p1 then ret=1;
end;
OutputField(1, GetField("資產報酬率")*1);