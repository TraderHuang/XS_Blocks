{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近四季合計營業利益率較上一季衰退X%以上
// 顯示名稱: 近四季合計營業利益率較上一季[衰退5%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[衰退],5=[衰退5%以上],10=[衰退10%以上],20=[衰退20%以上],30=[衰退30%以上],50=[衰退50%以上]
// 
input:_p1(5); 
SetTotalBar(3);
value1 = Summation( getfield("營業利益"),4) / Summation(Getfield("營業收入淨額"),4) *100; 
value2 = Summation( getfield("營業利益")[1],4) / Summation(Getfield("營業收入淨額")[1],4) *100; 
if _p1 = 0 and  value1 - value2 < 0 then ret=1;
if _p1 > 0 and  value1 - value2 <= _p1*-1 then ret=1;
if _p1 < 0 and  value1 - value2 > _p1 and  value1 - value2 < 0 then ret=1;
OutputField1(Value1-value2);