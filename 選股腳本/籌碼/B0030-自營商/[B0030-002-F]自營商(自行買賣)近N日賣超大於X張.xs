{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 自營商(自行買賣)近N日賣超大於X張
// 顯示名稱: 自營商(自行買賣)近[5]日賣超 > [1000]張
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// _p2參數: 
// _p2數值: 0,100,200,500,1000,2000,5000,10000
// 
input:_p1(5);
input:_p2(1000); 

SetTotalBar(2); 
Value1 = Summation(GetField("自營商自行買賣買賣超"), _p1);
if Value1 < -1*_p2 and value1 < 0 then ret=1; 
OutputField(1, Value1);