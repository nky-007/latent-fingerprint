function [] = CreateDictionary(matrix,region)
%% The function writes a matrix to the region file
% region
% delim = ";";
fileName = "../../Fingerprint Database/RegionDB/region"+num2str(region);
fid = fopen(fileName,'a');

for ii = 1:size(matrix,1)
    fprintf(fid,'%g\t',matrix(ii,:));
    fprintf(fid,'\n');
end
% fprintf(fid,delim);
fclose(fid);