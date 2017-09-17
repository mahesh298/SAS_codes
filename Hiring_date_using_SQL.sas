* Task id I have been given an employees data set in which i need to find the Employees who joined the company 
before 2001 I got hiredate from data set and proceed further with this data for learners I have added the data as the txt file 
below copy it and create a new txt or csv or xlsx file and proceed the exercise;

proc import datafile="/folder/myfolders/employee.txt"
dbms=' ' out=employee replace ;run;* default no need of adding getnames=yes;

proc sql;
select *, (mdy(31,12,2000) le hiredate) as hire_date from employee
order by hire_date;
quit;


proc sql;
select *, (mdy(31,12,2000) le hiredate) as hire_date from employee
where calculated hire_date=0;
quit;


/*
First_Name	Last_Name	CardNum	EmpNo	HireDate	Salary	Bonus_2002
Leila	Remlawi	97663800	8	12/28/1997	52750	"$1,405.40 "
Vladimir	Alexov	81964010	60	10/5/1997	41250	"$4,557.43 "
Matthew	Lee	84984560	100	3/31/1999	38250	$651.19 
Alex	Williams	53621740	104	8/12/2001	40175	"$7,460.02 "
Narinder	Singh	99743360	146	9/9/1999	32250	"$6,990.75 "
Albert	Schmidt	16753180	157	9/26/2002	36170	$836.98 
Mohan	Parhar	47747850	161	8/10/2000	69750	"$4,455.37 "
Nicole	Levy	20558980	172	6/15/2002	46150	"$1,838.97 "
Jeanette	Wallace	76326310	180	5/11/1995	46500	$952.81 
Will	Harris	81270120	201	11/30/2001	79250	"$9,722.57 "
Nils	Chiaro	62084710	210	7/23/1996	43800	"$7,483.63 "
James	Lee	93164700	222	12/11/1998	88420	"$8,922.35 "
Heidi	Wiebe	07204050	230	2/7/1995	75280	"$8,555.14 "
Pamela	Coverly	82195390	253	10/6/1996	62250	"$2,167.31 "
Denise	Nieweler	00586150	269	9/10/1997	44680	"$7,340.07 "
Hugh	Vanda	88365680	277	7/2/2002	31340	"$1,972.33 "
Tim	Lalli	84250380	284	7/21/1998	40450	"$9,386.46 "
Andre	Jacques	31232530	292	2/26/1996	57740	"$6,614.33 "
Hilbert	Frank	20630400	306	4/6/2000	38270	"$1,528.45 "
Patrick	Doyle	23841580	311	8/25/1995	79840	"$3,089.67 "
Beth	Sinclair	39256280	328	11/16/1999	52180	"$5,831.79 "
Igor	Belchev	91455340	331	11/30/2002	58760	$147.74 
Patricia	Walters	43771380	340	10/25/1995	39180	"$9,144.61 "
Bernd	Mueller	23638380	100010	9/6/1995	47250	"$1,421.16 "
Iris	Shamus	07612980	100023	9/26/1999	47380	"$9,387.83 "
Paul	Perry	91902270	100029	3/19/1995	46250	"$6,670.83 "
Antonio	Sanchez	65563800	100046	5/26/1999	55340	"$7,220.74 "
Jacqueline	Miller	18251510	100073	6/15/1995	67750	"$7,084.07 "
John	Gilbert	23000750	100093	9/8/1998	35900	"$4,783.03 "
Janet	Gilley	98022580	100125	7/2/1999	29950	"$6,325.61 "
Lars	Andersson	09071520	100130	2/18/1995	45370	"$6,000.45 "
Olga	Roman	42834790	100188	4/30/1996	63840	"$2,596.77 "
Elisa	Sinclair	88722710	100245	12/28/1998	46500	"$5,007.62 "
Charles	Nasar	28113520	200010	5/1/1995	29250	"$1,987.75 "
Angela	Richie	59193380	200052	12/11/1995	48420	"$3,823.43 "
Blair	Green	65829050	200147	9/10/1997	44680	"$2,088.17 "
Jennifer	Goldberg	56942650	200176	8/25/1998	39840	"$4,800.95 "
Phyllis	Goodwin	94166060	200227	11/30/1998	58760	"$2,913.06 "
Barbara	Nelson	51565070	200248	3/19/1996	46250	"$1,261.85 "
Janelle	Gudge	52739870	200281	9/8/1997	35900	"$4,738.81 "
Rafael	Linea	06141710	200311	2/18/1995	45370	"$1,917.66 "
Per	Thiessen	82198780	200339	4/30/1996	43840	"$5,441.06 "
Melissa	Hong	94440380	200341	2/8/2001	40070	"$8,770.09 "
Raymond	Cheng	23155490	200342	5/10/1999	20210	"$3,190.29 "
Brenda	Askew	71756780	200343	12/1/1999	65860	"$3,912.37 "
Virginia	Lehman	61888010	200344	12/8/2001	64780	"$5,495.23 "
Rejane	Boucher	79724780	200345	9/9/2002	33740	$812.94 
Brett	Starr	78290110	200346	9/26/2002	45780	"$6,029.04 "
Daniel	Wang	64207970	200399	10/8/2001	95070	"$3,349.67 "
Kim	Montara	75704370	200347	6/16/2002	20470	"$9,195.24 "
Shane	Nickles	38854630	200348	5/11/1999	26040	"$8,517.91 "
Dean	Severson	56474120	200349	11/30/2001	86700	"$6,550.64 "
Kelly	Ho	25945440	200350	7/25/1997	96150	"$5,934.23 "
Stephen	Colman	34914660	200351	11/12/2000	54240	"$2,210.18 "
Dimitri	Smirnoff	67358750	200352	7/2/1995	67860	"$8,324.72 "
Clara	Pierre	64950290	200353	10/6/1996	68070	"$9,178.07 "
William	Samuels	42723850	200362	11/11/2001	42747	"$9,912.17 "
Hilda	Demeter	85018690	200365	2/7/2002	45690	"$9,489.57 "
Michelle	Sanja	74108270	200376	7/21/1998	64710	"$9,183.06 "
Winifred	Long	07674350	200379	2/26/1999	39720	"$8,972.02 "
LaVerne	Michaels	11059920	300013	4/26/1995	38220	"$6,281.11 "
Wei	Fisher	64445830	300025	7/25/1995	31020	"$8,915.75 "
Grant	Heller	56532090	300034	11/16/1999	54100	"$3,726.06 "
Sarah	Pollard	69373530	300041	1/30/2002	30200	"$5,765.33 "
Geoff	Stein	94587030	300057	3/25/1995	74040	"$3,423.45 "
Thomas	Michaelson	92942070	300063	9/6/2001	77250	"$3,841.38 "
Valerie	Cooper	47406190	300074	5/26/1995	31600	"$8,354.12 "
Gertrude	Van	38809310	300082	3/31/1995	27260	"$7,891.86 "
Mandy	Black	69042630	300093	4/1/1999	36710	"$8,098.33 "
Tracy	Knight	33319870	300101	4/15/1995	63150	"$5,798.96 "
Gayle	Westing	91180180	300102	8/9/1999	87770	"$3,733.35 "
Mickey	Peterson	47771140	300103	7/12/1997	53850	"$7,336.27 "
Estella	Hidalgo	40908810	300115	2/8/1995	43230	"$1,600.73 "
Fred	Lyster	90848480	300117	4/30/1998	51950	"$2,883.88 "
Anthony	Cooke	66089970	300139	1/28/1998	85170	"$4,691.24 "
Irene	Hao	84472390	300140	5/11/1995	71460	"$4,793.42 "
Fritz	Zeeman	82512520	300143	11/12/1995	90080	"$8,311.96 "
Leonard	Kain	84016940	300189	9/11/1997	88950	"$3,853.66 "
Tom	Valdez	23055360	300190	8/27/1998	35160	"$8,905.28 "
Garry	Canter	56904520	300201	11/1/1998	44040	$912.71 
Ana	Lopez	71950300	300202	3/29/1996	51270	"$5,848.31 "
Renee	Glazer	55595630	300203	9/28/1997	30010	"$8,393.77 "
Brian	Keaton	18391460	300213	4/18/1995	51400	"$7,308.39 "
Robert	Chen	91191390	400001	5/30/1996	61500	"$7,771.19 "
Ricardo	Jung	23824140	400007	4/6/2000	39800	"$2,978.65 "
Carol	August	85632550	400008	3/20/1999	60120	"$5,409.32 "
Jim	Thomas	77921180	400009	5/15/1996	47040	"$7,042.45 "
Robert	Wilder	80903830	400040	6/15/1997	71090	"$6,038.22 "
Caroline	Thames	73861850	400041	7/22/1998	39040	"$3,432.99 "
Brendan	Hampton	10225370	400044	9/20/2002	27400	"$7,486.81 "
Cathy	Upland	96138930	400046	9/14/1998	32060	$93.32 
John	Lawson	81706190	400047	11/20/1999	98840	"$8,649.41 "
Walter	Wong	63451640	400090	1/23/1997	40910	"$7,984.48 "
Christine	Bulgakov	92563650	400100	2/7/1995	32750	"$7,691.59 "
John	Hibbing	70802690	400110	2/9/1996	51250	"$1,210.48 "
Roger	Emerson	98547300	400120	1/11/2001	48250	$280.93 
Christopher	Kohl	18468640	400130	3/30/2001	60175	"$1,128.87 "
Wilma	Vandriessche	46343410	400140	4/19/2000	32250	"$8,776.57 "
Roberta	Delgado	93359850	400150	10/10/1999	36170	"$6,809.09 "
Christy	St.	58281190	400160	5/13/2000	39750	"$4,152.46 "
Josephine	Almeda	07801590	400170	6/30/1995	46350	"$3,398.97 "
Flora	Khan	41309560	400180	10/22/2001	45900	"$3,428.43 "
Naomi	Hu	73781890	400190	11/23/2000	71250	"$2,710.30 "
Pedro	Morales	72564890	400200	12/10/2002	43600	$41.83 
Ross	Burke	52107600	400210	9/15/1996	84420	$873.51 
Connie	Turner	93710600	500103	2/22/1998	49280	$863.23 
Maria	Valencia	58620440	500108	3/22/1995	61250	"$9,925.75 "
Pablo	Ramos	12893890	500109	7/21/1999	46320	"$2,949.72 "
Cassandra	Orlov	74849090	500110	4/25/1997	31590	"$1,335.28 "
Julie	Clarke	76454160	500115	1/3/1997	40590	"$5,921.22 "
Cynthia	Winslow	31528380	500116	1/5/1995	57910	"$4,403.86 "
Katrina	Creek	81347490	500118	8/10/2000	53260	"$2,439.88 "
Scott	Hanada	58036780	500128	7/9/1998	59440	"$4,196.10 "
Harrison	Han	69799620	500131	3/3/1996	51380	"$2,045.84 "
Karen	Kenmore	72447000	500137	4/24/1995	56660	"$4,271.45 "
Sean	Brynolfsson	46463420	500139	6/7/1999	41400	"$2,033.16 "
Michal	Levy	63176710	500140	9/27/1997	46390	"$9,755.50 "
Amanda	Leiden	06917660	500143	11/5/1995	47590	$862.24 
Shawna	Campbell	00665510	500147	2/10/1996	46380	$203.05 
Stephen	Oakley	44024380	500149	5/2/1999	58340	"$6,250.08 "
Douglas	Andrews	90309990	500158	2/13/2000	67050	"$4,148.40 "
Miriam	Markevich	79233110	500160	11/13/2001	45900	"$3,537.27 "
Sandy	Cavell	39604440	500189	6/15/1998	49950	"$1,593.30 "
Eveline	Paris	10032030	500193	6/14/1998	55370	"$9,948.28 "
Dennis	Burton	23083350	500195	10/5/1997	33840	"$4,188.48 "
Kurt	Shelley	81105600	500198	3/29/1999	66500	"$7,130.89 "
Mike	Nicholson	57369020	500199	8/10/2001	29250	"$4,584.89 "
Alastair	Sherlock	72096760	600010	9/7/1999	39020	$346.80 
Carlo	Palozzi	86866260	600012	6/26/2000	44650	"$8,060.44 "
Steven	Branstrom	55144940	600015	10/10/2000	39500	"$3,656.30 "
Sergei	Zigic	34068810	600018	9/13/2002	58750	$654.57 
Ruth	Patterson	21848840	600023	3/11/2002	46350	"$6,038.07 "
Eilidh	Mclachlan	37400750	600029	11/28/2001	35800	"$8,552.17 "
Matilda	Lewis	69360740	600030	7/20/1996	43570	"$2,964.13 "
Giuseppe	Rozina	32047830	600183	9/11/1998	43940	"$2,785.29 "
Stuart	Mclean	43675280	600198	12/7/1995	71250	"$6,458.21 "
Ellen	Telman	21460380	700002	11/7/1996	43600	"$8,199.60 "
Mark	Duguid	05619320	700005	4/10/1997	84420	$410.07 
Susan	Kingston	73994030	700009	7/4/2001	49280	"$9,395.15 "
Esther	Bresnahan	06564460	700021	7/21/1997	61250	"$1,884.19 "
Anton	Vreys	07946740	700038	2/27/1995	46320	"$6,747.38 "
Marc	duBois	49097710	700042	4/6/2000	31590	"$8,126.00 "
Lily	Tran	34155210	700049	8/25/1999	40590	"$7,548.75 "
Patricia	Eldridge	60716210	700051	11/15/1999	57910	"$8,365.75 "
Tanja	Himmel	41225800	700092	11/13/2001	53260	"$2,143.17 "
Eyad	Sayeed	05486540	700102	10/25/1995	59440	$228.48 
Monty	Zunini	75632050	700118	9/16/1996	51380	"$6,012.16 "
Katya	Petrovic	35028840	800010	5/25/1995	56660	"$7,527.93 "
Fatima	Nahan	60951460	800011	12/19/2002	41400	$942.54 
Marlene	Sweeney	92699140	800012	5/26/1999	46390	"$1,822.86 "
Wayne	Steeves	14758060	800013	6/15/1995	47590	"$4,440.37 "
Faye	Winger	21251490	800014	9/8/1998	46380	$955.53 
Franz	Catellier	30566130	800015	7/21/1999	58340	"$6,376.76 "
Angus	Shanahan	61284170	800018	2/18/1995	67050	"$8,300.41 "
Margaret	Dupont	54875310	800019	5/30/1996	45900	$464.16 
Tina	Fisher	61897000	800022	11/28/1997	49950	$623.94 
Petra	Echard	01426190	800023	5/1/1995	55370	"$9,805.47 "
Francois	Sale	92664620	800024	12/11/1995	33840	"$1,680.01 "
Mehdy	Gupta	11193600	800028	9/19/1997	66500	"$1,533.87 "
Estella	Pereira	71378010	800029	6/25/1998	29250	"$6,245.68 "
Christine	Haas	91501900	800030	11/28/1998	39020	$898.32 
Michael	Thompson	82969750	800031	3/21/1996	44650	"$4,555.92 "
Sally	Kwan	25224110	800035	9/18/1999	39500	"$5,761.92 "
John	Geyer	55367960	800038	2/18/1998	58750	"$9,927.82 "
Irving	Stern	61490780	800039	4/30/1996	46350	"$3,242.40 "
Eva	Pulaski	53778360	800043	10/12/2001	35800	"$5,764.68 "
Eileen	Henderson	55538820	800044	5/15/1998	43570	"$7,023.82 "
Theodore	Spenser	74263410	800049	2/14/1998	43940	"$3,098.08 "
Vincenzo	Lucchesi	48770450	800051	10/25/1997	31590	"$8,341.14 "
Sean	Wang	99407120	800053	2/25/1998	40590	$468.03 
Dolores	Quintana	66956930	800059	8/9/2000	57910	"$8,587.48 "
Heather	Nicholls	21143120	800078	9/7/1999	53260	"$9,772.36 "
Bruce	Turner	51080990	800079	6/12/2002	59440	"$3,469.07 "
Elizabeth	Pianka	11877970	800080	10/18/2000	51380	"$4,871.88 "
Masatoshi	Yoshimura	59809180	800081	9/5/2002	56660	"$1,129.21 "
Marilyn	Scoutten	80127990	800090	3/6/2002	41400	"$3,738.10 "
James	Walker	89521770	800091	11/17/2001	46390	"$3,609.91 "
David	Michaels	16976410	800093	7/27/1996	47590	"$9,151.17 "
William	Jones	62689010	800094	9/13/1998	43800	"$5,735.42 "
Jennifer	Lutz	16128790	800095	12/1/1995	71200	"$9,624.60 "
James	Jefferson	16215630	800096	11/1/1996	44500	"$5,295.58 "
Salvatore	Marino	83859320	800097	4/13/1997	54400	"$9,961.92 "
Daniel	Smith	52939920	800098	7/5/2001	49300	"$8,096.47 "
Sybil	Johnson	81855730	800099	7/23/1997	61100	"$7,590.73 "
Maria	Perez	83120260	800200	3/27/1995	46200	$630.13 
Ethel	Schneider	82371240	800203	4/7/2000	31500	$636.90 
John	Parker	72736370	800205	8/27/1999	40500	"$7,073.94 "
Philip	Smith	75808870	800207	1/15/1999	57800	"$5,244.48 "
Maude	Setright	47637520	800208	11/12/2001	53200	"$8,126.56 "
Ramlal	Mehta	10137470	800215	10/24/1995	59400	"$3,032.38 "
Wing	Sei	38361160	800218	9/17/1996	52380	"$3,097.90 "
Jason	Gounot	47842280	800219	1/30/1999	46660	"$6,555.00 "
Dian	Hemminger	45724700	800230	10/20/2000	41500	"$8,743.70 "
Greg	Nelson	77644120	800233	1/18/1997	43390	"$4,038.89 "
Kim	Natz	25781630	800259	3/30/1996	37590	"$8,060.82 "
Kiyoshi	Dahl	18377340	800301	9/9/1999	66380	"$7,405.17 "
Reba	John	15016930	800303	6/1/1996	58940	"$8,331.55 "
Robert	Monteverde	67949310	800304	7/1/1998	37050	"$6,231.32 "
Eileen	Schwartz	74573530	800305	8/11/1997	49900	"$9,889.22 "
Michelle	Springer	72645070	800308	1/10/1999	49980	"$4,172.84 "
*/






