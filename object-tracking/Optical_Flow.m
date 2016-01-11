function [out] = Block_Match(mask,obj)

    % Motion Estimation using Block Matching
      img1 = im2double(mask);
      fr2 = obj.reader.step();
      img2 = im2double(rgb2gray(fr2));
      motion = step(obj.hbm, img1, img2);
      img12 = step(obj.halphablend, img2, img1);
   
end

