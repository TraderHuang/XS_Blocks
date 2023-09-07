{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日平均漲幅小於X
// 顯示名稱: 近[5]日平均漲幅 < [2]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60
// _p2參數: 
// _p2數值: 0,1,2,3,5,7,10,20,25,30
// 
input: _p1(5);
input: _p2(2);
SetTotalBar(2);
value1 = RateOfChange(GetField("收盤價"),_p1)/_p1;
value2 = 1*value1;
if value2 > 0 and value2 < _p2 then ret=1;