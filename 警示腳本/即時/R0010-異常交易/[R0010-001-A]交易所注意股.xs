{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 交易所注意股
// 顯示名稱: 交易所注意股
// 執行頻率: 日(逐筆洗價)
// 
// 
SetTotalBar(3); 
condition1 = GetSymbolInfo("注意股");
if condition1 then ret=1;