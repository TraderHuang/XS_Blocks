{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 官股券商過去N日並未賣超,今日突然賣超大於等於X張
// 顯示名稱: 官股券商過去[5]日並未賣超，今日突然賣超> = [1000]張
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10
// _p2參數: 
// _p2數值: 100,200,300,500,1000,2000,5000,10000
// 
input:_p1(5);
input:_p2(1000); 
SetTotalBar(3); 
If trueall(GetField("官股券商買賣超張數")[1]>=0,_p1) and GetField("官股券商買賣超張數") <=(_p2*-1) then ret = 1;
OutputField(1,GetField("官股券商買賣超張數"));