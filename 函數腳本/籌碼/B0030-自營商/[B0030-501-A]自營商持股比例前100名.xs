{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 自營商持股比例前100名
// 顯示名稱: 自營商持股比例前100名
// 執行頻率: 日
// 
// 
value1 = GetField("自營商持股比例");
if value1 <= 0 then return;
retval = value1;