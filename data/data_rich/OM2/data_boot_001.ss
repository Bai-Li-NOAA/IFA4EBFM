#V3.30.19.01;_safe;_compile_date:_Apr 15 2022;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Mon Aug 01 09:36:34 2022
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1659360994 first rand#: 0.298148
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
-999 1 1 328084 0.05
1985 1 1 182662 0.05
1986 1 1 157262 0.05
1987 1 1 84985.9 0.05
1988 1 1 27338.2 0.05
1989 1 1 52724.6 0.05
1990 1 1 63557.7 0.05
1991 1 1 74092 0.05
1992 1 1 143328 0.05
1993 1 1 185858 0.05
1994 1 1 90759.4 0.05
1995 1 1 50734.3 0.05
1996 1 1 130718 0.05
1997 1 1 93294.7 0.05
1998 1 1 198953 0.05
1999 1 1 147876 0.05
2000 1 1 226572 0.05
2001 1 1 210955 0.05
2002 1 1 202373 0.05
2003 1 1 354548 0.05
2004 1 1 570646 0.05
2005 1 1 753069 0.05
2006 1 1 1.65612e+06 0.05
2007 1 1 833442 0.05
2008 1 1 436119 0.05
2009 1 1 506135 0.05
2010 1 1 451919 0.05
2011 1 1 417027 0.05
2012 1 1 616235 0.05
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
1990 10 2 751020 0.1 #_orig_obs: 677965 survey1
1991 10 2 3.87152e+06 0.1 #_orig_obs: 3.25479e+06 survey1
1992 10 2 3.39953e+06 0.1 #_orig_obs: 6.60786e+06 survey1
1993 10 2 1.81586e+06 0.1 #_orig_obs: 1.70994e+06 survey1
1994 10 2 1.71323e+06 0.1 #_orig_obs: 1.00865e+06 survey1
1995 10 2 1.27603e+06 0.1 #_orig_obs: 1.85517e+06 survey1
1996 10 2 658270 0.1 #_orig_obs: 1.83768e+06 survey1
1997 10 2 1.70875e+06 0.1 #_orig_obs: 1.42472e+06 survey1
1998 10 2 3.99334e+06 0.1 #_orig_obs: 1.42479e+07 survey1
1999 10 2 5.71642e+06 0.1 #_orig_obs: 6.43402e+06 survey1
2000 10 2 3.01273e+06 0.1 #_orig_obs: 2.39328e+06 survey1
2001 10 2 2.94893e+06 0.1 #_orig_obs: 1.40284e+06 survey1
2002 10 2 2.13176e+06 0.1 #_orig_obs: 1.56085e+06 survey1
2003 10 2 967324 0.1 #_orig_obs: 1.26877e+06 survey1
2004 10 2 1.84435e+06 0.1 #_orig_obs: 1.01914e+06 survey1
2005 10 2 7.88972e+06 0.1 #_orig_obs: 5.88313e+06 survey1
2006 10 2 6.78541e+06 0.1 #_orig_obs: 8.04381e+06 survey1
2007 10 2 5.09488e+06 0.1 #_orig_obs: 3.18229e+06 survey1
2008 10 2 4.30556e+06 0.1 #_orig_obs: 3.52945e+06 survey1
2009 10 2 1.90681e+06 0.1 #_orig_obs: 2.39792e+06 survey1
2010 10 2 2.29453e+06 0.1 #_orig_obs: 2.36562e+06 survey1
2011 10 2 7.1519e+06 0.1 #_orig_obs: 9.48175e+06 survey1
2012 10 2 5.07907e+06 0.1 #_orig_obs: 5.71121e+06 survey1
1985 4 3 750167 0.1 #_orig_obs: 1.61884e+06 survey2
1986 4 3 1.07078e+06 0.1 #_orig_obs: 1.46524e+06 survey2
1987 4 3 949297 0.1 #_orig_obs: 915472 survey2
1988 4 3 654495 0.1 #_orig_obs: 222973 survey2
1989 4 3 348726 0.1 #_orig_obs: 205454 survey2
1990 4 3 273040 0.1 #_orig_obs: 156818 survey2
1991 4 3 490828 0.1 #_orig_obs: 342837 survey2
1992 4 3 1.65451e+06 0.1 #_orig_obs: 2.04686e+06 survey2
1993 4 3 1.33652e+06 0.1 #_orig_obs: 1.5609e+06 survey2
1994 4 3 614593 0.1 #_orig_obs: 363365 survey2
1995 4 3 553734 0.1 #_orig_obs: 572808 survey2
1996 4 3 581359 0.1 #_orig_obs: 543406 survey2
1997 4 3 230562 0.1 #_orig_obs: 331752 survey2
1998 4 3 686869 0.1 #_orig_obs: 1.63648e+06 survey2
1999 4 3 1.63872e+06 0.1 #_orig_obs: 4.12363e+06 survey2
2000 4 3 2.57112e+06 0.1 #_orig_obs: 1.70526e+06 survey2
2001 4 3 1.14453e+06 0.1 #_orig_obs: 701033 survey2
2002 4 3 798088 0.1 #_orig_obs: 430437 survey2
2003 4 3 893913 0.1 #_orig_obs: 702960 survey2
2004 4 3 333527 0.1 #_orig_obs: 254914 survey2
2005 4 3 986432 0.1 #_orig_obs: 1.12405e+06 survey2
2006 4 3 3.5364e+06 0.1 #_orig_obs: 4.11092e+06 survey2
2007 4 3 1.88116e+06 0.1 #_orig_obs: 2.01791e+06 survey2
2008 4 3 1.48419e+06 0.1 #_orig_obs: 1.30826e+06 survey2
2009 4 3 1.38133e+06 0.1 #_orig_obs: 1.66939e+06 survey2
2010 4 3 456190 0.1 #_orig_obs: 469887 survey2
2011 4 3 1.12441e+06 0.1 #_orig_obs: 1.63082e+06 survey2
2012 4 3 2.15971e+06 0.1 #_orig_obs: 2.72819e+06 survey2
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
 1990 10 2 0 0 118  0 0 0 0 0 0 0 2 1 0 1 2 4 1 2 4 9 9 10 9 10 11 6 6 3 4 2 0 1 2 1 3 3 1 3 2 1 1 1 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1991 10 2 0 0 40  0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 3 2 0 3 3 8 2 4 4 1 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1992 10 2 0 0 122  0 0 0 0 0 0 0 0 0 0 0 0 0 0 9 4 2 8 6 13 7 5 9 11 9 10 6 8 4 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1993 10 2 0 0 119  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7 2 6 2 3 4 5 8 8 2 6 11 8 3 6 4 6 7 5 2 3 1 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1994 10 2 0 0 53  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 3 2 5 2 1 3 3 5 5 1 3 0 6 1 0 1 0 2 2 2 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1995 10 2 0 0 261  0 0 0 0 0 0 0 0 0 0 1 0 3 1 7 11 10 18 11 16 18 22 12 9 11 18 10 9 7 9 2 8 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1996 10 2 0 0 192  0 0 0 0 1 0 0 0 1 1 0 5 2 2 5 5 7 3 5 5 2 12 10 5 12 7 9 3 6 9 10 11 6 11 6 6 3 7 3 1 4 0 1 0 1 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1997 10 2 0 0 110  0 0 0 0 0 0 0 1 2 4 2 4 2 5 3 6 6 8 11 11 7 5 5 4 4 4 1 2 3 0 1 0 1 1 1 0 2 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1998 10 2 0 0 176  0 0 0 0 0 0 0 0 0 0 0 0 0 17 5 9 7 19 22 14 16 13 10 11 4 9 2 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 10 2 0 0 495  0 0 0 0 0 0 0 0 0 0 4 4 5 7 17 15 28 26 26 48 41 34 34 28 24 26 128 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 10 2 0 0 464  0 0 0 0 0 0 0 0 2 0 1 4 2 3 8 8 12 8 23 21 37 24 22 25 23 16 30 28 33 25 22 20 11 13 18 4 5 6 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 10 2 0 0 268  0 0 0 0 0 0 0 0 0 1 2 2 4 6 4 8 12 14 16 16 16 12 8 19 10 10 9 11 9 7 9 5 9 9 10 3 3 4 1 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 10 2 0 0 602  0 0 0 0 0 0 0 0 1 1 4 3 7 6 15 32 38 40 49 36 45 48 38 39 17 33 22 19 12 16 81 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 10 2 0 0 56  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 2 3 1 2 1 2 4 1 3 1 4 5 5 1 2 3 0 2 3 0 0 2 1 1 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 10 2 0 0 294  0 0 0 0 1 1 1 6 5 11 8 10 11 7 8 10 18 19 28 26 31 22 20 14 11 4 5 2 2 0 1 1 2 0 2 0 0 2 1 1 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0
 2005 10 2 0 0 740  0 0 0 0 0 0 3 2 4 3 2 11 19 21 29 46 58 67 78 64 90 65 62 34 24 17 12 8 21 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 10 2 0 0 335  0 0 0 0 0 0 0 0 0 0 0 0 0 11 15 10 12 21 25 31 28 24 25 19 18 17 22 14 8 8 7 6 4 2 2 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 10 2 0 0 553  0 0 0 0 0 2 1 1 2 0 2 3 6 9 12 20 29 31 27 43 35 57 43 25 27 38 20 28 20 8 11 12 10 9 8 3 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 10 2 0 0 344  0 0 0 0 0 0 0 0 0 0 0 0 0 17 8 14 17 20 31 34 29 38 14 13 20 12 11 12 8 10 7 5 3 3 3 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 10 2 0 0 149  0 0 0 0 0 0 0 0 0 3 2 3 0 3 3 4 2 2 5 10 8 5 10 7 6 7 9 9 6 6 4 7 3 7 6 2 0 1 4 3 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 10 2 0 0 172  0 0 0 0 0 1 0 0 2 0 6 3 2 2 6 10 11 16 15 14 14 9 14 9 10 1 8 1 1 3 1 1 2 0 4 0 0 1 3 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2011 10 2 0 0 889  0 0 0 0 0 1 0 0 2 4 7 12 12 27 30 50 67 64 86 79 79 79 55 58 46 29 24 22 13 15 8 6 5 1 1 1 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 10 2 0 0 464  0 0 0 0 0 0 0 0 0 6 6 2 13 18 7 12 17 32 23 32 36 44 32 25 33 16 15 22 8 21 44 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1985 4 3 0 0 1000  0 0 0 0 2 1 1 1 0 3 5 7 10 19 21 21 27 44 51 46 61 56 68 76 68 74 85 50 47 25 25 20 17 8 10 14 10 4 6 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1986 4 3 0 0 1000  0 0 0 0 0 0 0 0 0 0 8 8 14 16 22 33 30 52 49 59 53 66 62 78 71 52 59 55 51 44 30 20 8 14 13 8 8 3 3 1 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1987 4 3 0 0 1000  0 0 0 0 0 0 0 0 0 0 0 4 3 11 16 21 14 32 34 54 69 87 78 81 62 71 54 61 51 33 37 24 30 13 23 14 6 2 6 4 2 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1988 4 3 0 0 1000  0 0 0 0 1 1 1 0 0 3 1 1 7 8 3 15 7 15 29 45 47 47 52 48 57 58 64 54 52 54 51 52 46 30 40 28 21 13 13 8 11 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1989 4 3 0 0 1000  0 0 0 0 2 3 0 1 1 0 1 3 7 1 10 21 23 25 19 35 51 49 54 50 53 58 51 56 36 40 44 38 31 38 35 23 27 21 16 15 18 44 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1990 4 3 0 0 1000  0 0 0 8 10 8 3 1 2 1 3 5 8 13 17 26 34 34 30 38 37 32 33 47 47 38 46 31 42 44 30 30 32 41 39 26 24 24 19 23 21 18 14 4 2 4 2 3 3 2 1 0 0 0 0 0 0 0 0 0
 1991 4 3 0 0 1000  0 0 0 0 3 1 2 3 2 5 15 19 25 42 34 58 63 60 49 67 51 43 66 59 53 41 26 30 33 14 18 20 7 13 9 8 7 8 14 6 6 3 3 1 2 5 0 1 1 0 3 1 0 0 0 0 0 0 0 0
 1992 4 3 0 0 1000  0 0 0 0 0 0 0 2 2 3 4 4 7 13 20 33 37 46 68 50 76 80 84 82 63 60 67 50 34 32 24 16 12 7 5 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1993 4 3 0 0 1000  0 0 0 0 1 3 0 0 0 0 0 2 4 6 6 7 11 29 31 43 41 69 72 75 93 77 53 68 56 58 38 25 24 28 21 21 9 10 8 3 2 1 2 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1994 4 3 0 0 1000  0 0 0 0 0 1 1 0 0 1 4 4 7 7 19 20 21 27 24 19 34 43 39 53 69 53 38 55 38 54 48 57 45 43 43 30 27 21 24 8 7 4 5 3 1 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0
 1995 4 3 0 0 1000  0 0 0 0 0 1 0 1 0 2 1 7 4 12 12 29 18 36 53 43 57 61 73 59 77 62 55 52 27 34 31 38 25 12 17 13 13 13 8 20 6 10 1 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1996 4 3 0 0 1000  0 0 0 0 6 2 0 1 0 0 2 3 1 2 7 22 19 27 31 43 44 45 54 58 65 57 58 57 60 44 43 44 26 30 28 20 25 15 22 12 6 2 2 2 3 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1997 4 3 0 0 1000  0 0 3 5 11 10 6 1 2 2 9 20 16 25 36 40 33 38 23 31 34 26 26 35 36 30 31 41 35 46 47 34 30 42 34 31 23 23 16 10 13 17 6 5 7 2 2 2 3 1 1 0 0 0 0 0 0 0 0 0
 1998 4 3 0 0 1000  0 0 0 0 0 6 0 3 2 3 7 17 28 32 34 52 44 56 49 62 57 71 66 82 65 52 42 37 25 15 15 16 10 9 6 2 6 3 7 5 0 6 1 3 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 4 3 0 0 1000  0 0 0 0 0 2 0 0 0 4 5 7 11 11 20 20 43 49 51 63 68 74 70 79 71 69 61 57 43 32 24 18 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 4 3 0 0 1000  0 0 0 0 0 0 0 0 0 0 6 3 4 3 13 12 18 37 56 48 60 62 79 75 84 64 67 48 58 39 33 26 22 21 13 8 41 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 4 3 0 0 1000  0 0 0 1 2 2 2 0 0 2 2 4 5 8 12 10 19 22 31 17 30 40 43 42 48 59 70 70 54 69 53 39 50 47 29 22 20 11 18 16 6 8 6 2 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 4 3 0 0 1000  0 0 0 0 0 0 0 1 1 3 6 5 14 19 25 13 39 28 37 47 50 54 58 47 65 54 46 50 44 34 31 22 26 30 23 32 18 15 15 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 4 3 0 0 1000  0 0 0 0 1 1 0 0 0 0 0 4 9 5 11 13 34 30 42 52 47 57 69 90 74 59 70 46 56 38 39 20 19 19 12 15 12 10 9 9 6 6 5 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 4 3 0 0 1000  0 0 6 12 22 22 12 10 6 4 10 18 20 26 40 32 38 37 25 37 24 18 30 36 36 40 44 34 32 28 32 33 37 24 18 27 20 19 11 18 11 17 10 7 4 2 1 6 3 0 0 0 1 0 0 0 0 0 0 0
 2005 4 3 0 0 1000  0 0 0 0 1 1 3 3 5 13 31 35 46 44 80 86 72 70 58 57 47 41 52 42 29 26 35 19 28 9 14 7 3 4 7 3 2 4 6 0 2 5 0 1 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 4 3 0 0 1000  0 0 0 0 0 0 0 0 1 1 5 9 14 13 18 34 36 42 56 49 63 80 93 86 72 81 66 61 39 24 13 20 11 4 4 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 4 3 0 0 1000  0 0 0 0 2 0 1 1 1 2 8 9 8 17 23 22 30 32 41 54 57 65 68 76 74 85 58 58 47 33 22 20 20 24 7 9 10 7 1 1 4 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 4 3 0 0 1000  0 0 0 0 0 1 1 0 1 1 3 9 8 15 16 30 27 38 58 42 64 56 79 71 70 56 65 55 52 33 36 24 18 13 14 6 38 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 4 3 0 0 1000  0 0 0 2 2 2 0 0 0 1 0 1 3 6 12 16 26 26 45 62 53 65 80 71 76 75 73 53 49 42 31 20 26 13 17 12 8 9 5 4 5 2 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 4 3 0 0 1000  0 0 0 5 10 8 1 1 2 4 6 12 18 27 29 34 43 36 44 30 24 31 29 34 44 43 39 47 45 43 36 33 35 36 29 24 22 15 14 16 14 8 3 8 6 4 3 3 2 0 0 0 0 0 0 0 0 0 0 0
 2011 4 3 0 0 1000  0 0 0 0 6 4 4 2 4 4 6 19 21 29 40 40 49 67 54 46 48 62 74 77 59 69 43 30 34 15 17 10 7 13 7 5 5 7 4 3 6 1 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 4 3 0 0 1000  0 0 0 0 0 1 3 2 2 3 1 8 12 13 23 30 33 31 50 54 65 84 77 80 76 65 81 49 40 33 28 7 15 9 8 5 0 4 4 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
