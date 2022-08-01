#V3.30.19.01;_safe;_compile_date:_Apr 15 2022;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Mon Aug 01 10:09:55 2022
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1659362995 first rand#: -0.770139
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
-999 1 1 2.77234e+06 0.05
1985 1 1 196540 0.05
1986 1 1 175537 0.05
1987 1 1 90636.7 0.05
1988 1 1 23971.4 0.05
1989 1 1 51151.3 0.05
1990 1 1 62507.7 0.05
1991 1 1 81116.4 0.05
1992 1 1 134422 0.05
1993 1 1 224932 0.05
1994 1 1 94189.6 0.05
1995 1 1 52182.2 0.05
1996 1 1 116840 0.05
1997 1 1 102996 0.05
1998 1 1 183441 0.05
1999 1 1 147036 0.05
2000 1 1 241281 0.05
2001 1 1 228024 0.05
2002 1 1 204421 0.05
2003 1 1 346271 0.05
2004 1 1 567071 0.05
2005 1 1 815400 0.05
2006 1 1 1.61568e+06 0.05
2007 1 1 872808 0.05
2008 1 1 490782 0.05
2009 1 1 559080 0.05
2010 1 1 463795 0.05
2011 1 1 431766 0.05
2012 1 1 730142 0.05
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
1990 10 2 2.29904e+06 0.1 #_orig_obs: 677965 survey1
1991 10 2 2.42429e+06 0.1 #_orig_obs: 3.25479e+06 survey1
1992 10 2 1.83709e+06 0.1 #_orig_obs: 6.60786e+06 survey1
1993 10 2 2.04005e+06 0.1 #_orig_obs: 1.70994e+06 survey1
1994 10 2 1.68864e+06 0.1 #_orig_obs: 1.00865e+06 survey1
1995 10 2 1.59938e+06 0.1 #_orig_obs: 1.85517e+06 survey1
1996 10 2 1.46703e+06 0.1 #_orig_obs: 1.83768e+06 survey1
1997 10 2 2.95816e+06 0.1 #_orig_obs: 1.42472e+06 survey1
1998 10 2 2.80849e+06 0.1 #_orig_obs: 1.42479e+07 survey1
1999 10 2 3.26469e+06 0.1 #_orig_obs: 6.43402e+06 survey1
2000 10 2 2.40043e+06 0.1 #_orig_obs: 2.39328e+06 survey1
2001 10 2 2.44116e+06 0.1 #_orig_obs: 1.40284e+06 survey1
2002 10 2 2.16478e+06 0.1 #_orig_obs: 1.56085e+06 survey1
2003 10 2 1.66796e+06 0.1 #_orig_obs: 1.26877e+06 survey1
2004 10 2 3.24785e+06 0.1 #_orig_obs: 1.01914e+06 survey1
2005 10 2 5.14448e+06 0.1 #_orig_obs: 5.88313e+06 survey1
2006 10 2 3.55942e+06 0.1 #_orig_obs: 8.04381e+06 survey1
2007 10 2 3.3659e+06 0.1 #_orig_obs: 3.18229e+06 survey1
2008 10 2 3.5063e+06 0.1 #_orig_obs: 3.52945e+06 survey1
2009 10 2 3.13771e+06 0.1 #_orig_obs: 2.39792e+06 survey1
2010 10 2 4.92599e+06 0.1 #_orig_obs: 2.36562e+06 survey1
2011 10 2 5.54791e+06 0.1 #_orig_obs: 9.48175e+06 survey1
2012 10 2 4.81995e+06 0.1 #_orig_obs: 5.71121e+06 survey1
1985 4 3 797673 0.1 #_orig_obs: 1.61884e+06 survey2
1986 4 3 617410 0.1 #_orig_obs: 1.46524e+06 survey2
1987 4 3 493187 0.1 #_orig_obs: 915472 survey2
1988 4 3 502632 0.1 #_orig_obs: 222973 survey2
1989 4 3 397480 0.1 #_orig_obs: 205454 survey2
1990 4 3 658194 0.1 #_orig_obs: 156818 survey2
1991 4 3 810842 0.1 #_orig_obs: 342837 survey2
1992 4 3 620659 0.1 #_orig_obs: 2.04686e+06 survey2
1993 4 3 626073 0.1 #_orig_obs: 1.5609e+06 survey2
1994 4 3 583745 0.1 #_orig_obs: 363365 survey2
1995 4 3 453001 0.1 #_orig_obs: 572808 survey2
1996 4 3 502823 0.1 #_orig_obs: 543406 survey2
1997 4 3 905277 0.1 #_orig_obs: 331752 survey2
1998 4 3 1.0471e+06 0.1 #_orig_obs: 1.63648e+06 survey2
1999 4 3 800785 0.1 #_orig_obs: 4.12363e+06 survey2
2000 4 3 768997 0.1 #_orig_obs: 1.70526e+06 survey2
2001 4 3 1.00749e+06 0.1 #_orig_obs: 701033 survey2
2002 4 3 798812 0.1 #_orig_obs: 430437 survey2
2003 4 3 785793 0.1 #_orig_obs: 702960 survey2
2004 4 3 1.03689e+06 0.1 #_orig_obs: 254914 survey2
2005 4 3 1.45384e+06 0.1 #_orig_obs: 1.12405e+06 survey2
2006 4 3 1.05391e+06 0.1 #_orig_obs: 4.11092e+06 survey2
2007 4 3 1.2035e+06 0.1 #_orig_obs: 2.01791e+06 survey2
2008 4 3 1.07811e+06 0.1 #_orig_obs: 1.30826e+06 survey2
2009 4 3 1.10412e+06 0.1 #_orig_obs: 1.66939e+06 survey2
2010 4 3 1.45884e+06 0.1 #_orig_obs: 469887 survey2
2011 4 3 1.40057e+06 0.1 #_orig_obs: 1.63082e+06 survey2
2012 4 3 1.75213e+06 0.1 #_orig_obs: 2.72819e+06 survey2
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
 1990 10 2 0 0 118  0 0 0 0 1 2 2 7 8 18 14 14 6 5 5 1 3 3 4 1 5 4 5 2 1 1 2 2 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1991 10 2 0 0 40  0 0 0 0 0 0 0 0 0 0 0 10 2 1 0 4 0 3 2 5 3 3 1 4 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1992 10 2 0 0 122  0 0 0 0 0 0 0 0 0 0 0 0 0 0 34 2 2 4 9 7 6 14 5 6 8 7 4 5 2 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1993 10 2 0 0 119  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 61 1 4 3 4 3 3 5 3 4 2 3 5 1 3 1 4 1 5 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1994 10 2 0 0 53  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 26 2 1 1 5 1 3 3 0 3 0 0 1 1 0 1 1 1 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1995 10 2 0 0 261  0 0 0 0 0 0 0 0 0 0 37 13 14 9 6 5 6 17 19 12 23 14 12 7 12 9 9 11 4 6 1 2 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1996 10 2 0 0 192  0 0 0 0 0 0 4 6 15 21 19 14 10 10 7 5 4 10 5 10 5 7 6 4 5 2 6 5 2 3 0 2 2 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1997 10 2 0 0 110  0 0 0 0 0 2 2 4 10 6 7 11 11 9 2 3 5 4 4 5 4 5 4 0 0 0 1 1 2 1 2 2 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1998 10 2 0 0 176  0 0 0 0 0 0 0 0 0 0 0 0 0 53 13 2 15 9 14 8 16 10 11 9 3 3 3 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 10 2 0 0 495  0 0 0 0 0 0 0 0 0 0 88 25 25 19 15 19 16 20 24 20 28 24 23 21 28 14 86 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 10 2 0 0 464  0 0 0 0 0 2 4 13 22 27 22 34 15 22 14 14 13 18 23 16 24 23 18 18 14 12 23 6 14 15 5 5 5 7 5 2 4 3 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 10 2 0 0 268  0 0 0 0 1 3 4 5 16 21 12 28 14 8 4 11 5 11 10 7 17 13 11 8 4 6 11 8 5 5 0 1 0 5 2 4 4 3 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 10 2 0 0 602  0 0 0 0 0 0 0 0 26 28 22 28 22 26 16 22 20 40 28 47 27 46 33 21 25 22 18 8 9 13 55 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 10 2 0 0 56  0 0 0 0 0 0 0 3 1 5 4 10 2 0 1 1 0 1 3 4 1 4 3 2 0 0 2 4 2 1 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 10 2 0 0 294  0 0 0 0 2 3 5 17 24 31 32 31 33 13 12 4 8 7 9 6 6 9 4 4 4 7 2 2 6 0 3 3 0 2 2 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2005 10 2 0 0 740  0 0 0 0 0 4 8 22 32 40 65 57 51 34 24 29 34 45 30 38 39 45 40 21 19 15 9 11 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 10 2 0 0 335  0 0 0 0 0 0 0 0 0 0 0 0 0 116 6 8 4 20 16 20 19 16 23 19 10 6 9 8 7 9 2 2 6 2 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 10 2 0 0 553  0 0 0 0 1 0 6 16 32 44 50 39 34 21 15 11 18 18 17 23 23 32 20 21 26 11 9 12 5 11 4 4 4 7 3 3 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 10 2 0 0 344  0 0 0 0 0 0 0 0 0 0 0 0 0 70 15 9 16 18 25 24 34 22 16 24 13 7 9 8 7 7 4 4 3 2 2 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 10 2 0 0 149  0 0 0 0 0 0 1 7 10 15 13 16 9 2 1 5 3 2 4 6 7 3 4 4 6 2 4 2 4 2 0 5 3 3 1 1 1 1 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 10 2 0 0 172  0 0 0 0 0 1 1 8 7 16 18 20 20 11 8 2 6 7 5 1 6 10 3 7 0 3 3 2 0 1 2 1 0 0 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2011 10 2 0 0 889  0 0 0 0 1 1 17 27 31 56 63 64 46 38 32 27 42 46 44 45 52 50 44 28 21 20 20 16 7 12 10 4 6 5 4 2 3 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 10 2 0 0 464  0 0 0 0 0 0 0 0 0 77 27 34 20 23 13 10 14 17 21 27 25 30 24 19 13 9 9 11 4 7 30 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1985 4 3 0 0 1000  0 0 0 0 228 116 84 17 4 6 11 18 30 37 34 40 33 31 29 24 22 27 28 21 24 20 19 12 13 16 10 3 11 8 8 5 3 3 1 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1986 4 3 0 0 1000  0 0 0 0 0 0 0 0 0 0 212 18 32 33 49 58 53 32 45 46 33 42 37 32 28 33 34 34 30 23 15 18 11 12 13 8 5 4 4 2 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1987 4 3 0 0 1000  0 0 0 0 0 0 0 0 0 0 0 300 11 15 26 27 25 16 33 28 34 31 28 53 35 40 40 29 45 26 27 24 21 26 12 8 8 11 8 6 2 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1988 4 3 0 0 1000  0 0 0 0 101 66 42 23 7 6 6 11 22 18 26 31 31 29 25 30 21 32 26 29 36 25 26 31 47 40 22 37 35 25 24 14 13 14 5 8 3 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1989 4 3 0 0 1000  0 0 0 63 127 102 60 11 4 4 6 9 20 11 23 25 28 26 15 22 24 25 29 23 26 26 23 20 26 24 23 16 31 20 13 20 12 18 11 13 5 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1990 4 3 0 0 1000  0 0 0 100 172 177 110 26 7 3 9 7 11 21 19 18 19 19 10 13 17 10 11 14 13 17 14 12 16 10 8 15 14 12 7 6 13 14 8 11 8 4 2 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1991 4 3 0 0 1000  0 0 0 0 231 133 69 19 3 5 14 15 27 40 47 47 54 41 33 19 18 19 10 12 10 5 14 11 9 11 10 7 9 5 16 9 7 1 6 2 3 5 0 2 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0
 1992 4 3 0 0 1000  0 0 0 0 0 0 0 192 5 8 10 11 26 24 47 57 52 56 45 49 48 34 40 43 32 43 23 18 15 19 17 12 12 4 16 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1993 4 3 0 0 1000  0 0 0 0 152 110 82 22 4 3 2 6 6 12 24 17 19 22 25 18 28 35 33 29 33 44 46 38 27 26 17 19 28 9 14 13 8 6 7 7 0 1 4 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1994 4 3 0 0 1000  0 0 0 0 165 109 49 15 4 11 9 13 23 24 35 28 35 33 32 17 23 26 16 22 18 21 26 30 25 22 26 21 15 23 20 17 14 9 5 6 6 3 2 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1995 4 3 0 0 1000  0 0 0 0 0 195 39 9 2 3 6 8 15 34 43 44 29 31 36 30 29 27 30 32 30 30 37 33 34 27 23 18 22 19 15 18 14 10 8 6 5 5 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1996 4 3 0 0 1000  0 0 22 77 135 137 72 14 3 2 7 12 12 12 12 25 24 12 22 20 12 24 31 24 24 39 23 17 25 19 20 17 15 11 13 12 12 12 13 4 5 4 0 1 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1997 4 3 0 0 1000  0 0 32 78 166 195 86 28 7 5 10 12 22 25 17 28 31 22 26 11 18 6 15 8 10 13 15 12 13 10 8 8 8 6 9 7 3 7 6 3 5 2 4 0 1 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0
 1998 4 3 0 0 1000  0 0 0 0 0 361 66 14 8 1 14 18 29 31 50 40 57 41 35 23 26 20 16 17 14 18 12 11 9 10 6 6 8 6 4 5 11 2 3 1 1 1 2 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 1999 4 3 0 0 1000  0 0 0 0 0 212 43 15 5 7 16 19 22 39 39 50 53 36 39 39 29 33 27 35 28 23 25 29 21 17 19 21 59 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 4 3 0 0 1000  0 0 0 0 0 0 0 0 0 0 306 10 20 24 36 31 30 25 35 22 32 26 30 34 35 40 34 26 29 37 17 21 22 13 11 15 39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 4 3 0 0 1000  0 0 0 81 128 126 62 14 2 2 5 13 17 12 19 19 29 37 18 25 21 32 24 21 26 20 27 25 28 25 21 21 21 18 13 8 13 3 4 7 5 3 1 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 4 3 0 0 1000  0 0 0 37 56 54 42 7 4 2 15 8 22 38 48 43 51 53 31 34 29 26 29 23 26 39 24 32 27 26 21 20 23 22 13 15 20 7 8 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 4 3 0 0 1000  0 0 26 59 117 121 57 17 4 2 4 6 8 18 19 23 21 22 27 31 28 24 39 29 30 27 28 20 23 14 18 16 19 19 17 16 5 7 12 6 5 5 4 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 4 3 0 0 1000  0 0 21 112 182 178 96 18 6 4 6 9 17 22 18 21 25 16 20 10 11 8 14 11 12 13 9 8 19 17 20 17 11 9 4 5 1 7 3 5 4 4 1 3 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2005 4 3 0 0 1000  0 0 0 0 229 120 79 23 4 5 8 19 33 38 36 58 49 37 29 27 31 14 16 12 13 11 13 10 9 10 8 7 8 10 11 2 6 3 5 1 1 4 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 4 3 0 0 1000  0 0 0 0 0 0 298 11 5 8 7 16 14 41 29 35 47 50 46 36 38 27 40 41 36 31 32 21 14 13 16 5 10 7 7 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2007 4 3 0 0 1000  0 0 0 90 138 116 72 22 6 6 2 12 13 24 28 35 28 31 23 29 25 22 21 21 22 29 31 16 24 14 26 13 12 14 5 8 4 7 1 2 3 2 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 4 3 0 0 1000  0 0 0 0 0 151 34 14 5 7 11 19 28 37 54 53 57 49 39 28 28 32 20 24 36 32 17 34 29 30 17 23 20 18 12 5 37 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 4 3 0 0 1000  0 0 0 77 152 113 74 21 5 2 4 5 6 18 20 14 17 21 19 23 26 20 39 37 28 34 25 10 22 26 28 18 21 13 11 11 12 7 4 4 3 6 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 4 3 0 0 1000  0 0 0 103 178 140 78 27 6 6 12 12 16 19 13 27 24 24 18 16 13 15 9 17 21 15 19 21 23 17 14 16 22 13 8 15 6 3 3 4 1 1 2 1 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2011 4 3 0 0 1000  0 0 0 0 205 141 53 22 5 2 12 10 38 42 42 44 44 44 35 21 17 22 18 23 17 11 19 17 10 8 15 6 7 6 8 6 8 5 7 2 2 1 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 4 3 0 0 1000  0 0 0 0 186 116 76 17 2 3 8 19 19 14 33 39 47 40 26 30 28 30 34 23 33 29 15 23 12 20 8 12 5 8 7 8 10 7 4 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
