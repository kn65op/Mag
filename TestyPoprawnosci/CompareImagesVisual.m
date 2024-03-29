function [] = CompareImagesVisual( mode, image_number )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[CL CVCPU CVGPU] = getImagesFromModeAndNumber(mode, image_number);

CLCVCPU = abs(CL - CVCPU);
CLCVGPU = abs(CL - CVGPU);
CVCPUCVGPU = abs(CVCPU - CVGPU);

imwrite(imcomplement(CLCVCPU), strcat('diff_', mode, '_CL-CVCPU_', image_number, '.png'));
imwrite(imcomplement(CLCVGPU), strcat('diff_', mode, '_CL-CVGPU_', image_number, '.png'));
imwrite(imcomplement(CVCPUCVGPU), strcat('diff_', mode, '_CVCPU-CVCPU_', image_number, '.png'));

end

