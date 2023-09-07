{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 主力買超佔淨成交量比(扣當沖)大於昨日佔比
// 顯示名稱: 主力買超佔淨成交量比(扣當沖) > 昨日佔比
// 執行頻率: 日
// 
// 
SetTotalBar(2);  
If GetField("主力買賣超張數")/ (V-GetField("當日沖銷張數")) > 
GetField("主力買賣超張數")[1]/(V-GetField("當日沖銷張數")[1])  and GetField("主力買賣超張數") > 0
then ret = 1;
outputField1(GetField("主力買賣超張數")/ (V-GetField("當日沖銷張數"))*100);
outputField2(GetField("主力買賣超張數")[1]/ (V-GetField("當日沖銷張數")[1])*100);