function [oCLCPU oCLGPU oCV ] = DiffImageScale( mode, image_number, scale_number )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here


oCV = 0;
oCLCPU = 0;
oCLGPU = 0;


[CLCPU, CLGPU, CV] = DiffPixels(mode, strcat('0', int2str(image_number), '_0', int2str(scale_number)));
oCV = oCV + CV;
oCLCPU = oCLCPU + CLCPU;
oCLGPU = oCLGPU + CLGPU;

end

