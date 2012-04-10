% depthmap.m

clear all;

load mandrill;  % X, caption, map
% figure('color','k');
% colormap(map);
% image(X);
% axis off          % Remove axis ticks and numbers
% axis image        % Set aspect ratio to obtain square pixels

%% conv2
top_w=zeros(size(X));
w_width=15;    w_height=10;
top_w(floor(size(X,1)/2)-w_width/2:floor(size(X,1)/2)+w_width/2, floor(size(X,2)/2)-w_width/2:floor(size(X,2)/2)+w_width/2)=w_height;
img=conv2(X,top_w, 'same');
%img=img./max(img(:)).*256;
clf(figure(2));
colormap(map);
imagesc(img);
%view(2);