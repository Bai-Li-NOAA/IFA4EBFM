#V3.30.19.01;_safe;_compile_date:_Apr 15 2022;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Mon Aug 01 10:16:03 2022
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1659363363 first rand#: -1.88383
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
-999 1 1 38.8332 0.05
1985 1 1 177924 0.05
1986 1 1 180709 0.05
1987 1 1 90075.2 0.05
1988 1 1 27755.1 0.05
1989 1 1 56183.9 0.05
1990 1 1 65117.1 0.05
1991 1 1 72296.9 0.05
1992 1 1 137379 0.05
1993 1 1 194699 0.05
1994 1 1 90389.3 0.05
1995 1 1 46671.2 0.05
1996 1 1 120924 0.05
1997 1 1 94458.2 0.05
1998 1 1 196824 0.05
1999 1 1 155231 0.05
2000 1 1 229505 0.05
2001 1 1 221397 0.05
2002 1 1 206186 0.05
2003 1 1 360360 0.05
2004 1 1 569085 0.05
2005 1 1 815562 0.05
2006 1 1 1.5257e+06 0.05
2007 1 1 829869 0.05
2008 1 1 421417 0.05
2009 1 1 559194 0.05
2010 1 1 532790 0.05
2011 1 1 394232 0.05
2012 1 1 717391 0.05
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
1990 10 2 3.50227e+06 0.1 #_orig_obs: 677965 survey1
1991 10 2 4.79325e+06 0.1 #_orig_obs: 3.25479e+06 survey1
1992 10 2 3.33357e+06 0.1 #_orig_obs: 6.60786e+06 survey1
1993 10 2 2.15865e+06 0.1 #_orig_obs: 1.70994e+06 survey1
1994 10 2 1.52063e+06 0.1 #_orig_obs: 1.00865e+06 survey1
1995 10 2 1.3109e+06 0.1 #_orig_obs: 1.85517e+06 survey1
1996 10 2 1.18071e+06 0.1 #_orig_obs: 1.83768e+06 survey1
1997 10 2 6.41127e+06 0.1 #_orig_obs: 1.42472e+06 survey1
1998 10 2 7.0049e+06 0.1 #_orig_obs: 1.42479e+07 survey1
1999 10 2 4.9346e+06 0.1 #_orig_obs: 6.43402e+06 survey1
2000 10 2 3.16724e+06 0.1 #_orig_obs: 2.39328e+06 survey1
2001 10 2 2.52668e+06 0.1 #_orig_obs: 1.40284e+06 survey1
2002 10 2 1.95057e+06 0.1 #_orig_obs: 1.56085e+06 survey1
2003 10 2 1.23645e+06 0.1 #_orig_obs: 1.26877e+06 survey1
2004 10 2 4.78074e+06 0.1 #_orig_obs: 1.01914e+06 survey1
2005 10 2 5.74138e+06 0.1 #_orig_obs: 5.88313e+06 survey1
2006 10 2 4.35404e+06 0.1 #_orig_obs: 8.04381e+06 survey1
2007 10 2 3.69757e+06 0.1 #_orig_obs: 3.18229e+06 survey1
2008 10 2 2.41169e+06 0.1 #_orig_obs: 3.52945e+06 survey1
2009 10 2 1.74575e+06 0.1 #_orig_obs: 2.39792e+06 survey1
2010 10 2 2.52177e+06 0.1 #_orig_obs: 2.36562e+06 survey1
2011 10 2 1.97338e+06 0.1 #_orig_obs: 9.48175e+06 survey1
2012 10 2 1.24128e+06 0.1 #_orig_obs: 5.71121e+06 survey1
1985 4 3 899914 0.1 #_orig_obs: 1.61884e+06 survey2
1986 4 3 370259 0.1 #_orig_obs: 1.46524e+06 survey2
1987 4 3 284293 0.1 #_orig_obs: 915472 survey2
1988 4 3 184688 0.1 #_orig_obs: 222973 survey2
1989 4 3 254858 0.1 #_orig_obs: 205454 survey2
1990 4 3 1.88961e+06 0.1 #_orig_obs: 156818 survey2
1991 4 3 1.74496e+06 0.1 #_orig_obs: 342837 survey2
1992 4 3 733224 0.1 #_orig_obs: 2.04686e+06 survey2
1993 4 3 732947 0.1 #_orig_obs: 1.5609e+06 survey2
1994 4 3 671047 0.1 #_orig_obs: 363365 survey2
1995 4 3 312645 0.1 #_orig_obs: 572808 survey2
1996 4 3 535912 0.1 #_orig_obs: 543406 survey2
1997 4 3 3.31122e+06 0.1 #_orig_obs: 331752 survey2
1998 4 3 3.2578e+06 0.1 #_orig_obs: 1.63648e+06 survey2
1999 4 3 1.5579e+06 0.1 #_orig_obs: 4.12363e+06 survey2
2000 4 3 881495 0.1 #_orig_obs: 1.70526e+06 survey2
2001 4 3 1.14545e+06 0.1 #_orig_obs: 701033 survey2
2002 4 3 546736 0.1 #_orig_obs: 430437 survey2
2003 4 3 686154 0.1 #_orig_obs: 702960 survey2
2004 4 3 3.60665e+06 0.1 #_orig_obs: 254914 survey2
2005 4 3 3.0978e+06 0.1 #_orig_obs: 1.12405e+06 survey2
2006 4 3 1.43267e+06 0.1 #_orig_obs: 4.11092e+06 survey2
2007 4 3 1.51023e+06 0.1 #_orig_obs: 2.01791e+06 survey2
2008 4 3 612317 0.1 #_orig_obs: 1.30826e+06 survey2
2009 4 3 858257 0.1 #_orig_obs: 1.66939e+06 survey2
2010 4 3 1.01362e+06 0.1 #_orig_obs: 469887 survey2
2011 4 3 733114 0.1 #_orig_obs: 1.63082e+06 survey2
2012 4 3 397442 0.1 #_orig_obs: 2.72819e+06 survey2
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
 1990 10 2 0 0 118  0 0 0 0 7 2 3 12 9 12 12 11 9 9 7 7 5 2 0 2 2 1 0 4 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1991 10 2 0 0 40  0 0 0 0 0 0 0 0 0 0 0 14 6 1 1 1 2 1 4 4 3 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1992 10 2 0 0 122  0 0 0 0 0 0 0 0 0 0 0 0 0 0 28 6 9 5 9 6 4 5 7 10 6 6 3 2 6 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1993 10 2 0 0 119  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 45 7 2 1 2 4 3 6 7 4 2 7 5 5 2 4 2 6 2 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1994 10 2 0 0 53  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 27 5 0 1 3 0 4 2 2 0 0 1 2 0 1 0 2 0 0 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1995 10 2 0 0 261  0 0 0 0 0 0 0 0 0 0 33 8 9 8 9 11 10 11 11 16 15 12 11 9 13 11 5 14 6 3 6 5 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1996 10 2 0 0 192  0 0 0 3 0 6 6 8 12 16 13 20 6 9 9 7 4 7 8 3 1 5 2 9 3 6 1 3 3 7 1 4 3 2 0 2 0 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1997 10 2 0 0 110  0 0 0 0 0 6 8 9 6 10 10 15 12 8 3 6 5 1 2 1 1 0 2 1 1 1 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1998 10 2 0 0 176  0 0 0 0 0 0 0 0 0 0 0 0 0 79 11 3 10 9 10 12 9 6 4 10 4 2 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 10 2 0 0 495  0 0 0 0 0 0 0 0 0 0 83 16 18 24 16 12 18 28 29 25 27 32 26 31 12 16 82 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 10 2 0 0 464  0 0 0 0 5 6 8 17 11 13 25 16 19 9 12 16 15 5 19 16 16 22 13 20 21 23 18 26 15 18 10 11 9 8 8 2 4 5 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 10 2 0 0 268  0 0 0 0 5 7 2 13 14 13 21 19 10 15 13 13 7 10 5 5 7 6 8 9 8 7 7 8 8 5 3 2 2 5 5 3 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 10 2 0 0 602  0 0 0 0 0 0 0 0 41 24 17 18 22 16 19 30 30 26 36 31 40 27 22 30 21 25 16 13 18 13 67 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 10 2 0 0 56  0 0 0 1 1 0 1 3 0 1 4 7 2 2 4 1 0 1 2 3 0 2 3 2 2 0 0 2 2 2 0 3 1 1 1 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 10 2 0 0 294  0 0 0 0 7 10 13 18 22 35 40 34 24 20 17 7 9 8 2 2 3 2 1 3 3 2 1 1 2 0 0 1 0 2 1 0 0 2 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2005 10 2 0 0 740  0 0 0 0 0 24 15 20 42 40 34 38 43 47 42 49 41 38 33 37 40 36 30 21 15 15 12 2 26 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 10 2 0 0 335  0 0 0 0 0 0 0 0 0 0 0 0 0 108 11 13 9 13 16 16 11 18 17 16 21 11 8 6 11 6 6 5 1 5 1 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 10 2 0 0 553  0 0 0 5 2 5 17 24 23 36 29 29 32 37 25 21 17 23 13 16 17 19 17 15 27 12 16 10 13 10 9 8 9 2 6 2 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 10 2 0 0 344  0 0 0 0 0 0 0 0 0 0 0 0 0 66 17 13 15 20 16 17 19 25 19 19 10 13 11 9 11 5 4 3 7 5 5 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 10 2 0 0 149  0 0 0 0 1 3 1 7 8 13 3 9 14 9 8 5 3 5 4 4 1 1 4 2 6 3 2 1 6 4 4 2 6 2 2 0 2 2 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 10 2 0 0 172  0 0 0 1 1 3 12 5 8 10 8 13 17 17 5 6 2 6 4 8 6 7 2 3 5 4 3 1 1 2 1 4 2 0 0 0 3 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2011 10 2 0 0 889  0 0 0 0 10 8 18 26 24 41 51 44 46 45 43 43 39 47 30 43 49 36 39 19 22 31 31 22 14 13 10 9 5 9 0 7 4 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 10 2 0 0 464  0 0 0 0 0 0 0 0 0 59 15 22 21 18 30 14 14 20 18 16 15 21 24 15 19 22 16 17 11 9 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1985 4 3 0 0 1000  0 0 0 0 387 162 129 67 34 21 7 9 10 11 12 18 20 15 17 17 5 5 7 5 4 3 3 3 8 4 2 3 5 0 2 2 2 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1986 4 3 0 0 1000  0 0 0 0 0 0 0 0 0 0 493 23 35 29 39 33 36 45 31 38 20 20 19 15 16 14 15 12 11 11 6 6 6 5 4 2 2 4 4 1 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1987 4 3 0 0 1000  0 0 0 0 0 0 0 0 0 0 0 686 11 14 16 19 19 19 13 17 20 14 12 16 8 13 14 14 19 9 13 8 4 4 3 3 2 2 1 3 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1988 4 3 0 0 1000  0 0 0 0 332 130 94 61 21 15 16 8 19 25 16 12 14 14 18 21 11 11 13 9 13 7 13 13 8 8 10 10 7 10 9 7 3 7 5 5 1 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1989 4 3 0 0 1000  0 0 0 225 166 168 135 79 28 10 4 11 4 13 10 12 5 15 13 9 12 6 8 8 4 4 2 5 6 7 2 3 5 3 5 4 0 3 1 0 2 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1990 4 3 0 0 1000  0 0 0 268 206 202 150 83 39 9 7 1 2 4 2 3 3 2 5 3 1 2 0 0 0 3 0 1 0 0 1 0 0 1 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1991 4 3 0 0 1000  0 0 0 0 419 157 104 85 31 11 10 9 14 17 18 23 17 24 18 10 12 5 3 5 5 0 1 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1992 4 3 0 0 1000  0 0 0 0 0 0 0 398 27 25 27 19 40 39 40 48 49 44 39 38 26 19 18 21 17 9 13 11 8 10 2 3 4 2 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1993 4 3 0 0 1000  0 0 0 0 374 149 129 68 28 7 0 3 7 10 9 7 12 13 14 14 14 21 10 10 8 11 16 7 10 16 8 7 8 2 2 3 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1994 4 3 0 0 1000  0 0 0 0 354 152 123 59 28 16 12 13 13 19 17 14 21 16 8 14 10 10 5 7 8 8 8 9 8 8 8 10 3 4 2 1 4 5 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1995 4 3 0 0 1000  0 0 0 0 0 382 77 36 27 19 8 20 21 33 30 32 24 30 32 25 24 19 14 9 15 10 16 15 10 11 13 5 4 7 12 2 6 2 4 2 1 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1996 4 3 0 0 1000  0 0 121 141 173 174 152 68 27 10 3 4 4 5 6 9 14 7 5 5 4 3 4 5 5 8 5 2 4 2 2 4 0 0 6 6 4 3 2 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1997 4 3 0 0 1000  0 0 101 158 208 238 143 80 29 10 2 3 5 4 1 1 4 0 3 2 2 0 0 1 0 0 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1998 4 3 0 0 1000  0 0 0 0 0 565 140 61 16 17 12 17 15 17 16 17 21 18 14 13 10 14 7 4 1 0 0 0 0 0 0 0 0 1 1 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 4 3 0 0 1000  0 0 0 0 0 377 91 57 28 18 17 20 22 21 32 28 22 39 32 27 20 28 19 19 11 15 17 11 6 3 4 2 14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 4 3 0 0 1000  0 0 0 0 0 0 0 0 0 0 648 10 16 16 20 28 13 19 22 14 20 15 15 23 8 18 14 8 13 9 10 14 4 13 0 1 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 4 3 0 0 1000  0 0 0 236 159 160 134 80 28 17 7 6 9 6 13 9 15 9 5 7 4 8 4 6 6 5 8 10 7 7 9 7 2 5 0 2 2 3 2 0 0 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 4 3 0 0 1000  0 0 0 140 112 104 83 40 26 14 16 20 26 29 29 34 37 53 30 30 16 13 16 13 14 5 10 11 11 8 9 5 5 9 7 3 7 1 4 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 4 3 0 0 1000  0 0 108 132 166 160 98 63 27 7 6 5 3 13 12 17 10 12 7 10 11 10 14 8 14 17 8 11 7 2 5 5 0 5 4 4 4 4 3 2 3 0 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 4 3 0 0 1000  0 0 127 149 207 191 146 82 39 14 4 2 7 3 3 3 2 4 0 2 1 0 0 3 1 0 0 0 0 0 3 3 0 0 0 0 1 1 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2005 4 3 0 0 1000  0 0 0 0 374 150 119 63 36 18 9 18 19 24 24 20 27 26 14 9 13 6 5 9 6 0 0 0 2 2 0 0 0 2 1 2 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 4 3 0 0 1000  0 0 0 0 0 0 552 65 33 12 13 18 17 17 29 26 22 22 25 28 18 16 21 12 5 7 6 12 5 3 2 2 3 7 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 4 3 0 0 1000  0 0 0 216 173 163 128 84 27 14 10 11 10 12 8 12 8 11 14 7 11 6 10 8 14 9 7 3 2 6 4 2 2 1 4 0 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 4 3 0 0 1000  0 0 0 0 0 306 77 37 18 9 21 31 31 38 51 35 37 34 36 33 25 17 20 12 12 16 13 12 11 8 15 6 9 6 3 3 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 4 3 0 0 1000  0 0 0 218 161 177 119 71 35 10 5 5 7 5 2 6 8 10 9 12 11 11 11 10 5 7 10 10 10 11 5 6 4 5 4 2 9 2 1 2 1 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 4 3 0 0 1000  0 0 0 239 189 174 102 69 30 11 4 7 8 11 14 16 9 11 19 7 7 6 5 6 3 6 10 3 1 2 2 1 4 2 6 6 5 0 2 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2011 4 3 0 0 1000  0 0 0 0 314 152 113 59 22 26 17 22 19 24 24 28 28 17 16 19 11 15 5 8 7 5 4 7 3 1 5 6 3 3 3 5 4 0 0 1 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 4 3 0 0 1000  0 0 0 0 281 133 95 40 27 14 19 16 16 22 19 29 24 30 25 20 19 10 18 19 16 13 15 10 10 11 5 8 7 4 3 4 5 2 3 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