1985  1 1  0 0 1 -1 -1 852  140 319 362 29 1 1 0
1986  1 1  0 0 1 -1 -1 583  15 259 283 24 2 0 0
1987  1 1  0 0 1 -1 -1 762  52 97 532 73 6 2 0
1988  1 1  0 0 1 -1 -1 737  47 203 307 158 21 1 0
1989  1 1  0 0 1 -1 -1 692  154 129 301 85 20 2 1
1990  1 1  0 0 1 -1 -1 684  413 195 53 17 6 0 0
1991  1 1  0 0 1 -1 -1 777  106 525 142 2 1 0 1
1992  1 1  0 0 1 -1 -1 568  18 138 400 12 0 0 0
1993  1 1  0 0 1 -1 -1 548  65 67 300 113 3 0 0
1994  1 1  0 0 1 -1 -1 526  48 282 119 49 28 0 0
1995  1 1  0 0 1 -1 -1 500  8 162 302 15 7 6 0
1996  1 1  0 0 1 -1 -1 463  153 41 214 51 4 0 0
1997  1 1  0 0 1 -1 -1 454  214 201 22 10 6 1 0
1998  1 1  0 0 1 -1 -1 459  83 257 118 1 0 0 0
1999  1 1  0 0 1 -1 -1 428  9 148 256 15 0 0 0
2000  1 1  0 0 1 -1 -1 366  24 49 247 46 0 0 0
2001  1 1  0 0 1 -1 -1 501  124 181 100 86 10 0 0
2002  1 1  0 0 1 -1 -1 439  12 243 159 13 11 1 0
2003  1 1  0 0 1 -1 -1 402  102 24 251 22 0 3 0
2004  1 1  0 0 1 -1 -1 459  333 110 8 7 1 0 0
2005  1 1  0 0 1 -1 -1 394  53 306 35 0 0 0 0
2006  1 1  0 0 1 -1 -1 421  33 120 266 2 0 0 0
2007  1 1  0 0 1 -1 -1 532  69 191 221 51 0 0 0
2008  1 1  0 0 1 -1 -1 445  12 192 207 28 6 0 0
2009  1 1  0 0 1 -1 -1 402  92 45 234 28 3 0 0
2010  1 1  0 0 1 -1 -1 442  213 191 18 18 2 0 0
2011  1 1  0 0 1 -1 -1 434  82 251 98 2 1 0 0
2012  1 1  0 0 1 -1 -1 370  32 133 195 10 0 0 0
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

