{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: RS轉強
// 顯示名稱: RS轉強
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:length(10); 
variable: sumUp(0), sumDown(0), up(0), down(0),RS(0),_Side(1); 
settotalBar(12) ;
if CurrentBar = 1 then begin
        sumUp = Average(maxlist(GetField("收盤價") - GetField("收盤價")[1], 0), length); 
        sumDown = Average(maxlist(GetField("收盤價")[1] - GetField("收盤價"), 0), length); 
end else begin 
        up = maxlist(GetField("收盤價") - GetField("收盤價")[1], 0); 
        down = maxlist(GetField("收盤價")[1] - GetField("收盤價"), 0);  
        sumUp = sumUp[1] + (up - sumUp[1]) / length;
        sumDown = sumDown[1] + (down - sumDown[1]) / length;
end; 
if sumdown<>0 then rs=sumup/sumdown;
if _Side = 1 and rs cross over 4 then ret = 1
else if _Side = -1 and rs cross below -4 then ret = 1;