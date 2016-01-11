function [bboxes] = Segmentation(mask,obj)

 %Segmentation using BlobAnalysis
 [~, ~ , bboxes] = obj.blobAnalyser.step(mask);

end

