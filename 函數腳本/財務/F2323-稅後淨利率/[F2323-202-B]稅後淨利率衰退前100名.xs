{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 稅後淨利率衰退前100名
// 顯示名稱: 稅後淨利率衰退前100名
// 執行頻率: 季
// 
// 
value1 = GetField("稅後淨利率") - GetField("稅後淨利率")[4] ;
if value1 >= 0 then return;
retval = absvalue(value1);