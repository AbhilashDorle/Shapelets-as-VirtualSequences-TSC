function [testingsetdata,testingsetdatalabel,testingsetdatanum]=test
data=load('D:\Dr. Sheng Li\Datasets\UCRArchive_2018\ArrowHead\ArrowHead_TEST.csv');
testinglabel=data(:,1);
testingset=data(:,2:end);
temp_sequence={};
labels=[];
counter=0;
testingsetdata=cell([1,size(data,1)]);
for i =1:length(testinglabel)
    testingsetdata{1,i}=testingset(i,:);
end
testingsetdatalabel=[];
for i = 1:1:size(testinglabel,1)
    testingsetdatalabel(i)=testinglabel(i);
end
testingsetdatanum=size(data,1);
% for i = 1:length(unique(testinglabel))
%     for j = 1:length(testinglabel)
%         vectors={};
%         if testinglabel(j) == i
%             vectors=testingset(j,:);
%             counter=counter+1;
%             temp_sequence{counter}=vectors;
%         end
%         labels(i)=i;
%     end
% end
% tempseq_num=size(temp_sequence,2);
end

