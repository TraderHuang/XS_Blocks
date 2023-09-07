{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 地緣券商近N日買超金額大於X億元
// 顯示名稱: 地緣券商近[5]日買超金額 > [1]億元
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// _p2參數: 
// _p2數值: 0.2,0.3,0.5,1,1.5,2
// 
input:_p1(5);
input:_p2(1);
settotalBar(_p1+3);
if summation((GetField("地緣券商買賣超張數","D")*getfield("均價")),_p1)*0.0001 > _p2 then ret = 1;
outputField1(summation((GetField("地緣券商買賣超張數","D")*getfield("均價")),_p1)*0.0001);