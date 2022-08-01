#V3.30.19.01;_safe;_compile_date:_Apr 15 2022;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Mon Aug 01 11:24:29 2022
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1659367469 first rand#: 0.253592
#V3.30.19.01;_safe;_compile_date:_Apr 15 2022;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
1985 #_StartYr
2012 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1.00001 #_spawn_month
-1 #_Ngenders: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
7 #_Nages=accumulator age, first age is always age 0
1 #_Nareas
3 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 -1 1 1 0 fleet1  # 1
 3 1 1 2 0 survey1  # 2
 3 1 1 2 0 survey2  # 3
#Bycatch_fleet_input_goes_next
#a:  fleet index
#b:  1=include dead bycatch in total dead catch for F0.1 and MSY optimizations and forecast ABC; 2=omit from total catch for these purposes (but still include the mortality)
#c:  1=Fmult scales with other fleets; 2=bycatch F constant at input value; 3=bycatch F from range of years
#d:  F or first year of range
#e:  last year of range
#f:  not used
# a   b   c   d   e   f 
#_catch_biomass(mtons):_columns_are_fisheries,year,season
#_catch:_columns_are_year,season,fleet,catch,catch_se
#_Catch data: yr, seas, fleet, catch, catch_se
-999 1 1 646205 0.05
1985 1 1 199834 0.05
1986 1 1 162225 0.05
1987 1 1 87948.9 0.05
1988 1 1 24932.3 0.05
1989 1 1 50023.3 0.05
1990 1 1 63635.6 0.05
1991 1 1 80421.7 0.05
1992 1 1 131816 0.05
1993 1 1 197865 0.05
1994 1 1 95821.3 0.05
1995 1 1 47747.9 0.05
1996 1 1 118275 0.05
1997 1 1 97703.9 0.05
1998 1 1 189221 0.05
1999 1 1 154562 0.05
2000 1 1 239891 0.05
2001 1 1 209326 0.05
2002 1 1 208592 0.05
2003 1 1 323749 0.05
2004 1 1 568079 0.05
2005 1 1 798980 0.05
2006 1 1 1.61469e+06 0.05
2007 1 1 800636 0.05
2008 1 1 467232 0.05
2009 1 1 498970 0.05
2010 1 1 476986 0.05
2011 1 1 447040 0.05
2012 1 1 674236 0.05
-9999 0 0 0 0
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet Units Errtype SD_Report
1 1 0 0 # fleet1
2 0 0 0 # survey1
3 0 0 0 # survey2
#_year month index obs err
1990 10 2 1.98962e+06 0.1 #_orig_obs: 677965 survey1
1991 10 2 2.62394e+06 0.1 #_orig_obs: 3.25479e+06 survey1
1992 10 2 1.89565e+06 0.1 #_orig_obs: 6.60786e+06 survey1
1993 10 2 2.04944e+06 0.1 #_orig_obs: 1.70994e+06 survey1
1994 10 2 1.61042e+06 0.1 #_orig_obs: 1.00865e+06 survey1
1995 10 2 1.39872e+06 0.1 #_orig_obs: 1.85517e+06 survey1
1996 10 2 1.42861e+06 0.1 #_orig_obs: 1.83768e+06 survey1
1997 10 2 2.96337e+06 0.1 #_orig_obs: 1.42472e+06 survey1
1998 10 2 4.72286e+06 0.1 #_orig_obs: 1.42479e+07 survey1
1999 10 2 3.46911e+06 0.1 #_orig_obs: 6.43402e+06 survey1
2000 10 2 2.7792e+06 0.1 #_orig_obs: 2.39328e+06 survey1
2001 10 2 3.10841e+06 0.1 #_orig_obs: 1.40284e+06 survey1
2002 10 2 2.16953e+06 0.1 #_orig_obs: 1.56085e+06 survey1
2003 10 2 2.17411e+06 0.1 #_orig_obs: 1.26877e+06 survey1
2004 10 2 4.26904e+06 0.1 #_orig_obs: 1.01914e+06 survey1
2005 10 2 5.74679e+06 0.1 #_orig_obs: 5.88313e+06 survey1
2006 10 2 4.83238e+06 0.1 #_orig_obs: 8.04381e+06 survey1
2007 10 2 3.83675e+06 0.1 #_orig_obs: 3.18229e+06 survey1
2008 10 2 3.60348e+06 0.1 #_orig_obs: 3.52945e+06 survey1
2009 10 2 2.84377e+06 0.1 #_orig_obs: 2.39792e+06 survey1
2010 10 2 3.86562e+06 0.1 #_orig_obs: 2.36562e+06 survey1
2011 10 2 5.30154e+06 0.1 #_orig_obs: 9.48175e+06 survey1
2012 10 2 4.43958e+06 0.1 #_orig_obs: 5.71121e+06 survey1
1985 4 3 741872 0.1 #_orig_obs: 1.61884e+06 survey2
1986 4 3 625236 0.1 #_orig_obs: 1.46524e+06 survey2
1987 4 3 590150 0.1 #_orig_obs: 915472 survey2
1988 4 3 534480 0.1 #_orig_obs: 222973 survey2
1989 4 3 428812 0.1 #_orig_obs: 205454 survey2
1990 4 3 714317 0.1 #_orig_obs: 156818 survey2
1991 4 3 685820 0.1 #_orig_obs: 342837 survey2
1992 4 3 619943 0.1 #_orig_obs: 2.04686e+06 survey2
1993 4 3 713389 0.1 #_orig_obs: 1.5609e+06 survey2
1994 4 3 603871 0.1 #_orig_obs: 363365 survey2
1995 4 3 387208 0.1 #_orig_obs: 572808 survey2
1996 4 3 524062 0.1 #_orig_obs: 543406 survey2
1997 4 3 996627 0.1 #_orig_obs: 331752 survey2
1998 4 3 1.08091e+06 0.1 #_orig_obs: 1.63648e+06 survey2
1999 4 3 1.0619e+06 0.1 #_orig_obs: 4.12363e+06 survey2
2000 4 3 1.14107e+06 0.1 #_orig_obs: 1.70526e+06 survey2
2001 4 3 968868 0.1 #_orig_obs: 701033 survey2
2002 4 3 665538 0.1 #_orig_obs: 430437 survey2
2003 4 3 859675 0.1 #_orig_obs: 702960 survey2
2004 4 3 1.60734e+06 0.1 #_orig_obs: 254914 survey2
2005 4 3 1.53706e+06 0.1 #_orig_obs: 1.12405e+06 survey2
2006 4 3 1.48157e+06 0.1 #_orig_obs: 4.11092e+06 survey2
2007 4 3 1.14786e+06 0.1 #_orig_obs: 2.01791e+06 survey2
2008 4 3 1.13298e+06 0.1 #_orig_obs: 1.30826e+06 survey2
2009 4 3 871966 0.1 #_orig_obs: 1.66939e+06 survey2
2010 4 3 1.22494e+06 0.1 #_orig_obs: 469887 survey2
2011 4 3 1.32732e+06 0.1 #_orig_obs: 1.63082e+06 survey2
2012 4 3 1.57606e+06 0.1 #_orig_obs: 2.72819e+06 survey2
-9999 1 1 1 1 # terminator for survey observations 
#
0 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal; -3 for trunc normal with CV
# note: only enter units and errtype for fleets with discard 
# note: discard data is the total for an entire season, so input of month here must be to a month in that season
#_Fleet units errtype
# -9999 0 0 0.0 0.0 # terminator for discard data 
#
0 #_use meanbodysize_data (0/1)
#_COND_0 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
#  -9999 0 0 0 0 0 0 # terminator for mean body size data 
#
# set up population length bin structure (note - irrelevant if not using size data and using empirical wtatage
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
1 # binwidth for population size comp 
1 # minimum size in the population (lower edge of first bin and size at age 0.00) 
60 # maximum size in the population (lower edge of last bin) 
1 # use length composition data (0/1)
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_ParmSelect:  parm number for dirichlet
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
0 1e-05 0 0 0 0 1 #_fleet:1_fleet1
0 1e-05 0 0 0 0 1 #_fleet:2_survey1
0 1e-05 0 0 0 0 1 #_fleet:3_survey2
60 #_N_LengthBins
 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part Nsamp datavector(female-male)
 1990 10 2 0 0 2000  0 0 0 8 14 41 69 108 130 174 209 196 151 134 81 55 54 37 43 35 39 48 42 35 28 31 18 28 17 21 18 27 13 20 17 15 13 7 5 7 3 4 3 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1991 10 2 0 0 2000  0 0 0 0 18 18 31 68 89 96 122 138 114 102 102 83 62 87 93 102 89 78 98 55 59 60 37 25 19 23 19 14 13 16 8 14 7 10 5 11 5 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1992 10 2 0 0 2000  0 0 0 0 0 0 0 0 0 0 0 0 344 50 55 63 59 78 94 97 121 104 118 113 91 95 77 88 68 70 41 45 26 19 23 61 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1993 10 2 0 0 2000  0 0 0 7 5 16 33 55 83 96 144 129 87 85 58 38 49 33 51 58 59 51 62 60 80 81 74 66 64 61 57 57 48 32 37 26 17 19 5 9 4 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1994 10 2 0 0 2000  0 0 0 2 8 12 37 68 94 128 123 130 106 75 67 44 70 57 81 77 62 78 78 68 51 51 42 47 42 41 37 31 40 30 24 31 17 16 6 12 7 3 4 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1995 10 2 0 0 2000  0 0 0 0 9 15 16 27 33 62 63 48 64 69 54 70 63 84 111 108 106 108 106 78 89 71 75 62 60 49 43 46 41 33 34 20 83 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1996 10 2 0 0 2000  0 0 4 2 8 22 62 85 105 153 142 147 121 94 69 53 43 34 48 35 52 49 45 49 61 62 61 46 51 39 37 45 34 19 32 14 18 19 14 11 5 7 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1997 10 2 0 0 2000  0 0 0 7 20 36 77 93 135 198 201 182 158 121 91 71 51 44 55 44 63 41 53 25 26 19 25 13 16 20 16 14 14 14 9 9 10 5 7 5 3 2 3 1 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1998 10 2 0 0 2000  0 0 0 5 5 22 41 61 111 121 147 125 114 119 96 60 66 71 86 106 84 83 110 74 47 47 29 28 27 30 13 15 7 9 12 5 3 4 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 10 2 0 0 2000  0 0 0 0 0 24 25 49 67 87 92 76 78 67 77 66 68 75 101 90 103 104 92 86 83 86 72 332 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 10 2 0 0 2000  0 0 0 0 13 20 28 51 64 97 111 106 98 53 58 47 49 45 56 63 64 77 73 71 92 87 65 77 78 75 51 45 41 33 37 26 16 9 7 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 10 2 0 0 2000  0 0 0 5 11 18 39 67 119 130 140 155 125 96 79 53 47 52 54 60 63 60 52 50 54 58 33 43 47 39 47 38 29 32 28 23 9 11 15 6 0 5 3 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 10 2 0 0 2000  0 0 0 0 0 0 23 23 29 44 57 67 61 60 48 77 79 102 102 107 113 116 112 97 86 79 76 44 47 54 42 255 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 10 2 0 0 2000  0 0 2 2 9 25 51 69 92 137 149 136 125 102 70 43 39 47 39 45 57 54 50 61 56 57 54 51 54 55 38 34 33 24 26 22 23 19 12 14 10 3 6 4 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 10 2 0 0 2000  0 0 0 9 11 31 76 110 159 206 224 204 196 151 89 52 37 36 27 34 41 32 45 29 23 15 14 14 14 10 15 15 10 6 14 8 10 9 7 3 5 4 3 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2005 10 2 0 0 2000  0 0 0 0 19 26 35 65 88 110 125 124 128 93 79 86 93 98 98 112 100 82 84 82 54 50 26 22 19 102 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 10 2 0 0 2000  0 0 0 0 12 18 29 66 88 108 130 115 98 72 70 68 73 77 96 91 87 102 84 87 61 54 66 38 52 40 26 27 13 12 7 8 8 4 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 10 2 0 0 2000  0 0 0 1 6 18 39 70 116 136 157 136 139 103 73 55 49 50 70 62 76 70 74 45 64 46 52 32 57 46 29 29 20 20 18 13 11 2 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 10 2 0 0 2000  0 0 0 0 9 5 20 36 39 74 81 66 86 77 74 76 85 93 111 101 105 111 89 90 78 71 57 53 52 48 31 40 24 28 23 19 10 10 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 10 2 0 0 2000  0 0 0 3 11 24 45 53 116 126 140 124 142 96 68 44 53 51 44 47 48 59 64 79 45 57 54 62 53 51 52 32 42 26 20 17 12 14 8 8 2 5 0 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 10 2 0 0 2000  0 0 0 9 12 32 45 96 123 195 151 196 143 122 91 61 66 57 54 75 49 55 53 35 37 29 26 21 25 23 16 22 11 17 13 8 6 8 3 4 7 0 2 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2011 10 2 0 0 2000  0 0 0 0 18 23 39 59 98 142 122 132 109 103 98 70 80 90 77 95 103 74 66 70 53 49 44 31 26 25 22 15 7 7 11 13 6 5 3 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 10 2 0 0 2000  0 0 0 0 0 29 30 65 75 101 119 127 88 76 78 73 59 80 75 94 85 89 73 76 87 55 76 58 44 35 32 18 103 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1985 4 3 0 0 1000  0 0 0 0 206 117 83 29 9 14 18 17 32 35 38 28 50 31 30 34 27 20 23 25 16 16 15 16 12 14 9 6 7 7 3 4 2 3 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1986 4 3 0 0 1000  0 0 0 0 0 0 0 0 0 0 225 21 26 34 45 45 42 49 40 39 47 36 30 34 32 43 43 24 26 22 12 15 20 17 9 7 7 2 3 2 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1987 4 3 0 0 1000  0 0 0 0 0 0 0 0 0 0 0 273 14 11 20 33 12 18 32 27 39 44 27 37 41 39 44 66 27 38 27 24 25 18 16 15 10 8 2 1 5 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1988 4 3 0 0 1000  0 0 0 0 96 47 23 20 7 6 5 14 19 19 27 27 37 19 22 22 19 26 29 33 35 37 27 43 38 33 43 42 45 23 32 28 15 12 9 6 3 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1989 4 3 0 0 1000  0 0 0 87 82 69 55 24 5 5 4 10 9 17 17 29 23 26 19 19 21 17 22 17 19 28 30 30 32 29 38 34 29 19 32 32 18 17 11 10 11 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1990 4 3 0 0 1000  0 0 0 160 163 133 89 44 15 6 10 4 10 22 19 12 20 13 10 16 14 15 15 16 9 11 15 15 8 13 13 17 10 8 17 16 7 9 9 4 5 4 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1991 4 3 0 0 1000  0 0 0 0 203 85 47 32 27 7 15 25 25 49 42 49 37 53 36 22 25 17 20 10 10 7 17 19 17 10 15 9 5 6 9 10 11 12 3 4 4 2 3 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 1992 4 3 0 0 1000  0 0 0 0 0 0 0 198 7 11 17 28 32 36 47 36 39 45 56 42 45 37 27 43 36 34 24 20 23 17 23 17 9 10 5 36 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1993 4 3 0 0 1000  0 0 0 0 180 92 54 28 10 4 7 7 7 12 14 20 22 22 25 28 21 32 24 34 37 35 39 35 30 33 25 25 13 13 9 15 10 17 6 6 1 2 4 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1994 4 3 0 0 1000  0 0 0 0 185 71 51 30 13 6 11 15 14 26 24 25 24 27 14 28 25 24 12 21 25 25 28 24 24 27 24 26 26 24 18 23 14 13 13 2 7 1 5 0 3 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 1995 4 3 0 0 1000  0 0 0 0 0 119 32 14 7 12 14 17 17 36 43 39 41 41 38 32 39 38 30 27 33 24 29 34 28 23 26 21 22 22 20 23 15 13 11 4 4 3 5 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1996 4 3 0 0 1000  0 0 53 68 102 104 81 32 6 2 4 8 10 11 14 19 18 18 22 28 23 23 26 24 26 25 22 27 28 24 22 22 15 18 11 6 17 13 6 7 8 2 4 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1997 4 3 0 0 1000  0 0 63 114 154 176 96 32 16 10 2 12 18 26 20 13 19 11 16 16 13 5 7 6 5 16 10 14 16 8 16 8 9 6 11 7 3 7 4 3 3 2 2 4 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
 1998 4 3 0 0 1000  0 0 0 0 0 324 70 38 17 14 12 23 28 43 41 48 54 37 26 36 24 16 15 17 16 8 13 13 8 5 8 4 5 5 7 8 4 2 1 3 4 0 0 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 4 3 0 0 1000  0 0 0 0 0 178 42 20 12 7 12 26 32 30 52 50 42 45 37 48 31 43 39 36 31 31 31 22 24 12 13 10 44 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 4 3 0 0 1000  0 0 0 0 0 0 0 0 0 0 294 12 13 21 28 29 37 32 26 24 35 35 30 31 41 43 30 43 29 26 28 23 21 14 8 12 35 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 4 3 0 0 1000  0 0 0 101 111 109 59 29 13 10 4 7 19 18 16 25 27 23 28 16 18 16 28 14 25 25 28 29 34 29 29 22 13 14 17 11 8 6 8 3 1 5 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 4 3 0 0 1000  0 0 0 47 31 41 24 15 9 11 18 24 26 37 43 43 39 36 44 35 46 29 27 21 20 22 20 28 35 27 29 21 28 29 27 16 10 15 11 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 4 3 0 0 1000  0 0 31 78 92 90 67 31 7 4 3 4 9 15 19 15 22 24 20 24 28 34 31 31 38 25 33 14 29 24 25 19 12 11 21 12 16 6 9 10 4 3 6 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 4 3 0 0 1000  0 0 70 111 180 161 128 51 14 7 3 7 14 17 19 17 11 12 12 11 6 8 5 11 6 8 7 7 17 6 12 7 5 6 14 5 4 5 5 5 2 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2005 4 3 0 0 1000  0 0 0 0 186 104 57 30 14 20 20 29 31 51 53 55 45 44 30 37 25 20 18 13 11 8 15 12 8 8 8 3 9 10 5 5 6 4 2 1 0 0 1 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 4 3 0 0 1000  0 0 0 0 0 0 292 29 13 9 13 15 30 30 43 46 40 37 40 41 32 37 34 31 34 23 30 10 17 16 16 7 7 3 3 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 4 3 0 0 1000  0 0 0 98 105 132 78 30 16 12 9 7 21 27 28 28 23 32 20 33 33 26 28 23 28 25 18 15 18 16 16 9 14 6 5 5 2 5 2 1 5 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 4 3 0 0 1000  0 0 0 0 0 177 27 19 12 15 28 22 29 44 40 37 55 32 43 34 25 32 31 41 27 23 28 17 29 19 21 19 10 8 11 16 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 4 3 0 0 1000  0 0 0 115 118 100 68 28 8 5 2 8 9 15 19 18 23 25 25 26 29 36 28 34 25 24 23 26 27 17 20 19 17 12 12 12 7 3 3 7 2 2 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 4 3 0 0 1000  0 0 0 156 118 125 97 35 17 8 6 19 15 23 24 24 23 22 20 18 8 15 9 14 18 14 22 16 20 15 14 11 22 12 11 11 5 4 0 3 4 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2011 4 3 0 0 1000  0 0 0 0 207 108 83 26 22 12 8 14 22 47 33 46 35 33 34 28 32 22 19 19 16 15 14 9 15 8 8 11 6 7 8 9 3 4 8 6 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 4 3 0 0 1000  0 0 0 0 156 77 59 23 4 7 14 22 27 30 43 33 39 40 28 29 33 42 35 34 21 44 19 23 21 11 13 11 13 7 5 7 10 4 4 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
