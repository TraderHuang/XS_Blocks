{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度稅前淨利創N年新高(含歷史以來)
// 顯示名稱: 年度稅前淨利創[3年]新高
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 3=[3年],5=[5年],10=[10年],-1=[歷史以來]
// 
input: _p1(3); 
SetTotalBar(2);
Value1 = GetField("稅前淨利")*0.01;
if _p1 <= 0 then value2 = GetFieldStartOffset("稅前淨利") else value2 = _p1-1;
if value2 = -1 then return;
if value2 = 0 then begin
  ret = 0;
end else begin
  value3 = SimpleHighest(GetField("稅前淨利")[1], value2)*0.01;       
  if value1 > value3 then ret=1;
end;
OutputField(1, Value1);