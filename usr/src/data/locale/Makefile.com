#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source.  A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#

#
# Copyright 2017 Nexenta Systems, Inc.
# Copyright 2011 EveryCity Ltd. All rights reserved.
# Copyright 2013 DEY Storage Systems, Inc.
# Copyright 2016 Joyent, Inc.
#

# List of autogenerated charmaps, keep in sync with supported locales
_CHARMAPS=	GB18030 \
		ISO8859-1 \
		ISO8859-2 \
		ISO8859-5 \
		ISO8859-7 \
		ISO8859-9 \
		ISO8859-13 \
		ISO8859-15 \
		KOI8-R \
		UTF-8

# The following charmaps are not autogenerated:
# ISO8859-11	missing from current CLDR release
CHARMAPS=	$(_CHARMAPS) \
		ISO8859-11

# List of autogenerated (unless stated otherwise) locales
GB18030_LOCALES= \
		zh_CN

ISO8859_1_LOCALES= \
		da_DK \
		de_CH de_DE \
		en_AU en_CA en_GB en_NZ en_US \
		es_AR es_BO es_CL es_CO es_EC es_ES es_GT es_MX es_NI es_PA \
		es_PE es_SV es_UY es_VE \
		fr_CA fr_CH fr_FR \
		is_IS \
		it_CH it_IT \
		sv_SE

ISO8859_2_LOCALES= \
		cs_CZ \
		hr_HR \
		hu_HU \
		pl_PL \
		sq_AL

ISO8859_5_LOCALES= \
		bg_BG \
		mk_MK \
		ru_RU

ISO8859_7_LOCALES= \
		el_GR

ISO8859_9_LOCALES= \
		tr_TR

_ISO8859_11_LOCALES=
# The following ISO8859-11 locales are not autogenerated:
# th_TH		missing from current CLDR release
ISO8859_11_LOCALES= \
		$(_ISO8859_11_LOCALES) \
		th_TH

ISO8859_13_LOCALES= \
		lt_LT \
		lv_LV

ISO8859_15_LOCALES= \
		ca_ES \
		da_DK \
		de_AT de_DE \
		en_GB en_IE en_US \
		es_ES \
		fi_FI \
		fr_BE fr_FR \
		it_IT \
		nl_BE nl_NL \
		pt_PT \
		sv_FI sv_SE

KOI8_R_LOCALES=	ru_RU

_UTF_8_LOCALES= af_ZA \
		ar_AE ar_BH ar_DZ ar_EG ar_IQ ar_JO ar_KW ar_LB ar_LY ar_MA \
		ar_OM ar_QA ar_SA ar_TN ar_YE \
		as_IN \
		az_AZ \
		be_BY \
		bg_BG \
		bn_BD bn_IN \
		bo_CN bo_IN \
		bs_BA \
		ca_ES \
		cs_CZ \
		da_DK \
		de_AT de_BE de_CH de_DE de_LI de_LU \
		el_CY el_GR \
		en_AU en_BW en_BZ en_CA en_GB en_HK en_IE en_IN en_JM en_MH \
		en_MT en_NA en_NZ en_PH en_PK en_SG en_TT en_US en_ZA en_ZW \
		es_AR es_BO es_CL es_CO es_CR es_DO es_EC es_ES es_GQ es_GT \
		es_HN es_MX es_NI es_PA es_PE es_PR es_PY es_SV es_US es_UY \
		es_VE \
		et_EE \
		fi_FI \
		fil_PH \
		fr_BE fr_CA fr_CF fr_CH fr_FR fr_GN fr_LU fr_MC fr_MG fr_ML \
		fr_NE fr_SN \
		ga_IE \
		gu_IN \
		he_IL \
		hi_IN \
		hr_HR \
		hu_HU \
		hy_AM \
		id_ID \
		ii_CN \
		is_IS \
		it_CH it_IT \
		ja_JP \
		ka_GE \
		kk_KZ \
		kn_IN \
		ko_KR \
		kok_IN \
		lt_LT \
		lv_LV \
		mk_MK \
		ml_IN \
		mn_MN \
		mr_IN \
		ms_MY \
		mt_MT \
		ne_IN ne_NP \
		nl_BE nl_NL \
		nb_NO \
		nn_NO \
		or_IN \
		pa_IN pa_PK \
		pl_PL \
		pt_BR pt_GW pt_MZ pt_PT \
		ro_MD ro_RO \
		ru_MD ru_RU ru_UA \
		si_LK \
		sk_SK \
		sl_SI \
		sq_AL \
		sr_BA sr_ME sr_RS \
		sv_FI sv_SE \
		ta_IN ta_LK \
		te_IN \
		th_TH \
		tr_TR \
		uk_UA \
		ug_CN \
		ur_IN ur_PK \
		vi_VN \
		zh_CN zh_HK zh_MO zh_SG zh_TW
# The following UTF-8 locales are not autogenerated:
# km_KH		erroneous LC_MESSAGES section, keeping old version
# mn_CN		missing from current CLDR release, keeping old version
# sa_IN		missing from current CLDR release, keeping old version
# zz_AA		translation test locale
UTF_8_LOCALES=	$(_UTF_8_LOCALES) \
		km_KH \
		mn_CN \
		sa_IN \
		zz_AA

# List of locales that happen to have translations for them present in the gate
# zz_AA.UTF-8	locale used for testing translation
TRANSLOCS=	zz_AA.UTF-8
PRIVTRANSLOCS= 	zz_AA.UTF-8