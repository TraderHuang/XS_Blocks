{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 從N日高點回檔X%以上
// 顯示名稱: 從[10]日高點回檔[5]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// _p2參數: 
// _p2數值: 0,1,2,3,5,7,10
// 
input:_p1(10);
input:_p2(5);
settotalbar(3);
If c<= highest(h,_p1)*(1-(_p2*0.01)) then ret = 1;
outputField1(highest(h,_p1));