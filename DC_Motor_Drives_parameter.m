clc;clear
%% Source
% PN,UN,IN
PN=5*745.7;
UN=240;
IN=PN/UN;
%% Motor
% Field
UF=300;
% Armature resitance and inductance
Ra=2.581; La=0.028;
% Field resistance and inductance
Rf=281.2; Lf=156;
% Field-armature mutual inductance
Laf=0.94883;
% Total inetia J(kg*m^2)
J=0.02215;
% rpm
nN=1750;
%% Time constant
Ton=0.001;
Toi=0.0001;
Ts=0.001;

%%
beta=8;
alpha=1;

%% ASR & ACR
ASR_Upper=20;
ASR_Lower=-ASR_Upper;
ACR_Upper=300;
ACR_Lower=-ACR_Upper;
% 电枢电流控制得不错
% 如果对电枢电流容限稍大，想要减少转速超调，可以把KP_ASR=0.1;
KP_ASR=0.06;
KI_ASR=0.15;
KP_ACR=50;
KI_ACR=180;
% 减小超调
% KP_ASR=0.1;
% KI_ASR=0.05;