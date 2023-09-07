{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價距離N日低點在X%以內
// 顯示名稱: 收盤價距離[10日]低點在[3]%以內
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3=[3日],5=[5日],7=[7日],10=[10日],20=[20日],30=[30日],40=[40日],50=[50日],60=[60日],80=[80日],90=[90日],100=[100日],120=[120日],240=[240日],-1=[1年],-2=[2年],-3=[3年],-4=[4年],-5=[5年]
// _p2參數: 
// _p2數值: 1,2,3,5,10,15,20,25,30,35,40
// 
input:_p1(10);//正值表天數、負值表年數
input:_p2(3);
var: days(0);
SetBarFreq("AD");
SetTotalBar(5000);
if CurrentBar < GetTotalBar - 1 then return;//實際上只跑最新二根
if _p1 > 0 then days = _p1 else days = GetBarOffsetForYears(-1*_p1);
if days <= 0 then return;// 不足日期的股票不選
value1 = SimpleLowest(GetField("最低價")[1],days-1);
value2 = value1*(100+_p2)*0.01;
if GetField("收盤價") > value1 and GetField("收盤價") < value2 then ret=1;