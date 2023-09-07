{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 每股淨值近N季平均成長X%以上
// 顯示名稱: 每股淨值近[4]季平均成長[10]%以上
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// _p2參數: 
// _p2數值: 0,10,20,30,50
// 
SetTotalBar(3);
input: _p1(4);
input: _p2(10);

switch(barfreq)
begin
        Case "M","AM": value1 = 12;
        Case "Q","AQ": value1 = 4;
        Case "Y","AY": value1 = 1;
        default:           raiseruntimeerror("僅支援月、季、年頻率");
end;

value98 = 0;
For value99 = 0 to _p1 - 1
begin
    value98 = value98 + RateOfChange(GetField("每股淨值(元)")[value99], value1);
end;
value98 = value98 / _p1;
if value98 >= _p2 then ret=1;
outputfield(1,value98,2,"近N期平均");