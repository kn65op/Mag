function [ oCLCPU oCLGPU oCV ] = DiffScale( mode, scale_number )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

oCV = 0;
oCLCPU = 0;
oCLGPU = 0;

n = 5;
for i=0:n-1
    [CLCPU, CLGPU, CV] = DiffPixels(mode, strcat('0', int2str(i), '_0', int2str(scale_number)));
    oCV = oCV + CV;
    oCLCPU = oCLCPU + CLCPU;
    oCLGPU = oCLGPU + CLGPU;    
end

oCV = oCV / n;
oCLCPU = oCLCPU / n;
oCLGPU = oCLGPU / n;

end

