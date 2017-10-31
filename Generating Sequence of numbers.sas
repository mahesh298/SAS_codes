
/* how to generate the continous num in SAS using SL in between Data sets with the help of do loops*/
data test1;
do x=1 to n ;
output;
end;
run;

proc sql;
select count(*) from test1;
run;


data test2;
do x=&count+n to 100 ;output;end;*here after count+(num) we can change the num accordingly to change the output variables;
run;
