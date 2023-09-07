{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 淨力指標高檔回落
// 顯示名稱: 淨力指標高檔回落
// 執行頻率: 日
// 
// 
input:period2(10,"長期參數");
settotalBar(12);
value12=summation(high-close,period2);//上檔賣壓
value13=summation(close-open,period2); //多空實績
value14=summation(close-low,period2);//下檔支撐
value15=summation(open-close[1],period2);//隔夜力道
if close<>0 then
        value16=(value13+value14+value15-value12)/close*100
else
        value16 = value16[1];
ret = value16 crosses under -4;