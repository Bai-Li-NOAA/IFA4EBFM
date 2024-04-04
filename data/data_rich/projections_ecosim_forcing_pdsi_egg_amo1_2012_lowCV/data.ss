#V3.30
#C data file for simple example
#
1985 #_styr
2012 #_endyr
1 #_nseas
12 #_months_per_seas
2 #_Nsubseasons
1 #_spawn_month
-1 #_Nsexes
7 #_Nages
1 #_N_areas
3 #_Nfleets
#_fleetinfo
#_type	surveytiming	area	units	need_catch_mult	fleetname
1	-1	1	1	0	fleet1 	#_1
3	10	1	2	0	survey1	#_2
3	 4	1	2	0	survey2	#_3
#_Catch data
#_year	season	fleet	catch	catch_se
 -999	1	1	    0.1	0.05	#_1         
 1985	1	1	13603.9	0.05	#_1985      
 1986	1	1	12608.1	0.05	#_1986      
 1987	1	1	6965.11	0.05	#_1987      
 1988	1	1	1875.42	0.05	#_1988      
 1989	1	1	3547.84	0.05	#_1989      
 1990	1	1	75299.6	0.05	#_1990      
 1991	1	1	 117945	0.05	#_1991      
 1992	1	1	 268179	0.05	#_1992      
 1993	1	1	 458765	0.05	#_1993      
 1994	1	1	 229069	0.05	#_1994      
 1995	1	1	 149976	0.05	#_1995      
 1996	1	1	 392661	0.05	#_1996      
 1997	1	1	 359264	0.05	#_1997      
 1998	1	1	 936186	0.05	#_1998      
 1999	1	1	 661891	0.05	#_1999      
 2000	1	1	 465203	0.05	#_2000      
 2001	1	1	 321656	0.05	#_2001      
 2002	1	1	 313517	0.05	#_2002      
 2003	1	1	 172277	0.05	#_2003      
 2004	1	1	 160949	0.05	#_2004      
 2005	1	1	 137609	0.05	#_2005      
 2006	1	1	 195168	0.05	#_2006      
 2007	1	1	 106038	0.05	#_2007      
 2008	1	1	 152177	0.05	#_2008      
 2009	1	1	 171013	0.05	#_2009      
 2010	1	1	 135985	0.05	#_2010      
 2011	1	1	 230422	0.05	#_2011      
 2012	1	1	 391994	0.05	#_2012      
-9999	0	0	      0	   0	#_terminator
#_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; >=30 for special types
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet	Units	Errtype	SD_Report
1	1	0	0	#_fleet1 
2	0	0	0	#_survey1
3	0	0	0	#_survey2
#
#_CPUE_data
#_year	seas	index	obs	se_log
 1990	10	2	 547420	0.1	#_1990      
 1991	10	2	3430920	0.1	#_1991      
 1992	10	2	7019540	0.1	#_1992      
 1993	10	2	1060720	0.1	#_1993      
 1994	10	2	 636510	0.1	#_1994      
 1995	10	2	1184920	0.1	#_1995      
 1996	10	2	 809935	0.1	#_1996      
 1997	10	2	 870120	0.1	#_1997      
 1998	10	2	5776630	0.1	#_1998      
 1999	10	2	1491380	0.1	#_1999      
 2000	10	2	 512338	0.1	#_2000      
 2001	10	2	 291699	0.1	#_2001      
 2002	10	2	 364967	0.1	#_2002      
 2003	10	2	60624.2	0.1	#_2003      
 2004	10	2	40051.1	0.1	#_2004      
 2005	10	2	 197600	0.1	#_2005      
 2006	10	2	 152760	0.1	#_2006      
 2007	10	2	 210482	0.1	#_2007      
 2008	10	2	 788883	0.1	#_2008      
 2009	10	2	 218864	0.1	#_2009      
 2010	10	2	 375692	0.1	#_2010      
 2011	10	2	2326980	0.1	#_2011      
 2012	10	2	1155330	0.1	#_2012      
 1985	 4	3	1507170	0.1	#_1985      
 1986	 4	3	1984720	0.1	#_1986      
 1987	 4	3	 846626	0.1	#_1987      
 1988	 4	3	 194950	0.1	#_1988      
 1989	 4	3	 153912	0.1	#_1989      
 1990	 4	3	92391.9	0.1	#_19901     
 1991	 4	3	 375629	0.1	#_19911     
 1992	 4	3	1938040	0.1	#_19921     
 1993	 4	3	1127470	0.1	#_19931     
 1994	 4	3	 365721	0.1	#_19941     
 1995	 4	3	 410270	0.1	#_19951     
 1996	 4	3	 386093	0.1	#_19961     
 1997	 4	3	 236852	0.1	#_19971     
 1998	 4	3	 765815	0.1	#_19981     
 1999	 4	3	1167210	0.1	#_19991     
 2000	 4	3	 286601	0.1	#_20001     
 2001	 4	3	 121367	0.1	#_20011     
 2002	 4	3	 174609	0.1	#_20021     
 2003	 4	3	55744.3	0.1	#_20031     
 2004	 4	3	8400.45	0.1	#_20041     
 2005	 4	3	28403.3	0.1	#_20051     
 2006	 4	3	72669.6	0.1	#_20061     
 2007	 4	3	55415.8	0.1	#_20071     
 2008	 4	3	 129808	0.1	#_20081     
 2009	 4	3	 166268	0.1	#_20091     
 2010	 4	3	69954.8	0.1	#_20101     
 2011	 4	3	 347709	0.1	#_20111     
 2012	 4	3	 617787	0.1	#_20121     
