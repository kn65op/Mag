N = 4; %images
S = 9; %scales

% EdgeImages = zeros(S, 3);
% 
% for j=0:N
%     for i=0:S
%         [EdgeImages(i + 1,1) EdgeImages(i + 1,2) EdgeImages(i + 1,3)] = DeviationImageSingle('edge', j, i);
%     end
%     csvwrite(strcat('CSV/DeviationEdgeImages', int2str(j), '.csv'), EdgeImages);
% end
% 
% RidgeImages = zeros(S, 3);
% 
% for j=0:N
%     for i=0:S
%         [RidgeImages(i + 1,1) RidgeImages(i + 1,2) RidgeImages(i + 1,3)] = DeviationImageSingle('ridge', j, i);
%     end
%     csvwrite(strcat('CSV/DeviationPureImages', int2str(j), '.csv'), RidgeImages);
% end


PureImages = zeros(S, 3);

for j=0:N
    for i=0:S
        [PureImages(i + 1,1) PureImages(i + 1,2) PureImages(i + 1,3)] = DeviationImageSingle('pure', j, i);
    end
    csvwrite(strcat('CSV/DeviationPureImages', int2str(j), '.csv'), PureImages);
end
% 
% 
% CornerImages = zeros(S, 3);
% 
% for j=0:N
%     for i=0:S
%         [CornerImages(i + 1,1) CornerImages(i + 1,2) CornerImages(i + 1,3)] = DeviationImageSingle('corner', j, i);
%     end
%     csvwrite(strcat('CSV/DeviationCornerImages', int2str(j), '.csv'), CornerImages);
% end
% 
% BlobImages = zeros(S, 3);
% 
% for j=0:N
%     for i=0:S
%         [BlobImages(i + 1,1) BlobImages(i + 1,2) BlobImages(i + 1,3)] = DeviationImageSingle('blob', j, i);
%     end
%     csvwrite(strcat('CSV/DeviationBlobImages', int2str(j), '.csv'), BlobImages);
% end
