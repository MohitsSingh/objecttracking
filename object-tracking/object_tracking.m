function  object_tracking()

% Create System objects used for reading video, detecting moving objects,
% and displaying the results.
[obj,srcFiles] = setupSystemObjects();
numcount=0;
i=1;
 while (numcount<5)
    
     numcount = numcount+1;
    %Reading video frame 
   %  frame = obj.reader.step();
   str1 = '/home/reethu/imgs_video/';
   str2 = srcFiles(i).name;
   filename = strcat(str1,str2);
   %filename = strcat('/home/reethu/',srcFiles(i).name);
   I=imread(filename);
 % I=imread('/home/reethu/traffic31.jpg');
     
    %Preprocessing - Conversion of image to intensity values
     %imgN = rgb2gray(frame);
               
    %Segmentation using Edge Detection
     %[img_seg] = Edge_Detection(imgN);
     
    %Preprocessing - Background Subtraction
     [mask] = Background_Subtraction(I, obj);
       
    %Segmentation using BlobAnalysis
     [bboxes] = Segmentation(mask, obj);
    
    %Motion Estimation using Optical Flow
     [out,motion] = Block_Match(mask,obj,i,srcFiles);
         
    %Display Results
     %displayresults(out, img_seg, mask, obj, bboxes);
     displayresults(out,motion,mask,obj,bboxes,i);
     i=i+1; 
    
 end

end

