#V3.30.19.01;_safe;_compile_date:_Apr 15 2022;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Mon Aug 01 10:04:56 2022
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1659362696 first rand#: 0.377423
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
-999 1 1 5677.84 0.05
1985 1 1 188428 0.05
1986 1 1 175354 0.05
1987 1 1 91188.1 0.05
1988 1 1 26364.6 0.05
1989 1 1 54544.2 0.05
1990 1 1 62380.3 0.05
1991 1 1 72863.6 0.05
1992 1 1 133078 0.05
1993 1 1 204772 0.05
1994 1 1 96890.5 0.05
1995 1 1 47265.6 0.05
1996 1 1 128120 0.05
1997 1 1 98949.9 0.05
1998 1 1 192462 0.05
1999 1 1 154537 0.05
2000 1 1 240829 0.05
2001 1 1 208963 0.05
2002 1 1 217529 0.05
2003 1 1 306967 0.05
2004 1 1 574064 0.05
2005 1 1 759742 0.05
2006 1 1 1.54828e+06 0.05
2007 1 1 771252 0.05
2008 1 1 431792 0.05
2009 1 1 484804 0.05
2010 1 1 454954 0.05
2011 1 1 433259 0.05
2012 1 1 727066 0.05
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
1990 10 2 5.3905e+06 0.1 #_orig_obs: 677965 survey1
1991 10 2 7.66787e+06 0.1 #_orig_obs: 3.25479e+06 survey1
1992 10 2 2.9103e+06 0.1 #_orig_obs: 6.60786e+06 survey1
1993 10 2 2.32477e+06 0.1 #_orig_obs: 1.70994e+06 survey1
1994 10 2 1.52584e+06 0.1 #_orig_obs: 1.00865e+06 survey1
1995 10 2 706305 0.1 #_orig_obs: 1.85517e+06 survey1
1996 10 2 1.00427e+06 0.1 #_orig_obs: 1.83768e+06 survey1
1997 10 2 7.06143e+06 0.1 #_orig_obs: 1.42472e+06 survey1
1998 10 2 1.86236e+07 0.1 #_orig_obs: 1.42479e+07 survey1
1999 10 2 6.41213e+06 0.1 #_orig_obs: 6.43402e+06 survey1
2000 10 2 2.49438e+06 0.1 #_orig_obs: 2.39328e+06 survey1
2001 10 2 3.0041e+06 0.1 #_orig_obs: 1.40284e+06 survey1
2002 10 2 1.01568e+06 0.1 #_orig_obs: 1.56085e+06 survey1
2003 10 2 926833 0.1 #_orig_obs: 1.26877e+06 survey1
2004 10 2 1.55411e+07 0.1 #_orig_obs: 1.01914e+06 survey1
2005 10 2 1.00795e+07 0.1 #_orig_obs: 5.88313e+06 survey1
2006 10 2 5.44885e+06 0.1 #_orig_obs: 8.04381e+06 survey1
2007 10 2 3.78326e+06 0.1 #_orig_obs: 3.18229e+06 survey1
2008 10 2 1.22688e+06 0.1 #_orig_obs: 3.52945e+06 survey1
2009 10 2 1.44173e+06 0.1 #_orig_obs: 2.39792e+06 survey1
2010 10 2 2.88686e+06 0.1 #_orig_obs: 2.36562e+06 survey1
2011 10 2 1.17966e+06 0.1 #_orig_obs: 9.48175e+06 survey1
2012 10 2 459014 0.1 #_orig_obs: 5.71121e+06 survey1
1985 4 3 742714 0.1 #_orig_obs: 1.61884e+06 survey2
1986 4 3 420915 0.1 #_orig_obs: 1.46524e+06 survey2
1987 4 3 264277 0.1 #_orig_obs: 915472 survey2
1988 4 3 152303 0.1 #_orig_obs: 222973 survey2
1989 4 3 200070 0.1 #_orig_obs: 205454 survey2
1990 4 3 2.14996e+06 0.1 #_orig_obs: 156818 survey2
1991 4 3 3.5977e+06 0.1 #_orig_obs: 342837 survey2
1992 4 3 933928 0.1 #_orig_obs: 2.04686e+06 survey2
1993 4 3 944278 0.1 #_orig_obs: 1.5609e+06 survey2
1994 4 3 532864 0.1 #_orig_obs: 363365 survey2
1995 4 3 190100 0.1 #_orig_obs: 572808 survey2
1996 4 3 392536 0.1 #_orig_obs: 543406 survey2
1997 4 3 3.71278e+06 0.1 #_orig_obs: 331752 survey2
1998 4 3 7.8461e+06 0.1 #_orig_obs: 1.63648e+06 survey2
1999 4 3 2.27393e+06 0.1 #_orig_obs: 4.12363e+06 survey2
2000 4 3 1.094e+06 0.1 #_orig_obs: 1.70526e+06 survey2
2001 4 3 1.31288e+06 0.1 #_orig_obs: 701033 survey2
2002 4 3 384463 0.1 #_orig_obs: 430437 survey2
2003 4 3 386866 0.1 #_orig_obs: 702960 survey2
2004 4 3 1.00656e+07 0.1 #_orig_obs: 254914 survey2
2005 4 3 3.86678e+06 0.1 #_orig_obs: 1.12405e+06 survey2
2006 4 3 2.07773e+06 0.1 #_orig_obs: 4.11092e+06 survey2
2007 4 3 1.80527e+06 0.1 #_orig_obs: 2.01791e+06 survey2
2008 4 3 465398 0.1 #_orig_obs: 1.30826e+06 survey2
2009 4 3 594616 0.1 #_orig_obs: 1.66939e+06 survey2
2010 4 3 1.22215e+06 0.1 #_orig_obs: 469887 survey2
2011 4 3 353301 0.1 #_orig_obs: 1.63082e+06 survey2
2012 4 3 187683 0.1 #_orig_obs: 2.72819e+06 survey2
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
 1990 10 2 0 0 118  0 0 0 0 2 3 8 13 10 11 14 13 17 13 8 1 2 1 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1991 10 2 0 0 40  0 0 0 0 0 0 0 0 0 0 0 28 2 2 3 1 0 1 0 0 1 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1992 10 2 0 0 122  0 0 0 0 0 0 0 0 0 0 0 0 0 0 36 4 8 10 6 5 5 6 9 9 3 3 5 4 2 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1993 10 2 0 0 119  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 76 3 0 2 2 3 2 0 1 2 4 4 4 3 1 7 2 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1994 10 2 0 0 53  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 28 1 2 1 1 1 3 2 0 4 3 0 2 1 2 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1995 10 2 0 0 261  0 0 0 0 0 0 0 0 0 0 26 12 8 13 9 12 7 7 6 12 11 10 9 6 16 5 12 8 5 5 4 6 52 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1996 10 2 0 0 192  0 0 0 3 2 3 6 8 12 25 13 16 13 13 14 4 8 2 1 1 1 1 5 1 1 3 3 1 2 2 4 3 3 2 4 3 3 2 1 2 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1997 10 2 0 0 110  0 0 0 0 0 5 7 13 8 15 14 8 8 10 8 4 3 2 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1998 10 2 0 0 176  0 0 0 0 0 0 0 0 0 0 0 0 0 142 7 6 7 3 4 1 2 1 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 10 2 0 0 495  0 0 0 0 0 0 0 0 0 0 75 19 22 24 21 23 29 33 34 27 22 33 22 23 17 18 53 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 10 2 0 0 464  0 0 0 0 4 5 12 9 13 22 22 21 19 20 13 8 12 9 13 14 11 16 19 19 21 21 19 18 19 19 12 14 16 7 4 4 4 0 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 10 2 0 0 268  0 0 0 0 7 6 15 11 15 21 29 16 21 16 16 8 6 3 2 3 4 4 6 4 7 2 8 6 4 3 5 5 3 3 2 2 2 1 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 10 2 0 0 602  0 0 0 0 0 0 0 0 44 9 10 17 16 16 16 19 25 32 29 24 25 34 29 21 22 13 20 13 12 20 136 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 10 2 0 0 56  0 0 0 0 1 2 2 2 0 4 8 3 7 4 2 0 1 0 0 2 1 0 0 0 0 1 2 0 2 1 0 1 1 0 4 2 0 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 10 2 0 0 294  0 0 0 0 11 11 13 26 23 28 37 36 30 32 11 12 10 6 0 4 0 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2005 10 2 0 0 740  0 0 0 0 0 24 21 29 29 48 61 44 52 47 36 38 29 32 39 39 31 34 28 28 14 15 5 3 14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 10 2 0 0 335  0 0 0 0 0 0 0 0 0 0 0 0 0 149 20 10 12 8 7 15 16 8 14 13 11 8 9 6 5 7 7 2 6 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 10 2 0 0 553  0 0 0 5 2 8 19 29 35 38 36 40 29 39 30 11 11 8 7 8 12 17 13 13 13 9 9 12 11 20 14 7 11 6 8 2 21 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 10 2 0 0 344  0 0 0 0 0 0 0 0 0 0 0 0 0 84 16 8 14 15 11 10 14 18 12 13 13 13 12 8 9 7 7 8 8 6 7 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 10 2 0 0 149  0 0 0 0 3 2 5 6 7 17 11 18 10 7 1 2 6 2 4 2 2 0 1 4 2 1 1 4 0 1 2 0 7 9 5 2 0 0 2 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 10 2 0 0 172  0 0 0 3 1 5 7 12 15 17 20 18 18 16 8 7 4 2 1 3 1 0 2 0 0 1 0 1 2 0 0 2 0 2 0 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2011 10 2 0 0 889  0 0 0 0 8 8 16 16 34 31 37 47 46 51 48 34 32 39 51 47 50 42 25 26 34 28 18 10 11 10 15 8 7 9 10 7 8 26 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 10 2 0 0 464  0 0 0 0 0 0 0 0 0 37 10 17 10 11 9 8 12 12 10 7 14 25 24 19 28 20 21 13 17 18 122 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1985 4 3 0 0 1000  0 0 0 0 422 158 116 55 22 14 8 6 15 15 20 10 20 19 13 15 10 12 8 8 2 5 3 2 0 4 0 2 1 6 1 2 1 1 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1986 4 3 0 0 1000  0 0 0 0 0 0 0 0 0 0 612 19 20 32 34 27 40 35 25 25 16 8 17 9 12 9 4 5 7 5 9 3 7 2 7 3 0 1 1 1 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1987 4 3 0 0 1000  0 0 0 0 0 0 0 0 0 0 0 649 12 14 15 19 17 15 18 29 15 19 26 18 15 6 17 12 13 10 15 7 9 4 2 7 3 4 3 2 2 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1988 4 3 0 0 1000  0 0 0 0 261 113 95 55 18 14 14 9 17 28 28 31 27 18 28 12 10 16 15 20 13 9 13 12 11 13 13 12 10 14 11 14 4 4 6 6 3 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1989 4 3 0 0 1000  0 0 0 227 207 160 119 74 14 11 5 6 6 6 9 10 8 7 5 7 7 6 5 5 7 8 3 5 4 8 7 4 10 7 8 4 7 6 4 2 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1990 4 3 0 0 1000  0 0 0 275 219 216 150 87 28 8 1 1 0 1 1 0 2 2 0 4 1 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
 1991 4 3 0 0 1000  0 0 0 0 415 203 146 73 28 15 8 9 10 8 12 11 13 11 8 7 6 7 5 1 1 0 0 0 0 1 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1992 4 3 0 0 1000  0 0 0 0 0 0 0 366 32 29 25 34 45 45 45 63 52 65 40 39 27 22 20 10 7 7 3 5 8 4 1 0 2 1 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1993 4 3 0 0 1000  0 0 0 0 356 175 107 53 20 8 6 0 6 13 9 14 13 13 19 10 15 23 18 17 15 18 17 11 9 10 9 4 1 3 2 3 1 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1994 4 3 0 0 1000  0 0 0 0 307 128 117 59 30 12 13 10 16 16 25 20 19 21 9 22 13 12 13 11 6 10 6 8 14 9 14 9 11 8 6 5 11 5 4 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1995 4 3 0 0 1000  0 0 0 0 0 183 44 33 22 10 16 25 33 36 41 34 38 27 35 32 38 29 25 23 24 15 27 17 21 22 25 13 18 12 15 19 11 10 8 5 3 3 1 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1996 4 3 0 0 1000  0 0 99 142 163 198 141 79 21 12 5 3 0 1 4 1 3 1 3 3 5 4 9 11 5 8 5 9 4 5 7 7 7 4 9 4 2 1 3 5 2 1 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1997 4 3 0 0 1000  0 0 120 155 209 207 167 80 34 5 5 1 3 0 0 2 1 2 0 2 1 0 2 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1998 4 3 0 0 1000  0 0 0 0 0 673 119 81 36 11 5 3 5 14 3 8 10 4 10 7 7 2 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 4 3 0 0 1000  0 0 0 0 0 241 41 32 25 18 30 49 42 47 73 64 54 57 55 41 30 29 14 16 8 8 8 4 2 5 3 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 4 3 0 0 1000  0 0 0 0 0 0 0 0 0 0 458 7 25 22 21 21 18 33 24 41 33 22 46 34 33 40 26 16 26 15 6 16 5 5 4 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 4 3 0 0 1000  0 0 0 243 155 149 112 53 26 9 6 6 9 7 6 10 13 9 9 4 5 7 10 13 6 9 13 9 18 12 15 11 10 13 9 2 4 6 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 4 3 0 0 1000  0 0 0 77 49 43 48 33 19 19 28 22 33 38 38 56 48 43 28 30 24 13 29 12 13 16 17 19 18 11 17 33 19 19 19 20 9 14 4 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 4 3 0 0 1000  0 0 84 112 161 154 110 60 26 9 6 5 6 4 6 9 12 7 6 13 11 8 16 10 13 19 13 7 10 7 8 8 11 12 11 8 11 4 5 8 3 3 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 4 3 0 0 1000  0 0 133 159 210 200 130 102 42 10 3 1 1 1 0 2 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 2 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0
 2005 4 3 0 0 1000  0 0 0 0 302 108 89 57 29 18 17 22 42 50 37 39 36 29 39 20 22 16 9 3 4 5 1 0 0 2 0 0 0 0 0 1 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 4 3 0 0 1000  0 0 0 0 0 0 497 55 23 15 8 12 21 16 20 17 23 37 22 25 20 23 27 30 19 22 17 14 9 8 5 5 2 2 1 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 4 3 0 0 1000  0 0 0 209 145 150 112 65 25 11 7 9 5 11 12 11 15 18 13 10 11 15 15 13 11 10 14 12 16 13 6 8 8 6 6 1 2 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 4 3 0 0 1000  0 0 0 0 0 212 48 24 21 23 20 21 34 22 54 37 55 40 34 27 25 19 16 15 12 22 18 24 25 18 17 22 16 15 13 9 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 4 3 0 0 1000  0 0 0 231 159 162 113 59 29 9 3 5 1 3 9 11 9 7 8 2 6 9 9 13 13 13 11 10 6 7 10 8 15 6 12 7 10 4 4 1 1 2 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 4 3 0 0 1000  0 0 0 263 180 182 132 79 37 9 3 11 8 6 7 5 6 6 8 4 3 4 1 3 0 3 1 4 6 1 0 5 0 3 3 4 2 1 1 3 0 2 0 2 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2011 4 3 0 0 1000  0 0 0 0 176 83 66 41 22 16 24 32 35 41 55 51 53 51 40 31 33 17 21 11 11 7 9 6 5 8 7 6 3 4 5 4 3 2 7 1 3 4 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 4 3 0 0 1000  0 0 0 0 122 64 52 24 11 5 16 25 21 20 22 34 31 24 42 36 36 39 45 42 39 30 27 32 13 15 15 17 19 11 11 7 11 5 13 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
