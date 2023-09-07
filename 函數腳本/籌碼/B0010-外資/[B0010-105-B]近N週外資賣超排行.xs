{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 近N週外資賣超排行
// 顯示名稱: 近[2]週外資賣超前100名
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 1,2,3,4,6,8
// 
input:_p1(2,numeric);
SetTotalBar(2); 
Value1 = Summation(GetField("外資買賣超"), _p1);
if Value1 < 0 then retval = absvalue(value1) else return;