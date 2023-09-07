{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N月累計漲幅大於等於X%
// 顯示名稱: 近[6]月累計漲幅 >= [20]%
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 1,2,3,6,12
// _p2參數: 
// _p2數值: 5,10,15,20,25,35,40,50,60,70,80,100
// 
input: _p1(6);
input: _p2(20);
SetTotalBar(2);
value1 = RateOfChange(GetField("收盤價"),_p1);
value2 = 1*value1;
if value2 >= _p2 then ret=1;