{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 跌破近N年最低價的平均值
// 顯示名稱: 跌破近[10]年最低價的平均值
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10
// 
input:_p1(10);
settotalBar(_p1+3);
If c < average(getfield("最低價", "Y")[1],_p1) then ret = 1;
OutputField1(average(getfield("最低價", "Y"),_p1));