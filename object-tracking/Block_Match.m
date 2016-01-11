function [out,motion] = Block_Match(mask,obj,i,srcFiles)

    % Motion Estimation using Block Matching
      img1 = im2double(mask);
     j=i+1;
     str1 = '/home/reethu/imgs_video/';
   str2 = srcFiles(j).name;
   filename = strcat(str1,str2);
      fr2 = imread(filename);
     % fr2=imread('/home/reethu/traffic32.jpg');
      img2 = im2double(rgb2gray(fr2));
      motion = step(obj.hbm, img1, img2);
      out = step(obj.halphablend, img2, img1);
   
end

