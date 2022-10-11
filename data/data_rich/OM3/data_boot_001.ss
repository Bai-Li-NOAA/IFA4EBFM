#V3.30.19.01;_safe;_compile_date:_Apr 15 2022;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Tue Sep 13 11:16:51 2022
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1663082211 first rand#: 3.17042
#V3.30.19.01;_safe;_compile_date:_Apr 15 2022;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
1985 #_StartYr
2012 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
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
-999 1 1 125624 0.05
1985 1 1 196743 0.05
1986 1 1 175735 0.05
1987 1 1 97300.2 0.05
1988 1 1 27463.1 0.05
1989 1 1 54918.9 0.05
1990 1 1 65007.8 0.05
1991 1 1 74646.8 0.05
1992 1 1 131045 0.05
1993 1 1 218375 0.05
1994 1 1 87439.9 0.05
1995 1 1 47763.1 0.05
1996 1 1 124217 0.05
1997 1 1 96075.5 0.05
1998 1 1 182098 0.05
1999 1 1 155352 0.05
2000 1 1 252573 0.05
2001 1 1 229348 0.05
2002 1 1 208239 0.05
2003 1 1 319355 0.05
2004 1 1 603962 0.05
2005 1 1 827928 0.05
2006 1 1 1.54637e+06 0.05
2007 1 1 912528 0.05
2008 1 1 425853 0.05
2009 1 1 511887 0.05
2010 1 1 489352 0.05
2011 1 1 414351 0.05
2012 1 1 712690 0.05
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
1990 10 2 3.30829e+06 0.1 #_orig_obs: 544208 survey1
1991 10 2 2.21428e+06 0.1 #_orig_obs: 4.00312e+06 survey1
1992 10 2 1.24419e+06 0.1 #_orig_obs: 6.60624e+06 survey1
1993 10 2 1.59946e+06 0.1 #_orig_obs: 1.88117e+06 survey1
1994 10 2 1.70614e+06 0.1 #_orig_obs: 974412 survey1
1995 10 2 844222 0.1 #_orig_obs: 1.73125e+06 survey1
1996 10 2 2.66304e+06 0.1 #_orig_obs: 1.52447e+06 survey1
1997 10 2 5.44501e+06 0.1 #_orig_obs: 1.3782e+06 survey1
1998 10 2 3.30897e+06 0.1 #_orig_obs: 9.34632e+06 survey1
1999 10 2 2.42046e+06 0.1 #_orig_obs: 5.73748e+06 survey1
2000 10 2 2.01579e+06 0.1 #_orig_obs: 2.69784e+06 survey1
2001 10 2 2.22914e+06 0.1 #_orig_obs: 1.23382e+06 survey1
2002 10 2 1.17875e+06 0.1 #_orig_obs: 1.9005e+06 survey1
2003 10 2 2.19023e+06 0.1 #_orig_obs: 1.35747e+06 survey1
2004 10 2 6.72951e+06 0.1 #_orig_obs: 1.07353e+06 survey1
2005 10 2 4.41453e+06 0.1 #_orig_obs: 7.94583e+06 survey1
2006 10 2 3.87739e+06 0.1 #_orig_obs: 7.1867e+06 survey1
2007 10 2 3.1468e+06 0.1 #_orig_obs: 3.7335e+06 survey1
2008 10 2 1.92929e+06 0.1 #_orig_obs: 5.09448e+06 survey1
2009 10 2 3.32224e+06 0.1 #_orig_obs: 2.00517e+06 survey1
2010 10 2 5.55767e+06 0.1 #_orig_obs: 2.27578e+06 survey1
2011 10 2 5.21522e+06 0.1 #_orig_obs: 7.49073e+06 survey1
2012 10 2 4.20929e+06 0.1 #_orig_obs: 4.65616e+06 survey1
1985 4 3 921425 0.1 #_orig_obs: 1.80339e+06 survey2
1986 4 3 377904 0.1 #_orig_obs: 1.56011e+06 survey2
1987 4 3 274329 0.1 #_orig_obs: 954308 survey2
1988 4 3 248538 0.1 #_orig_obs: 245537 survey2
1989 4 3 502072 0.1 #_orig_obs: 165382 survey2
1990 4 3 1.19734e+06 0.1 #_orig_obs: 140452 survey2
1991 4 3 857037 0.1 #_orig_obs: 527308 survey2
1992 4 3 467379 0.1 #_orig_obs: 1.70108e+06 survey2
1993 4 3 499614 0.1 #_orig_obs: 1.32148e+06 survey2
1994 4 3 540184 0.1 #_orig_obs: 375877 survey2
1995 4 3 308909 0.1 #_orig_obs: 528242 survey2
1996 4 3 1.22328e+06 0.1 #_orig_obs: 581896 survey2
1997 4 3 1.73088e+06 0.1 #_orig_obs: 407766 survey2
1998 4 3 1.13131e+06 0.1 #_orig_obs: 1.35658e+06 survey2
1999 4 3 719428 0.1 #_orig_obs: 4.33705e+06 survey2
2000 4 3 789639 0.1 #_orig_obs: 1.61686e+06 survey2
2001 4 3 1.03084e+06 0.1 #_orig_obs: 689461 survey2
2002 4 3 423313 0.1 #_orig_obs: 525909 survey2
2003 4 3 749025 0.1 #_orig_obs: 634479 survey2
2004 4 3 2.07549e+06 0.1 #_orig_obs: 201645 survey2
2005 4 3 1.8277e+06 0.1 #_orig_obs: 901519 survey2
2006 4 3 1.11835e+06 0.1 #_orig_obs: 3.70361e+06 survey2
2007 4 3 1.35273e+06 0.1 #_orig_obs: 2.11194e+06 survey2
2008 4 3 684951 0.1 #_orig_obs: 1.32172e+06 survey2
2009 4 3 1.17929e+06 0.1 #_orig_obs: 1.18608e+06 survey2
2010 4 3 1.83916e+06 0.1 #_orig_obs: 552500 survey2
2011 4 3 1.66517e+06 0.1 #_orig_obs: 1.49059e+06 survey2
2012 4 3 1.30862e+06 0.1 #_orig_obs: 3.04337e+06 survey2
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
0 # use length composition data (0/1)
# see manual for format of length composition data 
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
1985  1 1  0 0 1 -1 -1 800  140 250 343 57 7 3 0
1986  1 1  0 0 1 -1 -1 800  42 298 375 76 7 1 1
1987  1 1  0 0 1 -1 -1 800  54 105 514 102 17 8 0
1988  1 1  0 0 1 -1 -1 800  91 247 237 201 23 1 0
1989  1 1  0 0 1 -1 -1 800  195 196 330 48 31 0 0
1990  1 1  0 0 1 -1 -1 800  368 249 142 33 8 0 0
1991  1 1  0 0 1 -1 -1 800  114 507 163 13 1 1 1
1992  1 1  0 0 1 -1 -1 800  45 221 507 25 2 0 0
1993  1 1  0 0 1 -1 -1 800  135 135 405 121 4 0 0
1994  1 1  0 0 1 -1 -1 800  157 319 222 79 23 0 0
1995  1 1  0 0 1 -1 -1 800  67 314 390 16 9 4 0
1996  1 1  0 0 1 -1 -1 800  314 132 282 62 8 2 0
1997  1 1  0 0 1 -1 -1 800  273 385 108 29 5 0 0
1998  1 1  0 0 1 -1 -1 800  95 369 321 13 2 0 0
1999  1 1  0 0 1 -1 -1 800  64 218 446 71 1 0 0
2000  1 1  0 0 1 -1 -1 800  103 195 367 121 14 0 0
2001  1 1  0 0 1 -1 -1 800  149 239 299 87 25 1 0
2002  1 1  0 0 1 -1 -1 800  57 357 332 45 7 2 0
2003  1 1  0 0 1 -1 -1 800  208 101 431 53 7 0 0
2004  1 1  0 0 1 -1 -1 800  394 290 79 32 5 0 0
2005  1 1  0 0 1 -1 -1 800  134 521 140 5 0 0 0
2006  1 1  0 0 1 -1 -1 800  110 264 417 9 0 0 0
2007  1 1  0 0 1 -1 -1 800  178 293 285 40 4 0 0
2008  1 1  0 0 1 -1 -1 800  82 348 317 49 4 0 0
2009  1 1  0 0 1 -1 -1 800  227 129 389 50 4 1 0
2010  1 1  0 0 1 -1 -1 800  263 371 124 34 8 0 0
2011  1 1  0 0 1 -1 -1 800  158 373 257 9 3 0 0
2012  1 1  0 0 1 -1 -1 800  131 264 371 32 2 0 0
1990  10 2  0 0 1 -1 -1 800  719 70 7 4 0 0 0
1991  10 2  0 0 1 -1 -1 800  540 227 33 0 0 0 0
1992  10 2  0 0 1 -1 -1 800  404 243 130 23 0 0 0
1993  10 2  0 0 1 -1 -1 800  629 69 59 39 4 0 0
1994  10 2  0 0 1 -1 -1 800  581 171 18 18 12 0 0
1995  10 2  0 0 1 -1 -1 800  492 232 62 4 5 5 0
1996  10 2  0 0 1 -1 -1 800  716 43 28 13 0 0 0
1997  10 2  0 0 1 -1 -1 800  674 118 5 2 1 0 0
1998  10 2  0 0 1 -1 -1 800  509 240 46 3 2 0 0
1999  10 2  0 0 1 -1 -1 800  472 214 96 16 2 0 0
2000  10 2  0 0 1 -1 -1 800  551 147 62 32 7 1 0
2001  10 2  0 0 1 -1 -1 800  617 127 30 19 7 0 0
2002  10 2  0 0 1 -1 -1 800  378 331 56 17 9 6 3
2003  10 2  0 0 1 -1 -1 800  690 57 53 0 0 0 0
2004  10 2  0 0 1 -1 -1 800  720 80 0 0 0 0 0
2005  10 2  0 0 1 -1 -1 800  558 224 18 0 0 0 0
2006  10 2  0 0 1 -1 -1 800  563 168 65 4 0 0 0
2007  10 2  0 0 1 -1 -1 800  616 133 36 12 3 0 0
2008  10 2  0 0 1 -1 -1 800  428 304 56 10 2 0 0
2009  10 2  0 0 1 -1 -1 800  699 63 29 8 0 1 0
2010  10 2  0 0 1 -1 -1 800  671 115 8 6 0 0 0
2011  10 2  0 0 1 -1 -1 800  588 175 31 6 0 0 0
2012  10 2  0 0 1 -1 -1 800  568 177 45 9 0 1 0
1985  4 3  0 0 1 -1 -1 800  611 130 46 9 4 0 0
1986  4 3  0 0 1 -1 -1 800  378 297 96 16 7 3 3
1987  4 3  0 0 1 -1 -1 800  542 104 106 33 6 2 7
1988  4 3  0 0 1 -1 -1 800  544 151 37 49 11 8 0
1989  4 3  0 0 1 -1 -1 800  676 73 29 10 6 5 1
1990  4 3  0 0 1 -1 -1 800  742 51 6 1 0 0 0
1991  4 3  0 0 1 -1 -1 800  541 233 19 7 0 0 0
1992  4 3  0 0 1 -1 -1 800  451 224 112 13 0 0 0
1993  4 3  0 0 1 -1 -1 800  652 65 55 21 7 0 0
1994  4 3  0 0 1 -1 -1 800  620 139 17 14 10 0 0
1995  4 3  0 0 1 -1 -1 800  475 244 61 11 5 4 0
1996  4 3  0 0 1 -1 -1 800  753 27 14 5 1 0 0
1997  4 3  0 0 1 -1 -1 800  668 118 7 7 0 0 0
1998  4 3  0 0 1 -1 -1 800  577 183 37 3 0 0 0
1999  4 3  0 0 1 -1 -1 800  510 192 80 17 1 0 0
2000  4 3  0 0 1 -1 -1 800  578 128 57 25 12 0 0
2001  4 3  0 0 1 -1 -1 800  646 118 22 5 7 2 0
2002  4 3  0 0 1 -1 -1 800  412 310 53 11 8 6 0
2003  4 3  0 0 1 -1 -1 800  714 35 38 8 2 3 0
2004  4 3  0 0 1 -1 -1 800  735 48 7 5 2 1 2
2005  4 3  0 0 1 -1 -1 800  588 202 9 0 0 1 0
2006  4 3  0 0 1 -1 -1 800  596 141 60 3 0 0 0
2007  4 3  0 0 1 -1 -1 800  629 131 29 11 0 0 0
2008  4 3  0 0 1 -1 -1 800  477 262 47 12 2 0 0
2009  4 3  0 0 1 -1 -1 800  707 53 33 3 4 0 0
2010  4 3  0 0 1 -1 -1 800  684 102 7 4 3 0 0
2011  4 3  0 0 1 -1 -1 800  625 139 31 4 1 0 0
2012  4 3  0 0 1 -1 -1 800  620 141 31 8 0 0 0
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
