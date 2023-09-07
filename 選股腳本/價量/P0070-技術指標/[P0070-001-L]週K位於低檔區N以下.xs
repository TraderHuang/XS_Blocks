{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 週K位於低檔區N以下
// 顯示名稱: 週K位於低檔區([20]以下)
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 20,30,40,50
// 
input: _p1(20);
input: Length(5, "天期"), RSVt(3, "RSV權數"), Kt(3, "Kt權數");
variable: rsv(0), k(0), _d(0);
SetBarFreq("AW");
SetTotalBar(Length * 3);
Stochastic(Length, RSVt, Kt, rsv, k, _d);
if k <= _p1 then ret=1;