#
7 #_N_age_bins
 1 2 3 4 5 6 7
1 #_N_ageerror_definitions
 -1 -1 -1 -1 -1 -1 -1 -1
 0 0 0 0 0 0 0 0
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_ParmSelect:  parm number for dirichlet
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
0 1e-07 1 0 0 0 0.001 #_fleet:1_fleet1
0 1e-07 1 0 0 0 0.001 #_fleet:2_survey1
0 1e-07 1 0 0 0 0.001 #_fleet:3_survey2
1 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
1985  1 1  0 0 1 -1 -1 852  157 313 333 45 3 1 0
1986  1 1  0 0 1 -1 -1 583  44 224 255 56 4 0 0
1987  1 1  0 0 1 -1 -1 762  68 135 450 98 11 0 0
1988  1 1  0 0 1 -1 -1 737  83 246 234 158 13 3 0
1989  1 1  0 0 1 -1 -1 692  132 198 286 49 23 3 1
1990  1 1  0 0 1 -1 -1 684  269 191 167 45 12 0 0
1991  1 1  0 0 1 -1 -1 777  142 414 184 29 6 2 0
1992  1 1  0 0 1 -1 -1 568  35 176 329 28 0 0 0
1993  1 1  0 0 1 -1 -1 548  87 88 286 80 5 0 2
1994  1 1  0 0 1 -1 -1 526  117 194 125 72 18 0 0
1995  1 1  0 0 1 -1 -1 500  39 191 228 33 8 1 0
1996  1 1  0 0 1 -1 -1 463  108 74 228 51 0 2 0
1997  1 1  0 0 1 -1 -1 454  180 162 68 31 10 0 3
1998  1 1  0 0 1 -1 -1 459  95 230 118 9 7 0 0
1999  1 1  0 0 1 -1 -1 428  40 170 201 16 1 0 0
2000  1 1  0 0 1 -1 -1 366  48 76 182 57 3 0 0
2001  1 1  0 0 1 -1 -1 501  111 145 150 83 12 0 0
2002  1 1  0 0 1 -1 -1 439  34 216 149 29 9 2 0
2003  1 1  0 0 1 -1 -1 402  80 56 229 29 3 5 0
2004  1 1  0 0 1 -1 -1 459  231 134 64 29 1 0 0
2005  1 1  0 0 1 -1 -1 394  67 242 78 7 0 0 0
2006  1 1  0 0 1 -1 -1 421  63 140 210 8 0 0 0
2007  1 1  0 0 1 -1 -1 532  100 183 199 49 1 0 0
2008  1 1  0 0 1 -1 -1 445  27 210 171 32 5 0 0
2009  1 1  0 0 1 -1 -1 402  64 64 238 34 1 1 0
2010  1 1  0 0 1 -1 -1 442  150 176 72 36 8 0 0
2011  1 1  0 0 1 -1 -1 434  80 207 137 5 5 0 0
2012  1 1  0 0 1 -1 -1 370  51 144 170 5 0 0 0
1990  10 2  0 0 1 -1 -1 2000  1333 337 152 80 26 47 25
1991  10 2  0 0 1 -1 -1 2000  800 883 182 48 37 14 36
1992  10 2  0 0 1 -1 -1 2000  395 830 606 96 26 15 32
1993  10 2  0 0 1 -1 -1 2000  811 335 448 319 87 0 0
1994  10 2  0 0 1 -1 -1 2000  802 659 153 203 145 38 0
1995  10 2  0 0 1 -1 -1 2000  430 801 452 103 106 76 32
1996  10 2  0 0 1 -1 -1 2000  1049 257 379 315 0 0 0
1997  10 2  0 0 1 -1 -1 2000  1309 449 75 167 0 0 0
1998  10 2  0 0 1 -1 -1 2000  926 791 208 75 0 0 0
1999  10 2  0 0 1 -1 -1 2000  564 784 532 80 14 16 10
2000  10 2  0 0 1 -1 -1 2000  674 455 533 270 45 23 0
2001  10 2  0 0 1 -1 -1 2000  901 504 255 212 103 25 0
2002  10 2  0 0 1 -1 -1 2000  331 998 343 149 101 61 17
2003  10 2  0 0 1 -1 -1 2000  970 272 484 134 48 50 42
2004  10 2  0 0 1 -1 -1 2000  1509 319 41 131 0 0 0
2005  10 2  0 0 1 -1 -1 2000  806 1024 109 7 26 28 0
2006  10 2  0 0 1 -1 -1 2000  746 741 434 79 0 0 0
2007  10 2  0 0 1 -1 -1 2000  944 578 298 146 34 0 0
2008  10 2  0 0 1 -1 -1 2000  424 975 382 130 67 22 0
2009  10 2  0 0 1 -1 -1 2000  966 345 459 137 41 52 0
2010  10 2  0 0 1 -1 -1 2000  1224 477 106 108 85 0 0
2011  10 2  0 0 1 -1 -1 2000  911 787 199 33 40 14 16
2012  10 2  0 0 1 -1 -1 2000  739 722 405 94 40 0 0
1985  4 3  0 0 1 -1 -1 1000  441 273 183 57 46 0 0
1986  4 3  0 0 1 -1 -1 1000  164 387 266 123 34 19 7
1987  4 3  0 0 1 -1 -1 1000  249 130 310 200 80 18 13
1988  4 3  0 0 1 -1 -1 1000  191 204 140 247 141 58 19
1989  4 3  0 0 1 -1 -1 1000  333 136 206 87 135 62 41
1990  4 3  0 0 1 -1 -1 1000  616 149 56 64 34 51 30
1991  4 3  0 0 1 -1 -1 1000  391 396 213 0 0 0 0
1992  4 3  0 0 1 -1 -1 1000  180 326 354 75 25 17 23
1993  4 3  0 0 1 -1 -1 1000  353 116 231 228 44 11 17
1994  4 3  0 0 1 -1 -1 1000  335 258 78 174 117 38 0
1995  4 3  0 0 1 -1 -1 1000  195 320 231 66 91 97 0
1996  4 3  0 0 1 -1 -1 1000  434 114 200 125 35 49 43
1997  4 3  0 0 1 -1 -1 1000  613 180 207 0 0 0 0
1998  4 3  0 0 1 -1 -1 1000  444 346 110 24 76 0 0
1999  4 3  0 0 1 -1 -1 1000  242 330 308 72 48 0 0
2000  4 3  0 0 1 -1 -1 1000  274 189 251 219 42 25 0
2001  4 3  0 0 1 -1 -1 1000  397 187 129 158 129 0 0
2002  4 3  0 0 1 -1 -1 1000  172 382 169 76 119 61 21
2003  4 3  0 0 1 -1 -1 1000  399 94 265 116 39 44 43
2004  4 3  0 0 1 -1 -1 1000  680 150 29 84 20 9 28
2005  4 3  0 0 1 -1 -1 1000  406 424 101 69 0 0 0
2006  4 3  0 0 1 -1 -1 1000  345 272 306 38 5 18 16
2007  4 3  0 0 1 -1 -1 1000  431 236 178 122 33 0 0
2008  4 3  0 0 1 -1 -1 1000  215 392 206 102 85 0 0
2009  4 3  0 0 1 -1 -1 1000  390 143 260 126 42 39 0
2010  4 3  0 0 1 -1 -1 1000  557 205 61 93 43 41 0
2011  4 3  0 0 1 -1 -1 1000  414 363 133 27 63 0 0
2012  4 3  0 0 1 -1 -1 1000  327 288 238 147 0 0 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
0 #_Use_MeanSize-at-Age_obs (0/1)
#
0 #_N_environ_variables
# -2 in yr will subtract mean for that env_var; -1 will subtract mean and divide by stddev (e.g. Z-score)
#Yr Variable Value
#
0 # N sizefreq methods to read 
#
0 # do tags (0/1)
#
0 #    morphcomp data(0/1) 
#  Nobs, Nmorphs, mincomp
#  yr, seas, type, partition, Nsamp, datavector_by_Nmorphs
#
0  #  Do dataread for selectivity priors(0/1)
 # Yr, Seas, Fleet,  Age/Size,  Bin,  selex_prior,  prior_sd
 # feature not yet implemented
#
999

