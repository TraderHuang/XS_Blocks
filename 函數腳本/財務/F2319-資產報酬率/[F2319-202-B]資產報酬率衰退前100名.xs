{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 資產報酬率衰退前100名
// 顯示名稱: 資產報酬率衰退前100名
// 執行頻率: 季
// 
// 
value1 = GetField("資產報酬率") - GetField("資產報酬率")[4] ;
if value1 >= 0 then return;
retval = absvalue(value1);