1985  1 1  0 0 1 -1 -1 852  145 313 333 51 9 1 0
1986  1 1  0 0 1 -1 -1 583  36 244 253 45 3 2 0
1987  1 1  0 0 1 -1 -1 762  68 133 489 67 4 1 0
1988  1 1  0 0 1 -1 -1 737  91 245 241 133 24 3 0
1989  1 1  0 0 1 -1 -1 692  155 181 292 37 25 2 0
1990  1 1  0 0 1 -1 -1 684  487 120 57 18 2 0 0
1991  1 1  0 0 1 -1 -1 777  178 525 64 8 2 0 0
1992  1 1  0 0 1 -1 -1 568  23 231 305 9 0 0 0
1993  1 1  0 0 1 -1 -1 548  50 67 343 88 0 0 0
1994  1 1  0 0 1 -1 -1 526  69 246 122 75 14 0 0
1995  1 1  0 0 1 -1 -1 500  25 196 249 17 10 3 0
1996  1 1  0 0 1 -1 -1 463  125 72 225 36 5 0 0
1997  1 1  0 0 1 -1 -1 454  288 120 30 13 3 0 0
1998  1 1  0 0 1 -1 -1 459  94 305 55 3 2 0 0
1999  1 1  0 0 1 -1 -1 428  27 158 230 12 1 0 0
2000  1 1  0 0 1 -1 -1 366  29 81 214 41 1 0 0
2001  1 1  0 0 1 -1 -1 501  95 151 173 65 16 1 0
2002  1 1  0 0 1 -1 -1 439  25 234 142 32 2 4 0
2003  1 1  0 0 1 -1 -1 402  60 46 260 29 5 1 1
2004  1 1  0 0 1 -1 -1 459  291 78 56 31 3 0 0
2005  1 1  0 0 1 -1 -1 394  67 273 48 6 0 0 0
2006  1 1  0 0 1 -1 -1 421  27 143 247 4 0 0 0
2007  1 1  0 0 1 -1 -1 532  76 140 255 60 1 0 0
2008  1 1  0 0 1 -1 -1 445  13 214 160 47 11 0 0
2009  1 1  0 0 1 -1 -1 402  58 52 245 37 9 1 0
2010  1 1  0 0 1 -1 -1 442  121 155 93 64 9 0 0
2011  1 1  0 0 1 -1 -1 434  51 229 140 8 6 0 0
2012  1 1  0 0 1 -1 -1 370  21 112 209 28 0 0 0
1990  10 2  0 0 1 -1 -1 118  109 9 0 0 0 0 0
1991  10 2  0 0 1 -1 -1 40  17 23 0 0 0 0 0
1992  10 2  0 0 1 -1 -1 122  17 74 31 0 0 0 0
1993  10 2  0 0 1 -1 -1 119  45 28 35 11 0 0 0
1994  10 2  0 0 1 -1 -1 53  21 32 0 0 0 0 0
1995  10 2  0 0 1 -1 -1 261  53 129 56 5 9 9 0
1996  10 2  0 0 1 -1 -1 192  115 31 23 23 0 0 0
1997  10 2  0 0 1 -1 -1 110  95 13 1 1 0 0 0
1998  10 2  0 0 1 -1 -1 176  79 89 8 0 0 0 0
1999  10 2  0 0 1 -1 -1 495  134 246 113 2 0 0 0
2000  10 2  0 0 1 -1 -1 464  145 139 116 58 6 0 0
2001  10 2  0 0 1 -1 -1 268  145 67 34 18 4 0 0
2002  10 2  0 0 1 -1 -1 602  121 350 71 28 22 10 0
2003  10 2  0 0 1 -1 -1 56  21 10 25 0 0 0 0
2004  10 2  0 0 1 -1 -1 294  263 23 8 0 0 0 0
2005  10 2  0 0 1 -1 -1 740  317 403 11 5 2 0 2
2006  10 2  0 0 1 -1 -1 335  98 153 78 6 0 0 0
2007  10 2  0 0 1 -1 -1 553  272 153 128 0 0 0 0
2008  10 2  0 0 1 -1 -1 344  55 183 54 35 17 0 0
2009  10 2  0 0 1 -1 -1 149  64 27 58 0 0 0 0
2010  10 2  0 0 1 -1 -1 172  109 45 18 0 0 0 0
2011  10 2  0 0 1 -1 -1 889  306 446 83 54 0 0 0
2012  10 2  0 0 1 -1 -1 464  136 179 121 20 3 3 2
1985  4 3  0 0 1 -1 -1 1000  758 173 48 12 9 0 0
1986  4 3  0 0 1 -1 -1 1000  492 333 105 36 22 4 8
1987  4 3  0 0 1 -1 -1 1000  638 125 148 57 13 6 13
1988  4 3  0 0 1 -1 -1 1000  649 176 58 70 25 4 18
1989  4 3  0 0 1 -1 -1 1000  818 86 38 9 23 15 11
1990  4 3  0 0 1 -1 -1 1000  964 33 0 1 0 1 1
1991  4 3  0 0 1 -1 -1 1000  798 192 7 2 1 0 0
1992  4 3  0 0 1 -1 -1 1000  447 413 130 4 1 0 5
1993  4 3  0 0 1 -1 -1 1000  748 72 124 54 1 1 0
1994  4 3  0 0 1 -1 -1 1000  738 157 21 57 27 0 0
1995  4 3  0 0 1 -1 -1 1000  528 273 117 26 32 20 4
1996  4 3  0 0 1 -1 -1 1000  882 40 30 19 7 12 10
1997  4 3  0 0 1 -1 -1 1000  951 40 3 3 1 2 0
1998  4 3  0 0 1 -1 -1 1000  767 219 10 1 0 3 0
1999  4 3  0 0 1 -1 -1 1000  584 267 138 11 0 0 0
2000  4 3  0 0 1 -1 -1 1000  656 153 126 60 3 0 2
2001  4 3  0 0 1 -1 -1 1000  812 95 33 30 28 1 1
2002  4 3  0 0 1 -1 -1 1000  480 357 71 29 37 23 3
2003  4 3  0 0 1 -1 -1 1000  759 76 105 20 12 14 14
2004  4 3  0 0 1 -1 -1 1000  944 33 8 15 0 0 0
2005  4 3  0 0 1 -1 -1 1000  737 245 18 0 0 0 0
2006  4 3  0 0 1 -1 -1 1000  647 215 127 11 0 0 0
2007  4 3  0 0 1 -1 -1 1000  781 109 65 45 0 0 0
2008  4 3  0 0 1 -1 -1 1000  424 402 78 60 36 0 0
2009  4 3  0 0 1 -1 -1 1000  771 78 90 31 16 14 0
2010  4 3  0 0 1 -1 -1 1000  830 110 13 24 12 4 7
2011  4 3  0 0 1 -1 -1 1000  664 247 50 39 0 0 0
2012  4 3  0 0 1 -1 -1 1000  590 218 137 55 0 0 0
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

