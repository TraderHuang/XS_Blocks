{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 營運現金流量對淨利比前N季減少X%以上
// 顯示名稱: 營運現金流量對淨利比前[4]季減少[10]%以上
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// _p2參數: 
// _p2數值: 5,10,20,30,50
// 
input: _p1(4);
input: _p2(10);
settotalBar(3);
value1 = GetField("來自營運之現金流量")/GetField("本期稅後淨利");
value2 = GetField("來自營運之現金流量")[_p1]/GetField("本期稅後淨利")[_p1];
If (value1-value2)< 0 and (value1-value2) < _p2*-1 then ret= 1;
outputField1(value1);
outputField2(value2);