N = 4;

EdgeImages = zeros(N, 3);

for i=0:N
    [EdgeImages(i + 1,1) EdgeImages(i + 1,2) EdgeImages(i + 1,3)] = DiffImage('edge', i);
end

RidgeImages = zeros(N, 3);

for i=0:N
    [RidgeImages(i + 1,1) RidgeImages(i + 1,2) RidgeImages(i + 1,3)] = DiffImage('ridge', i);
end


PureImages = zeros(N, 3);

for i=0:N
    [PureImages(i + 1,1) PureImages(i + 1,2) PureImages(i + 1,3)] = DiffImage('pure', i);
end


CornerImages = zeros(N, 3);

for i=0:N
    [CornerImages(i + 1,1) CornerImages(i + 1,2) CornerImages(i + 1,3)] = DiffImage('corner', i);
end

BlobImages = zeros(N, 3);

for i=0:N
    [BlobImages(i + 1,1) BlobImages(i + 1,2) BlobImages(i + 1,3)] = DiffImage('blob', i);
end


csvwrite('CSV/ImageEdgeImages.csv', EdgeImages);
csvwrite('CSV/ImagePureImages.csv', PureImages);
csvwrite('CSV/ImageRidgeImages.csv', RidgeImages);
csvwrite('CSV/ImageCornerImages.csv', CornerImages);
csvwrite('CSV/ImageBlobImages.csv', BlobImages);