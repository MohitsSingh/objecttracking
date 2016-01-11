function [img_seg] = Edge_Detection(mask)

%Segmentation using Edge Detection - Canny Operator
       img_seg = edge(mask, 'canny');
end

