N = 9;

EdgeScales = zeros(N, 3);

for i=0:N
    [EdgeScales(i + 1,1) EdgeScales(i + 1,2) EdgeScales(i + 1,3)] = DeviationScale('edge', i);
end

RidgeScales = zeros(N, 3);

for i=0:N
    [RidgeScales(i + 1,1) RidgeScales(i + 1,2) RidgeScales(i + 1,3)] = DeviationScale('ridge', i);
end


PureScales = zeros(N, 3);

for i=0:N
    [PureScales(i + 1,1) PureScales(i + 1,2) PureScales(i + 1,3)] = DeviationScale('pure', i);
end


CornerScales = zeros(N, 3);

for i=0:N
    [CornerScales(i + 1,1) CornerScales(i + 1,2) CornerScales(i + 1,3)] = DeviationScale('corner', i);
end

BlobScales = zeros(N, 3);

for i=0:N
    [BlobScales(i + 1,1) BlobScales(i + 1,2) BlobScales(i + 1,3)] = DeviationScale('blob', i);
end

csvwrite('CSV/DeviationEdgeScales.csv', EdgeScales);
csvwrite('CSV/DeviationPureScales.csv', PureScales);
csvwrite('CSV/DeviationRidgeScales.csv', RidgeScales);
csvwrite('CSV/DeviationCornerScales.csv', CornerScales);
csvwrite('CSV/DeviationBlobScales.csv', BlobScales);