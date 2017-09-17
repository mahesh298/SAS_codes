%LET start= 23oct1992;
%let end= 16sep2017;
* creating day to day sas dates and weekends, weeks,dates, month..etc form the start date to end date;
data quota;
do date = "&start"d to "&end"d;
    month=month(date);
	year=year(date);
	weekdate= (2<=(weekday(date))<=6);
	day_of_week= put(date, downame3.);
	weekend=(not weekdate);
	week=week(date,"v");
	output;
	end;
	format date date9.;

run;

* loop to create number sequence;
data mdm;
new='16sep2017'd;
do i=232 to 280 by 1;
j=i-232;
output;
new=intnx('month',new,1+j,'e');
end;
format new date9.;
run;
