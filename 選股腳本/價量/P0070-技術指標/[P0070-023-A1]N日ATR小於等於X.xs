{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日ATR小於等於X
// 顯示名稱: [15]日ATR <= [5]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 10,15,20,30,35
// _p2參數: 
// _p2數值: 3,5,7,10
// 
settotalBar(15);
Input:_p1(15),_p2(5);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
If ATR(_p1)<=_p2 then ret = 1;