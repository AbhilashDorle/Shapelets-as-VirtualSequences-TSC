function sequence=newvirtualseq(sequence,num,trainset,templatenum)
similarity_from_python=load('D:\Dr. Sheng Li\ICML code\Mat_files\ArrowHead20.mat');
names=fieldnames(similarity_from_python);
similarity=cell(1,num);
for i=1:num
    similarity{i}=similarity_from_python.(names{i});
end
counter=1;
for c=1:num
    current_cell=similarity{c};
    for j=1:length(current_cell)
        vs=sequence{c}(j,:);
        for k=1:length(current_cell{j})
            vs(counter)=current_cell{j}(k);
            counter=counter+1;
        end
        sequence{c}(j,:)=vs;
    end
end
