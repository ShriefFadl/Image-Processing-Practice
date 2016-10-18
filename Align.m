function [AlignedImage, Corners] = Align(InputImage, DW, DH)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

Corners = CornerLocations(InputImage);

P = Corners(1:3,:);

Q = [ 1 1 ; DW 1; DW DH];

T = maketform('affine',P,Q);

AlignedImage = imtransform(InputImage,T,'xdata',[0 DW],'ydata',[0 DH]);


end

