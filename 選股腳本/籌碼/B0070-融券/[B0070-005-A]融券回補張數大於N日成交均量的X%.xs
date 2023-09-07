{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 融券回補張數大於N日成交均量的X%
// 顯示名稱: 融券回補張數大於[5]日成交均量的[5]%
// 執行頻率: 日
// 
// 只提供大於, 沒提供小於
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// _p2參數: 
// _p2數值: 1,2,3,5,10
// 
input:_p1(5);
input:_p2(5);
SetTotalBar(20); 
Value1 = GetField("融券買進張數");
value2 = average(GetField("成交量","D"),_p1);
If value1>0 and value2>0 and value1 > (_p2* (value2*0.01)) then ret = 1;
OutputField(1, Value1,0,"融券買進張數"); 
OutputField(2, Value2,0,"成交量");
OutputField(3, GetField("成交量","D"),0,"成交均量");
OutputField(4, GetField("成交量","D")[1],0,"成交均量");