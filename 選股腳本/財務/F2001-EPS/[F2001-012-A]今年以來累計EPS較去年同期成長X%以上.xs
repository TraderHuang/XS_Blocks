{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 今年以來累計EPS較去年同期成長X%以上
// 顯示名稱: 今年以來累計EPS較去年同期[成長10%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[成長],10=[成長10%以上],20=[成長20%以上],30=[成長30%以上],50=[成長50%以上],-0.5=[成長0.5元以上],-1=[成長1元以上],-2=[成長2元以上]
// 
input: _p1(10);

SetTotalBar(2);
value1 = GetFieldDate("EPS", "Q");

value2 = Month(value1) / 3;                
value3 = Summation(GetField("EPS", "Q"), value2);
value4 = Summation(GetField("EPS", "Q")[4], value2);

if _p1 = 0 and value3 > value4 then ret=1;
if _p1 > 0 and 100 * (value3 - value4) / absvalue(value4) >= _p1 then ret=1;
if _p1 < 0 and value3 - value4 >= absvalue(_p1) then ret=1;
OutputField(1, value3, 2, "今年");
OutputField(2, value4, 2, "去年");