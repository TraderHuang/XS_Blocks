{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 開盤價=漲停價
// 顯示名稱: 開盤漲停
// 執行頻率: 1分(非逐筆洗價)
// 
// 
SetBackBar(10, "D");
SetTotalBar(1);
if GetField("開盤價","D") = GetField("漲停價","D") then ret = 1;