1985  1 1  0 0 1 -1 -1 852  145 362 303 37 3 2 0
1986  1 1  0 0 1 -1 -1 583  48 244 249 38 2 2 0
1987  1 1  0 0 1 -1 -1 762  93 132 442 81 11 3 0
1988  1 1  0 0 1 -1 -1 737  101 265 240 108 19 4 0
1989  1 1  0 0 1 -1 -1 692  137 183 316 35 17 4 0
1990  1 1  0 0 1 -1 -1 684  266 197 152 58 11 0 0
1991  1 1  0 0 1 -1 -1 777  169 385 195 24 4 0 0
1992  1 1  0 0 1 -1 -1 568  41 195 306 26 0 0 0
1993  1 1  0 0 1 -1 -1 548  96 98 273 75 6 0 0
1994  1 1  0 0 1 -1 -1 526  93 238 117 71 7 0 0
1995  1 1  0 0 1 -1 -1 500  49 177 238 23 13 0 0
1996  1 1  0 0 1 -1 -1 463  120 95 182 54 6 6 0
1997  1 1  0 0 1 -1 -1 454  154 191 70 34 4 1 0
1998  1 1  0 0 1 -1 -1 459  92 237 122 3 5 0 0
1999  1 1  0 0 1 -1 -1 428  40 150 210 26 2 0 0
2000  1 1  0 0 1 -1 -1 366  44 85 192 41 4 0 0
2001  1 1  0 0 1 -1 -1 501  101 151 185 53 10 1 0
2002  1 1  0 0 1 -1 -1 439  38 209 151 33 8 0 0
2003  1 1  0 0 1 -1 -1 402  71 90 205 27 7 1 1
2004  1 1  0 0 1 -1 -1 459  206 123 84 41 5 0 0
2005  1 1  0 0 1 -1 -1 394  86 205 98 5 0 0 0
2006  1 1  0 0 1 -1 -1 421  56 126 227 12 0 0 0
2007  1 1  0 0 1 -1 -1 532  108 144 224 53 3 0 0
2008  1 1  0 0 1 -1 -1 445  33 208 150 47 7 0 0
2009  1 1  0 0 1 -1 -1 402  82 71 228 16 2 3 0
2010  1 1  0 0 1 -1 -1 442  138 174 77 48 5 0 0
2011  1 1  0 0 1 -1 -1 434  77 193 147 11 6 0 0
2012  1 1  0 0 1 -1 -1 370  69 136 152 13 0 0 0
1990  10 2  0 0 1 -1 -1 118  72 29 11 6 0 0 0
1991  10 2  0 0 1 -1 -1 40  15 22 3 0 0 0 0
1992  10 2  0 0 1 -1 -1 122  20 64 31 7 0 0 0
1993  10 2  0 0 1 -1 -1 119  47 26 30 13 3 0 0
1994  10 2  0 0 1 -1 -1 53  15 38 0 0 0 0 0
1995  10 2  0 0 1 -1 -1 261  69 121 51 9 5 6 0
1996  10 2  0 0 1 -1 -1 192  115 33 30 14 0 0 0
1997  10 2  0 0 1 -1 -1 110  65 33 8 4 0 0 0
1998  10 2  0 0 1 -1 -1 176  73 83 20 0 0 0 0
1999  10 2  0 0 1 -1 -1 495  126 224 131 14 0 0 0
2000  10 2  0 0 1 -1 -1 464  162 155 95 44 8 0 0
2001  10 2  0 0 1 -1 -1 268  130 77 32 18 11 0 0
2002  10 2  0 0 1 -1 -1 602  136 318 95 26 18 8 1
2003  10 2  0 0 1 -1 -1 56  19 13 24 0 0 0 0
2004  10 2  0 0 1 -1 -1 294  200 66 28 0 0 0 0
2005  10 2  0 0 1 -1 -1 740  288 378 54 11 8 1 0
2006  10 2  0 0 1 -1 -1 335  121 128 70 16 0 0 0
2007  10 2  0 0 1 -1 -1 553  278 139 136 0 0 0 0
2008  10 2  0 0 1 -1 -1 344  59 195 63 15 12 0 0
2009  10 2  0 0 1 -1 -1 149  88 25 36 0 0 0 0
2010  10 2  0 0 1 -1 -1 172  91 61 20 0 0 0 0
2011  10 2  0 0 1 -1 -1 889  383 370 95 41 0 0 0
2012  10 2  0 0 1 -1 -1 464  197 164 84 14 3 2 0
1985  4 3  0 0 1 -1 -1 1000  425 259 186 81 49 0 0
1986  4 3  0 0 1 -1 -1 1000  199 362 240 142 34 16 7
1987  4 3  0 0 1 -1 -1 1000  257 147 296 182 81 26 11
1988  4 3  0 0 1 -1 -1 1000  258 211 137 216 122 39 17
1989  4 3  0 0 1 -1 -1 1000  366 155 183 95 118 64 19
1990  4 3  0 0 1 -1 -1 1000  628 152 70 61 23 43 23
1991  4 3  0 0 1 -1 -1 1000  408 379 90 52 30 12 29
1992  4 3  0 0 1 -1 -1 1000  188 337 300 89 34 18 34
1993  4 3  0 0 1 -1 -1 1000  361 120 270 193 37 19 0
1994  4 3  0 0 1 -1 -1 1000  323 264 87 157 169 0 0
1995  4 3  0 0 1 -1 -1 1000  241 240 223 84 98 89 25
1996  4 3  0 0 1 -1 -1 1000  479 117 162 135 35 43 29
1997  4 3  0 0 1 -1 -1 1000  642 177 51 51 48 31 0
1998  4 3  0 0 1 -1 -1 1000  432 354 136 28 21 29 0
1999  4 3  0 0 1 -1 -1 1000  224 318 312 146 0 0 0
2000  4 3  0 0 1 -1 -1 1000  302 174 252 202 47 7 16
2001  4 3  0 0 1 -1 -1 1000  382 178 122 168 110 28 12
2002  4 3  0 0 1 -1 -1 1000  207 326 175 120 94 62 16
2003  4 3  0 0 1 -1 -1 1000  338 127 276 113 55 48 43
2004  4 3  0 0 1 -1 -1 1000  611 151 70 168 0 0 0
2005  4 3  0 0 1 -1 -1 1000  407 378 215 0 0 0 0
2006  4 3  0 0 1 -1 -1 1000  324 264 291 121 0 0 0
2007  4 3  0 0 1 -1 -1 1000  454 170 182 194 0 0 0
2008  4 3  0 0 1 -1 -1 1000  206 346 176 151 121 0 0
2009  4 3  0 0 1 -1 -1 1000  440 112 230 101 64 53 0
2010  4 3  0 0 1 -1 -1 1000  531 219 54 128 28 19 21
2011  4 3  0 0 1 -1 -1 1000  412 302 128 158 0 0 0
2012  4 3  0 0 1 -1 -1 1000  366 233 238 163 0 0 0
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