-9999	 0	0	      0	  0	#_terminator
0 #_N_discard_fleets
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal
#
#_discard_fleet_info
#
#_discard_data
#
#_meanbodywt
0 #_use_meanbodywt
 #_DF_for_meanbodywt_T-distribution_like
#
#_population_length_bins
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
1 # binwidth for population size comp
1 # minimum size in the population (lower edge of first bin and size at age 0.00)
60 # maximum size in the population (lower edge of last bin)
0 #_use_lencomp
7 #_N_agebins
#
#_agebin_vector
0 1 2 3 4 5 6 #_agebin_vector
#
#_ageing_error
1 #_N_ageerror_definitions
#_	NA	NA	NA	NA	NA	NA	NA	NA	NA	NA	NA	NA	NA	NA	NA
-1	-1	-1	-1	-1	-1	-1	-1
 0	 0	 0	 0	 0	 0	 0	 0
#
#_age_info
#_mintailcomp	addtocomp	combine_M_F	CompressBins	CompError	ParmSelect	minsamplesize
0	1e-07	1	0	0	0	0.001	#_fleet1 
0	1e-07	1	0	0	0	0.001	#_survey1
0	1e-07	1	0	0	0	0.001	#_survey2
1 #_Lbin_method: 1=poplenbins; 2=datalenbins; 3=lengths
 #_combine males into females at or below this bin number
