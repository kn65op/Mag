function [ CLCPU CLGPU CV] = CalcDeviation( mode, image_number )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


[CL CVCPU CVGPU] = getImagesFromModeAndNumber(mode, image_number);

sumCLCVCPU = sum(sum(abs(CL - CVCPU)));
sumCLCVGPU = sum(sum(abs(CL - CVGPU)));
sumCVCPUCVGPU = sum(sum(abs(CVCPU - CVGPU)));

CLCVCPU = abs(CL - CVCPU);
CLCVGPU = abs(CL - CVGPU);
CVCPUCVGPU = abs(CVCPU - CVGPU);

CLCPU = sumCLCVCPU / sum(sum(abs(sign(CLCVCPU))));
CLGPU = sumCLCVGPU / sum(sum(abs(sign(CLCVGPU))));
CV = sumCVCPUCVGPU / sum(sum(abs(sign(CVCPUCVGPU))));

if (isnan(CLCPU))
    CLCPU = 0;
end
if (isnan(CLGPU))
    CLGPU = 0;
end
if (isnan(CV))
    CV = 0;
end 

end

