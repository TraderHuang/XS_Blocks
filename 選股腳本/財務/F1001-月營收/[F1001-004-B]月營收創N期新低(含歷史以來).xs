{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 月營收創N期新低(含歷史以來)
// 顯示名稱: 月營收創[1年]新低
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 3=[3月],6=[6月],12=[1年],24=[2年],36=[3年],60=[5年],-1=[歷史以來]
// 
input: _p1(12); 
SetTotalBar(2);
Value1 = GetField("月營收")*1;
if _p1 <= 0 then value2 = GetFieldStartOffset("月營收") else value2 = _p1-1;
if value2 = -1 then return;
if value2 = 0 then begin
  ret = 0;
end else begin
  value3 = SimpleLowest(GetField("月營收")[1], value2)*1;       
  if value1 < value3 then ret=1;
end;
OutputField(1, Value1);