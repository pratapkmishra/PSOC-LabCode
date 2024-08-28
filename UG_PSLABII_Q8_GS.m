%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This code is for Experiment No-4, Q8, UG Power System Lab-II
% This can be run in MATLAB or OCTAVE
% This code originally belongs to Hadi Saadat Book, Ch-6, Example-7
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;

y12=10-j*20;
y13=10-j*30;
y23=16-j*32;
V1=1.05+j*0;
iter =0;
S2=-2.566-j*1.102;
S3=-1.386-j*.452;
V2=1+j*0;
V3=1+j*0;
for I=1:10;
iter=iter+1;
V2 = (conj(S2)/conj(V2)+y12*V1+y23*V3)/(y12+y23);
V3 = (conj(S3)/conj(V3)+y13*V1+y23*V2)/(y13+y23);
disp([iter, V2, V3])
end
V2= .98-j*.06;
V3= 1-j*.05;
I12=y12*(V1-V2); I21=-I12;
I13=y13*(V1-V3); I31=-I13;
I23=y23*(V2-V3); I32=-I23;
S12=V1*conj(I12); S21=V2*conj(I21);
S13=V1*conj(I13); S31=V3*conj(I31);
S23=V2*conj(I23); S32=V3*conj(I32);
I1221=[I12,I21]
I1331=[I13,I31]
I2332=[I23,I32]
S1221=[S12, S21  (S12+S13) S12+S21]
S1331=[S13, S31  (S31+S32) S13+S31]
S2332=[S23, S32  (S23+S21) S23+S32]
