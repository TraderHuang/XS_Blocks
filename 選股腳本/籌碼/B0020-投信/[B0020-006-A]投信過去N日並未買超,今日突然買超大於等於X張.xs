{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 投信過去N日並未買超,今日突然買超大於等於X張
// 顯示名稱: 投信過去[5]日並未買超，今日突然買超 >= [1000]張
// 執行頻率: 日
// 
// 前N期買賣超很少, 近N日突然連M日買超
// _p1參數: 
// _p1數值: 3,5,10
// _p2參數: 
// _p2數值: 100,200,300,500,1000,2000,5000,10000
// 
input:_p1(5);
input:_p2(1000); 
SetTotalBar(3); 
If trueall(GetField("投信買賣超")[1]<=0,_p1) and GetField("投信買賣超") >=_p2 then ret = 1;
OutputField(1, GetField("投信買賣超"));