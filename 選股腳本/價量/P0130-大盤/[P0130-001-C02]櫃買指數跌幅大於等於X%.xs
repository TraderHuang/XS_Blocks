{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 櫃買指數跌幅大於等於X%
// 顯示名稱: 櫃買指數跌幅 >= [2]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,7
// 
input: _p1(2);
SetTotalBar(2);
SetBarFreq("D");
value1 = RateOfChange(GetSymbolField("OTC.tw","收盤價"),1);
value2 = -1*value1;
if value2 >= _p1 then ret=1;