N = 4;

EdgeImages = zeros(N, 3);

for i=0:N
    [EdgeImages(i + 1,1) EdgeImages(i + 1,2) EdgeImages(i + 1,3)] = DeviationImage('edge', i);
end

RidgeImages = zeros(N, 3);

for i=0:N
    [RidgeImages(i + 1,1) RidgeImages(i + 1,2) RidgeImages(i + 1,3)] = DeviationImage('ridge', i);
end


PureImages = zeros(N, 3);

for i=0:N
    [PureImages(i + 1,1) PureImages(i + 1,2) PureImages(i + 1,3)] = DeviationImage('pure', i);
end


CornerImages = zeros(N, 3);

for i=0:N
    [CornerImages(i + 1,1) CornerImages(i + 1,2) CornerImages(i + 1,3)] = DeviationImage('corner', i);
end

BlobImages = zeros(N, 3);

for i=0:N
    [BlobImages(i + 1,1) BlobImages(i + 1,2) BlobImages(i + 1,3)] = DeviationImage('blob', i);
end


csvwrite('CSV/DeviationEdgeImages.csv', EdgeImages);
csvwrite('CSV/DeviationPureImages.csv', PureImages);
csvwrite('CSV/DeviationRidgeImages.csv', RidgeImages);
csvwrite('CSV/DeviationCornerImages.csv', CornerImages);
csvwrite('CSV/DeviationBlobImages.csv', BlobImages);