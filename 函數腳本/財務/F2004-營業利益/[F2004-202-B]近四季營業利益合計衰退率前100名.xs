{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近四季營業利益合計衰退率前100名
// 顯示名稱: 近四季營業利益合計衰退率前100名
// 執行頻率: 季
// 
// 
value1 = Summation(GetField("營業利益"), 4);
value2 = Summation(GetField("營業利益")[4], 4);
value3 = (value1 - value2)/absvalue(value2);
if value3 >= 0 then return;
retval = absvalue(value3);