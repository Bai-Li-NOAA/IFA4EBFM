#V3.30.19.01;_safe;_compile_date:_Apr 15 2022;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Mon Aug 01 09:30:16 2022
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1659360616 first rand#: -2.33598
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
-999 1 1 0 0.01
1985 1 1 616766 0.05
1986 1 1 279486 0.05
1987 1 1 373719 0.05
1988 1 1 414530 0.05
1989 1 1 455757 0.05
1990 1 1 483180 0.05
1991 1 1 507536 0.05
1992 1 1 349562 0.05
1993 1 1 254643 0.05
1994 1 1 201012 0.05
1995 1 1 334375 0.05
1996 1 1 274635 0.05
1997 1 1 418645 0.05
1998 1 1 416669 0.05
1999 1 1 275409 0.05
2000 1 1 194673 0.05
2001 1 1 234714 0.05
2002 1 1 233065 0.05
2003 1 1 237847 0.05
2004 1 1 215753 0.05
2005 1 1 249605 0.05
2006 1 1 237694 0.05
2007 1 1 206415 0.05
2008 1 1 171844 0.05
2009 1 1 195278 0.05
2010 1 1 275195 0.05
2011 1 1 212310 0.05
2012 1 1 170614 0.05
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
1990 10 2 386032 0.74 #_orig_obs: 500568 survey1
1991 10 2 2.74089e+06 0.75 #_orig_obs: 447021 survey1
1992 10 2 1.09952e+06 0.76 #_orig_obs: 715354 survey1
1993 10 2 1.17773e+06 0.73 #_orig_obs: 1.33739e+06 survey1
1994 10 2 1.25008e+06 0.77 #_orig_obs: 198889 survey1
1995 10 2 781673 0.74 #_orig_obs: 2.48463e+06 survey1
1996 10 2 544690 0.58 #_orig_obs: 442850 survey1
1997 10 2 581986 0.59 #_orig_obs: 797276 survey1
1998 10 2 306135 0.88 #_orig_obs: 2.00577e+06 survey1
1999 10 2 651873 0.61 #_orig_obs: 1.00468e+06 survey1
2000 10 2 2.268e+06 0.66 #_orig_obs: 972794 survey1
2001 10 2 1.76087e+06 0.83 #_orig_obs: 1.27425e+06 survey1
2002 10 2 2.10839e+06 0.59 #_orig_obs: 1.14592e+06 survey1
2003 10 2 1.6845e+06 0.68 #_orig_obs: 763734 survey1
2004 10 2 697296 0.73 #_orig_obs: 1.42493e+06 survey1
2005 10 2 2.29505e+06 0.59 #_orig_obs: 364818 survey1
2006 10 2 1.33295e+06 0.67 #_orig_obs: 541265 survey1
2007 10 2 1.17019e+06 0.59 #_orig_obs: 857759 survey1
2008 10 2 415937 0.63 #_orig_obs: 924284 survey1
2009 10 2 2.52785e+06 0.61 #_orig_obs: 876678 survey1
2010 10 2 530816 0.8 #_orig_obs: 812078 survey1
2011 10 2 1.41573e+06 0.65 #_orig_obs: 882473 survey1
2012 10 2 520358 0.59 #_orig_obs: 1.25627e+06 survey1
1985 4 3 4.65047e+06 1.15 #_orig_obs: 3.01815e+06 survey2
1986 4 3 2.19983e+07 1.14 #_orig_obs: 2.61838e+06 survey2
1987 4 3 5.59726e+06 1.18 #_orig_obs: 1.73372e+06 survey2
1988 4 3 5.64504e+06 1.14 #_orig_obs: 307627 survey2
1989 4 3 8.22086e+06 1.18 #_orig_obs: 1.54654e+06 survey2
1990 4 3 1.24018e+06 1.15 #_orig_obs: 1.83667e+06 survey2
1991 4 3 5.14983e+06 1.16 #_orig_obs: 1.61707e+06 survey2
1992 4 3 1.47622e+06 1.16 #_orig_obs: 1.6244e+06 survey2
1993 4 3 937911 1.19 #_orig_obs: 6.16464e+06 survey2
1994 4 3 1.62026e+06 1.14 #_orig_obs: 7.3547e+06 survey2
1995 4 3 2.02308e+06 1.13 #_orig_obs: 1.10813e+06 survey2
1996 4 3 303938 1.2 #_orig_obs: 394491 survey2
1997 4 3 4.14225e+06 1.22 #_orig_obs: 674833 survey2
1998 4 3 2.15588e+06 0.4 #_orig_obs: 2.07713e+06 survey2
1999 4 3 2.86009e+06 0.43 #_orig_obs: 1.1235e+06 survey2
2000 4 3 1.61211e+06 0.36 #_orig_obs: 2.80471e+06 survey2
2001 4 3 2.67306e+06 0.38 #_orig_obs: 2.8181e+06 survey2
2002 4 3 4.73334e+06 0.43 #_orig_obs: 1.37995e+06 survey2
2003 4 3 2.96011e+06 0.36 #_orig_obs: 2.04157e+06 survey2
2004 4 3 2.04752e+06 0.38 #_orig_obs: 3.02649e+06 survey2
2005 4 3 1.20942e+06 0.39 #_orig_obs: 1.62626e+06 survey2
2006 4 3 3.82663e+06 0.42 #_orig_obs: 1.45551e+06 survey2
2007 4 3 2.75777e+06 0.42 #_orig_obs: 1.0811e+06 survey2
2008 4 3 3.41529e+06 0.45 #_orig_obs: 1.02451e+06 survey2
2009 4 3 898068 0.41 #_orig_obs: 2.27034e+06 survey2
2010 4 3 1.50485e+06 0.39 #_orig_obs: 1.72533e+06 survey2
2011 4 3 882464 0.38 #_orig_obs: 3.23027e+06 survey2
2012 4 3 748630 0.44 #_orig_obs: 2.46554e+06 survey2
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
50 # maximum size in the population (lower edge of last bin) 
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
50 #_N_LengthBins
 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part Nsamp datavector(female-male)
 1990 10 2 0 0 118  0 0 0 0 0 0 1 0 0 0 0 0 1 1 1 1 2 3 3 5 10 3 3 9 7 3 7 7 5 3 7 5 3 5 7 3 3 2 0 1 2 1 1 1 1 1 0 0 0 0
 1991 10 2 0 0 40  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 1 0 1 0 1 2 3 3 1 3 2 1 6 2 2 1 1 1 1 5 0 0 0 0 0 0 0 0 0 0 0 0
 1992 10 2 0 0 122  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 0 1 3 1 3 2 1 4 5 5 4 5 11 6 8 8 6 16 3 5 7 4 4 4 1 0 1 0 0 1 0 0 0 0
 1993 10 2 0 0 119  0 0 0 0 0 0 0 0 0 0 0 0 0 0 4 0 0 0 1 3 1 3 3 3 6 3 11 5 7 4 11 5 8 6 6 4 6 5 0 4 3 5 1 1 0 0 0 0 0 0
 1994 10 2 0 0 53  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 0 2 2 1 1 1 7 3 2 2 3 1 3 5 3 3 2 4 2 1 0 1 0 0 0 0 0 0 0 0
 1995 10 2 0 0 261  0 0 0 0 0 0 0 1 1 3 0 2 0 2 1 3 0 2 5 11 9 7 7 9 18 10 12 14 17 9 8 11 16 11 10 17 11 9 5 8 4 1 1 4 1 0 1 0 0 0
 1996 10 2 0 0 192  0 0 0 0 0 0 0 0 0 0 3 2 2 1 0 2 3 4 3 4 8 8 4 5 7 6 13 6 14 15 7 13 12 8 8 9 6 7 3 2 1 1 3 0 2 0 0 0 0 0
 1997 10 2 0 0 110  0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 0 2 1 2 2 6 1 6 7 6 9 3 8 10 8 14 5 2 1 2 3 0 2 3 1 0 3 0 0 0 0 0 0 0
 1998 10 2 0 0 176  0 0 0 0 0 0 0 0 0 0 0 0 0 5 1 2 2 0 0 2 5 2 4 10 5 16 20 12 10 3 15 11 10 6 5 10 2 3 2 5 4 2 0 0 2 0 0 0 0 0
 1999 10 2 0 0 495  0 0 0 0 0 0 1 1 0 1 2 0 1 1 1 5 5 2 7 11 17 16 15 19 27 26 31 33 34 28 26 20 29 19 26 22 12 9 12 7 9 3 6 4 4 0 2 1 0 0
 2000 10 2 0 0 464  0 0 0 0 0 0 0 0 1 1 0 1 2 0 4 2 4 3 14 7 8 17 16 18 28 18 28 28 28 34 35 30 27 17 23 16 16 11 7 3 5 3 2 5 0 1 1 0 0 0
 2001 10 2 0 0 268  0 0 0 0 0 0 1 0 0 1 1 2 0 1 2 3 1 4 5 3 6 8 8 8 13 11 10 17 17 20 20 11 13 17 12 9 10 5 8 5 2 2 6 3 1 0 2 0 0 0
 2002 10 2 0 0 602  0 0 0 0 1 0 1 1 1 3 0 0 0 3 2 5 5 6 11 13 20 12 21 33 27 26 32 26 38 35 38 41 24 25 32 25 24 19 11 16 8 7 2 1 2 3 0 1 1 0
 2003 10 2 0 0 56  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 1 0 1 1 1 2 3 5 3 2 1 4 1 3 6 4 4 1 3 3 0 1 2 0 0 0 0 0 0 0 0
 2004 10 2 0 0 294  0 0 0 0 0 0 0 0 1 1 1 1 1 2 0 1 1 5 8 6 7 9 14 14 14 10 16 14 20 18 16 18 13 11 15 8 15 7 3 7 4 6 4 1 0 0 1 0 0 1
 2005 10 2 0 0 740  0 0 0 0 1 0 0 0 2 1 1 2 1 3 7 3 11 11 11 18 14 21 21 21 35 36 42 43 43 41 51 35 41 41 28 28 30 32 13 21 4 9 4 3 4 3 1 1 1 1
 2006 10 2 0 0 335  0 0 0 0 0 0 0 0 0 0 1 1 4 0 1 2 0 5 5 5 3 10 7 13 16 30 16 19 15 25 18 18 12 22 19 15 13 12 9 5 4 2 3 1 2 0 1 0 1 0
 2007 10 2 0 0 553  0 0 0 0 1 0 0 0 1 1 1 0 0 1 2 3 5 4 3 9 5 16 21 15 21 30 40 34 36 38 38 32 32 18 22 30 21 18 12 13 8 4 7 5 2 2 1 0 1 0
 2008 10 2 0 0 344  0 0 0 0 0 0 0 0 0 0 0 0 1 2 1 0 5 2 4 6 7 4 17 11 12 20 18 21 16 24 24 23 18 14 20 13 15 15 9 6 4 4 2 1 1 3 1 0 0 0
 2009 10 2 0 0 149  0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 3 0 0 2 2 7 3 8 6 7 10 10 9 8 8 7 7 13 5 8 5 6 2 3 1 2 1 0 2 0 0 0 0
 2010 10 2 0 0 172  0 0 0 0 0 0 0 0 0 1 0 1 1 2 0 0 1 2 3 3 5 0 5 13 4 4 19 8 4 11 11 21 7 9 13 5 5 4 1 3 0 1 3 0 2 0 0 0 0 0
 2011 10 2 0 0 889  0 0 0 0 0 1 0 0 1 1 2 2 4 2 7 8 7 6 16 24 28 32 24 26 42 40 54 50 63 51 55 43 45 39 48 44 39 18 15 16 13 4 5 4 4 5 1 0 0 0
 2012 10 2 0 0 464  0 0 0 0 0 0 0 0 0 1 1 0 1 1 1 3 2 9 6 11 7 13 10 17 19 21 27 33 24 28 38 20 17 28 20 16 14 22 16 12 7 5 3 5 2 2 1 0 0 1
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
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
1985  1 1  0 0 1 -1 -1 852  61 251 393 115 30 2 0
1986  1 1  0 0 1 -1 -1 583  30 188 286 64 8 7 0
1987  1 1  0 0 1 -1 -1 762  51 198 396 101 10 6 0
1988  1 1  0 0 1 -1 -1 737  87 239 280 107 19 4 1
1989  1 1  0 0 1 -1 -1 692  68 308 260 50 6 0 0
1990  1 1  0 0 1 -1 -1 684  34 233 371 41 3 2 0
1991  1 1  0 0 1 -1 -1 777  37 199 426 107 8 0 0
1992  1 1  0 0 1 -1 -1 568  40 113 310 91 12 2 0
1993  1 1  0 0 1 -1 -1 548  33 151 246 100 15 3 0
1994  1 1  0 0 1 -1 -1 526  55 133 256 64 13 3 2
1995  1 1  0 0 1 -1 -1 500  71 165 200 54 7 3 0
1996  1 1  0 0 1 -1 -1 463  43 183 182 45 9 1 0
1997  1 1  0 0 1 -1 -1 454  29 134 244 43 3 1 0
1998  1 1  0 0 1 -1 -1 459  27 137 214 75 3 3 0
1999  1 1  0 0 1 -1 -1 428  23 112 232 51 9 1 0
2000  1 1  0 0 1 -1 -1 366  39 98 163 55 8 3 0
2001  1 1  0 0 1 -1 -1 501  45 162 233 49 12 0 0
2002  1 1  0 0 1 -1 -1 439  45 128 225 32 7 2 0
2003  1 1  0 0 1 -1 -1 402  29 142 180 46 5 0 0
2004  1 1  0 0 1 -1 -1 459  34 142 215 57 11 0 0
2005  1 1  0 0 1 -1 -1 394  14 135 185 50 7 3 0
2006  1 1  0 0 1 -1 -1 421  18 81 254 57 10 1 0
2007  1 1  0 0 1 -1 -1 532  36 126 265 94 10 1 0
2008  1 1  0 0 1 -1 -1 445  25 126 218 58 13 5 0
2009  1 1  0 0 1 -1 -1 402  27 111 200 50 13 1 0
2010  1 1  0 0 1 -1 -1 442  25 146 224 38 5 4 0
2011  1 1  0 0 1 -1 -1 434  25 120 223 52 12 2 0
2012  1 1  0 0 1 -1 -1 370  11 94 199 52 14 0 0
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

