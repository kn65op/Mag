N = 9;

EdgeScales = zeros(N, 3);

for i=0:N
    [EdgeScales(i + 1,1) EdgeScales(i + 1,2) EdgeScales(i + 1,3)] = DiffScale('edge', i);
end

RidgeScales = zeros(N, 3);

for i=0:N
    [RidgeScales(i + 1,1) RidgeScales(i + 1,2) RidgeScales(i + 1,3)] = DiffScale('ridge', i);
end


PureScales = zeros(N, 3);

for i=0:N
    [PureScales(i + 1,1) PureScales(i + 1,2) PureScales(i + 1,3)] = DiffScale('pure', i);
end


CornerScales = zeros(N, 3);

for i=0:N
    [CornerScales(i + 1,1) CornerScales(i + 1,2) CornerScales(i + 1,3)] = DiffScale('corner', i);
end

BlobScales = zeros(N, 3);

for i=0:N
    [BlobScales(i + 1,1) BlobScales(i + 1,2) BlobScales(i + 1,3)] = DiffScale('blob', i);
end

csvwrite('CSV/ImageEdgeScales.csv', EdgeScales);
csvwrite('CSV/ImagePureScales.csv', PureScales);
csvwrite('CSV/ImageRidgeScales.csv', RidgeScales);
csvwrite('CSV/ImageCornerScales.csv', CornerScales);
csvwrite('CSV/ImageBlobScales.csv', BlobScales);