1985  1 1  0 0 1 -1 -1 852  147 326 335 41 3 0 0
1986  1 1  0 0 1 -1 -1 583  30 282 236 34 1 0 0
1987  1 1  0 0 1 -1 -1 762  43 178 446 87 8 0 0
1988  1 1  0 0 1 -1 -1 737  50 269 274 125 16 3 0
1989  1 1  0 0 1 -1 -1 692  154 177 304 38 17 2 0
1990  1 1  0 0 1 -1 -1 684  517 105 50 10 2 0 0
1991  1 1  0 0 1 -1 -1 777  256 493 25 3 0 0 0
1992  1 1  0 0 1 -1 -1 568  19 304 243 2 0 0 0
1993  1 1  0 0 1 -1 -1 548  35 54 419 40 0 0 0
1994  1 1  0 0 1 -1 -1 526  37 214 128 133 14 0 0
1995  1 1  0 0 1 -1 -1 500  6 151 301 23 17 2 0
1996  1 1  0 0 1 -1 -1 463  102 34 244 78 1 4 0
1997  1 1  0 0 1 -1 -1 454  335 93 11 11 4 0 0
1998  1 1  0 0 1 -1 -1 459  181 253 24 1 0 0 0
1999  1 1  0 0 1 -1 -1 428  13 293 121 1 0 0 0
2000  1 1  0 0 1 -1 -1 366  10 26 316 14 0 0 0
2001  1 1  0 0 1 -1 -1 501  80 100 122 187 12 0 0
2002  1 1  0 0 1 -1 -1 439  10 260 116 30 23 0 0
2003  1 1  0 0 1 -1 -1 402  41 29 306 21 3 2 0
2004  1 1  0 0 1 -1 -1 459  399 36 10 13 1 0 0
2005  1 1  0 0 1 -1 -1 394  40 344 8 2 0 0 0
2006  1 1  0 0 1 -1 -1 421  19 88 314 0 0 0 0
2007  1 1  0 0 1 -1 -1 532  44 134 247 107 0 0 0
2008  1 1  0 0 1 -1 -1 445  13 190 180 41 21 0 0
2009  1 1  0 0 1 -1 -1 402  42 54 253 38 10 5 0
2010  1 1  0 0 1 -1 -1 442  156 174 51 54 7 0 0
2011  1 1  0 0 1 -1 -1 434  12 295 121 3 3 0 0
2012  1 1  0 0 1 -1 -1 370  7 43 304 16 0 0 0
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

