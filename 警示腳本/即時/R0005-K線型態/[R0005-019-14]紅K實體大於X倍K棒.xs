{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 紅K實體大於X倍K棒
// 顯示名稱: 紅K實體>[1/2]K棒
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 紅K實體面積佔據K棒的比例
// _p1數值: 50=[1/2],34=[1/3],67=[2/3],75=[3/4]
// 
settotalbar(2);
input: _p1(50);
If c > o and ((c-o)/(high-low))*100>_p1 then ret = 1;