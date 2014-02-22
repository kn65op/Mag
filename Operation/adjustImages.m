edge02 = load('in_edge_OpenCL_00_00_2.txt', '-ascii');
edge01 = load('in_edge_OpenCL_00_00_1.txt', '-ascii');
blob01 = load('in_blob_OpenCL_00_04_1.txt', '-ascii');
corner01 = load('in_corner_OpenCL_00_02_1.txt', '-ascii');
ridge01 = load('in_ridge_OpenCL_00_02_1.txt', '-ascii');
ridge02 = load('in_ridge_OpenCL_00_02_2.txt', '-ascii');

blob01 = addToZero(blob01);
corner01 = addToZero(corner01);
edge01 = addToZero(edge01);
edge02 = addToZero(edge02);
ridge01 = addToZero(ridge01);
ridge02 = addToZero(ridge02);

blob01a = imadjust(blob01);
edge01a = imadjust(edge01);
edge02a = imadjust(edge02);
ridge01a = imadjust(ridge01);
ridge02a = imadjust(ridge02);
corner01a = imadjust(corner01);

imwrite(blob01a, 'blobIntermediate.png');
imwrite(edge01a, 'edge01Intermediate.png');
imwrite(edge02a, 'edge02Intermediate.png');
imwrite(corner01a, 'cornerIntermediate.png');
imwrite(ridge01a, 'ridge01Intermediate.png');
imwrite(ridge02a, 'ridge02Intermediate.png');
