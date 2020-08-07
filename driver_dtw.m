lambda=[0.7,0.9,1,3,5,7,9,13,16,20,25,30,35,40];

[lamdarows,lambdacol]=size(lambda);

max_dtwscore=0;
optimal_lambda=0;

% fid=fopen('tests.txt','w');
k=1;
for i = 1:lambdacol
       dtw_acc=EvaluateRVSML_MSRAction3D_60_dtw(lambda(i));
       fprintf('lambda=%f\n',lambda(i));
%        fprintf(fid,'lambda=%f\n',lambda(i));
%        fprintf(fid,'DTW accuracy=%f\n',dtw_acc);
%        fprintf(fid,'**********************************************************\n');
       fprintf('**********************************************************\n');
       temp_max=0;
       for p=1:length(dtw_acc)
           if temp_max<dtw_acc(p)
              temp_max=dtw_acc(p);
              k=p;
           end
       end
       if max_dtwscore<temp_max
          max_dtwscore=temp_max;
          optimal_lambda=lambda(i);
       end
end

% fprintf(fid,'**********************************************************\n');
% fprintf(fid,'**********************************************************\n');
fprintf('Max Score=%f\n',max_dtwscore);
fprintf('Optimal lambda=%f\n',optimal_lambda);
% fprintf('K=%f\n',k);
% fprintf('Optimal templatenum (m)=%f\n',optimal_templatenum);
% 
% fclose(fid);


% fprintf(fid,'Max Score=%f\n',max_dtwscore);
% fprintf(fid,'Optimal lambda=%f\n',optimal_lambda);
% fprintf(fid,'KNN=%f\n',k);
% fclose(fid);