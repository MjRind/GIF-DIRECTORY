directory = dir('D:\Majid\*.jpg');
for i = 1 : size(directory,1)
    name = directory(i).name;
    name = strcat('D:\Sam\New folder\',name);
    img{i} = imread(name);
    blur = fspecial('disk',10);
    img{i} = imfilter(img{i},blur);
end
for i = 1 : size(img,2)
    subplot(2,round(size(img,2)/2),i), imshow(img{i});
end
