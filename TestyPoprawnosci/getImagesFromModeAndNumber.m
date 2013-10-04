function [ CL CVCPU CVGPU ] = getImagesFromModeAndNumber( mode, image_number )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

cl_image_name = strcat('in_', mode, '_OpenCL_', image_number, '.bmp');
cv_cpu_image_name = strcat('in_', mode, '_OpenCVCPU_', image_number, '.bmp');
cv_gpu_image_name = strcat('in_', mode, '_OpenCVGPU_', image_number, '.bmp');

CL = (int32)(imread(cl_image_name));
CVCPU = imread(cv_cpu_image_name);
CVGPU = imread(cv_gpu_image_name);

% CL = rgb2gray(imread(cl_image_name));
% CVCPU = rgb2gray(imread(cv_cpu_image_name));
% CVGPU = rgb2gray(imread(cv_gpu_image_name));


end

