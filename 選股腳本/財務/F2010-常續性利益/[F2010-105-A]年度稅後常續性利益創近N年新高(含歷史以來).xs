{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 年度稅後常續性利益創近N年新高(含歷史以來)
// 顯示名稱: 年度稅後常續性利益創近[3年]新高
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 3=[3年],4=[4年],5=[5年],10=[10年],-1=[歷史以來]
// 
input: _p1(3); 
SetTotalBar(2);
Value1 = GetField("常續性利益(稅後)")*0.01;
if _p1 <= 0 then value2 = GetFieldStartOffset("常續性利益(稅後)") else value2 = _p1-1;
if value2 = -1 then return;
if value2 = 0 then begin
  ret = 0;
end else begin
  value3 = SimpleHighest(GetField("常續性利益(稅後)")[1], value2)*0.01;       
  if value1 > value3 then ret=1;
end;
OutputField(1, Value1);