#_Yr	Seas	FltSvy	Gender	Part	Ageerr	Lbin_lo	Lbin_hi	Nsamp	age0	age1	age2	age3	age4	age5	age6
 1985	 1	1	0	0	1	-1	-1	200	  5	 83	 98	14	 0	0	0	#_1985      
 1986	 1	1	0	0	1	-1	-1	200	 10	 45	123	20	 2	0	0	#_1986      
 1987	 1	1	0	0	1	-1	-1	200	 11	 39	106	39	 5	0	0	#_1987      
 1988	 1	1	0	0	1	-1	-1	200	 22	 50	 64	46	15	2	1	#_1988      
 1989	 1	1	0	0	1	-1	-1	200	 68	 41	 66	17	 7	1	0	#_1989      
 1990	 1	1	0	0	1	-1	-1	200	111	 82	  6	 0	 0	0	1	#_1990      
 1991	 1	1	0	0	1	-1	-1	200	 34	138	 28	 0	 0	0	0	#_1991      
 1992	 1	1	0	0	1	-1	-1	200	  3	 35	154	 8	 0	0	0	#_1992      
 1993	 1	1	0	0	1	-1	-1	200	 28	 27	 89	53	 3	0	0	#_1993      
 1994	 1	1	0	0	1	-1	-1	200	 35	100	 38	19	 8	0	0	#_1994      
 1995	 1	1	0	0	1	-1	-1	200	 15	 92	 83	 6	 3	1	0	#_1995      
 1996	 1	1	0	0	1	-1	-1	200	101	 29	 64	 6	 0	0	0	#_1996      
 1997	 1	1	0	0	1	-1	-1	200	 63	120	 14	 2	 0	0	1	#_1997      
 1998	 1	1	0	0	1	-1	-1	200	 18	 99	 82	 1	 0	0	0	#_1998      
 1999	 1	1	0	0	1	-1	-1	200	 17	 54	123	 5	 1	0	0	#_1999      
 2000	 1	1	0	0	1	-1	-1	200	 59	 54	 67	18	 2	0	0	#_2000      
 2001	 1	1	0	0	1	-1	-1	200	 52	126	 21	 1	 0	0	0	#_2001      
 2002	 1	1	0	0	1	-1	-1	200	 19	115	 65	 1	 0	0	0	#_2002      
 2003	 1	1	0	0	1	-1	-1	200	 53	 65	 80	 2	 0	0	0	#_2003      
 2004	 1	1	0	0	1	-1	-1	200	 75	114	 11	 0	 0	0	0	#_2004      
 2005	 1	1	0	0	1	-1	-1	200	 21	148	 31	 0	 0	0	0	#_2005      
 2006	 1	1	0	0	1	-1	-1	200	 65	 64	 70	 1	 0	0	0	#_2006      
 2007	 1	1	0	0	1	-1	-1	200	 74	106	 19	 1	 0	0	0	#_2007      
 2008	 1	1	0	0	1	-1	-1	200	  4	 97	 98	 0	 1	0	0	#_2008      
 2009	 1	1	0	0	1	-1	-1	200	 79	 35	 78	 8	 0	0	0	#_2009      
 2010	 1	1	0	0	1	-1	-1	200	 75	116	  7	 1	 1	0	0	#_2010      
 2011	 1	1	0	0	1	-1	-1	200	 19	108	 72	 0	 1	0	0	#_2011      
 2012	 1	1	0	0	1	-1	-1	200	 28	 59	105	 8	 0	0	0	#_2012      
 1990	10	2	0	0	1	-1	-1	200	 12	103	 72	13	 0	0	0	#_19902     
 1991	10	2	0	0	1	-1	-1	200	  0	 25	175	 0	 0	0	0	#_19912     
 1992	10	2	0	0	1	-1	-1	200	  0	  5	186	 9	 0	0	0	#_19922     
 1993	10	2	0	0	1	-1	-1	200	  2	  9	110	79	 0	0	0	#_19932     
 1994	10	2	0	0	1	-1	-1	200	  4	 47	132	14	 3	0	0	#_19942     
 1995	10	2	0	0	1	-1	-1	200	  2	 12	180	 6	 0	0	0	#_19952     
 1996	10	2	0	0	1	-1	-1	200	  8	  3	165	24	 0	0	0	#_19962     
 1997	10	2	0	0	1	-1	-1	200	  2	129	 52	17	 0	0	0	#_19972     
 1998	10	2	0	0	1	-1	-1	200	  0	  6	194	 0	 0	0	0	#_19982     
 1999	10	2	0	0	1	-1	-1	200	  0	  6	167	27	 0	0	0	#_19992     
 2000	10	2	0	0	1	-1	-1	200	  4	 11	168	17	 0	0	0	#_20002     
 2001	10	2	0	0	1	-1	-1	200	  3	 96	 99	 2	 0	0	0	#_20012     
 2002	10	2	0	0	1	-1	-1	200	  0	 14	186	 0	 0	0	0	#_20022     
 2003	10	2	0	0	1	-1	-1	200	  7	 17	171	 5	 0	0	0	#_20032     
 2004	10	2	0	0	1	-1	-1	200	  9	161	 29	 1	 0	0	0	#_20042     
 2005	10	2	0	0	1	-1	-1	200	  0	 22	178	 0	 0	0	0	#_20052     
 2006	10	2	0	0	1	-1	-1	200	  5	 10	181	 4	 0	0	0	#_20062     
 2007	10	2	0	0	1	-1	-1	200	  7	 93	 94	 6	 0	0	0	#_20072     
 2008	10	2	0	0	1	-1	-1	200	  0	 11	189	 0	 0	0	0	#_20082     
 2009	10	2	0	0	1	-1	-1	200	  6	 11	158	25	 0	0	0	#_20092     
 2010	10	2	0	0	1	-1	-1	200	  7	125	 58	10	 0	0	0	#_20102     
 2011	10	2	0	0	1	-1	-1	200	  1	 12	187	 0	 0	0	0	#_20112     
 2012	10	2	0	0	1	-1	-1	200	  1	 17	164	18	 0	0	0	#_20122     
 1985	 4	3	0	0	1	-1	-1	200	  0	 12	170	18	 0	0	0	#_19851     
 1986	 4	3	0	0	1	-1	-1	200	  0	  4	172	24	 0	0	0	#_19861     
 1987	 4	3	0	0	1	-1	-1	200	  0	  5	153	42	 0	0	0	#_19871     
 1988	 4	3	0	0	1	-1	-1	200	  0	 12	105	81	 2	0	0	#_19881     
 1989	 4	3	0	0	1	-1	-1	200	  1	  9	173	15	 2	0	0	#_19891     
 1990	 4	3	0	0	1	-1	-1	200	  9	 27	138	26	 0	0	0	#_19901     
 1991	 4	3	0	0	1	-1	-1	200	  6	106	 80	 8	 0	0	0	#_19911     
 1992	 4	3	0	0	1	-1	-1	200	  0	 10	188	 2	 0	0	0	#_19921     
 1993	 4	3	0	0	1	-1	-1	200	  1	  2	164	33	 0	0	0	#_19931     
 1994	 4	3	0	0	1	-1	-1	200	  2	 25	118	55	 0	0	0	#_19941     
 1995	 4	3	0	0	1	-1	-1	200	  0	 24	168	 8	 0	0	0	#_19951     
 1996	 4	3	0	0	1	-1	-1	200	  1	  6	180	13	 0	0	0	#_19961     
 1997	 4	3	0	0	1	-1	-1	200	 12	 58	103	27	 0	0	0	#_19971     
 1998	 4	3	0	0	1	-1	-1	200	  1	 55	144	 0	 0	0	0	#_19981     
 1999	 4	3	0	0	1	-1	-1	200	  0	 12	183	 5	 0	0	0	#_19991     
 2000	 4	3	0	0	1	-1	-1	200	  1	  7	172	20	 0	0	0	#_20001     
 2001	 4	3	0	0	1	-1	-1	200	  8	 57	124	11	 0	0	0	#_20011     
 2002	 4	3	0	0	1	-1	-1	200	  2	 52	146	 0	 0	0	0	#_20021     
 2003	 4	3	0	0	1	-1	-1	200	  0	 18	181	 1	 0	0	0	#_20031     
 2004	 4	3	0	0	1	-1	-1	200	 17	105	 71	 7	 0	0	0	#_20041     
 2005	 4	3	0	0	1	-1	-1	200	  4	112	 84	 0	 0	0	0	#_20051     
 2006	 4	3	0	0	1	-1	-1	200	  2	 22	175	 1	 0	0	0	#_20061     
 2007	 4	3	0	0	1	-1	-1	200	  7	 49	133	11	 0	0	0	#_20071     
 2008	 4	3	0	0	1	-1	-1	200	  0	 39	158	 3	 0	0	0	#_20081     
 2009	 4	3	0	0	1	-1	-1	200	  1	  2	192	 5	 0	0	0	#_20091     
 2010	 4	3	0	0	1	-1	-1	200	 15	 76	 81	28	 0	0	0	#_20101     
 2011	 4	3	0	0	1	-1	-1	200	  1	 56	141	 2	 0	0	0	#_20111     
 2012	 4	3	0	0	1	-1	-1	200	  2	 15	179	 4	 0	0	0	#_20121     
-9999	 0	0	0	0	0	 0	 0	  0	  0	  0	  0	 0	 0	0	0	#_terminator
#
#_MeanSize_at_Age_obs
0 #_use_MeanSize_at_Age_obs
0 #_N_environ_variables
0 #_N_sizefreq_methods
0 #_do_tags
0 #_morphcomp_data
0 #_use_selectivity_priors
#
999