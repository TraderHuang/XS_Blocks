{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 借券餘額近N日減少大於N張
// 顯示名稱: 借券餘額近[5]日減少 > [100]張
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// _p2參數: 
// _p2數值: 0,100,200,300,500,1000
// 
input:_p1(5);
input:_p2(100); 

SetTotalBar(2); 
Value1 = Summation(GetField("借券餘額張數"), _p1);
if Value1 < -1*_p2 and value1 < 0 then ret=1; 
OutputField(1, Value1);