{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 營業毛利率衰退前100名
// 顯示名稱: 營業毛利率衰退前100名
// 執行頻率: 季
// 
// 
value1 = GetField("營業毛利率") - GetField("營業毛利率")[4] ;
if value1 >= 0 then return;
retval = absvalue(value1);