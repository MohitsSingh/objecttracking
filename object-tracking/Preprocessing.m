function [mask] = Preprocessing(frame,obj)
 %Pre-Processing
     % Frame Rate Display ??
     % color space conversion to intensity values
       imgN = rgb2gray(frame);
     % Background Subtraction
       [mask] = Background_Subtraction(imgN, obj);

end

