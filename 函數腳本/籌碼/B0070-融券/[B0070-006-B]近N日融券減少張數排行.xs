{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N日融券減少張數排行
// 顯示名稱: 近[5]日融券減少前100名
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// 
input:_p1(5,numeric);
SetTotalBar(2); 
Value1 = Summation(GetField("融券增減張數"), _p1);
if Value1 < 0 then retval = absvalue(value1) else return;