function [ output_args ] = addToZero( input_args )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

output_args = input_args - min(min(input_args));

end

