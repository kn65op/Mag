function [ CLCPU CLGPU CV] = DiffPixels( mode, image_number )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


[CL CVCPU CVGPU] = getImagesFromModeAndNumber(mode, image_number);

CLCVCPU = abs(CL - CVCPU);
CLCVGPU = abs(CL - CVGPU);
CVCPUCVGPU = abs(CVCPU - CVGPU);

[NN MM] = size(CL);
N = NN * MM;
CLCPU = sum(sum(abs(sign(CLCVCPU)))) / N;
CLGPU = sum(sum(abs(sign(CLCVGPU)))) / N;
CV = sum(sum(abs(sign(CVCPUCVGPU)))) / N;

end

