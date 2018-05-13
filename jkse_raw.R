#clear all 
rm(list=ls())

setwd("C:/Users/lukman/OneDrive/5_Finance/2_Yahoo/jkse/1_csv")

df.1= read.csv("AALI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.2= read.csv("ABBA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.3= read.csv("ABDA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.4= read.csv("ABMM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.5= read.csv("ACES.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.6= read.csv("ACST.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.7= read.csv("ADES.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.8= read.csv("ADHI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.9= read.csv("ADMF.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.10= read.csv("ADMG.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.11= read.csv("ADRO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.12= read.csv("AGII.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.13= read.csv("AGRO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.14= read.csv("AGRO-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.15= read.csv("AGRS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.16= read.csv("AHAP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.17= read.csv("AIMS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.18= read.csv("AISA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.19= read.csv("AKKU.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.20= read.csv("AKPI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.21= read.csv("AKRA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.22= read.csv("AKSI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.23= read.csv("ALDO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.24= read.csv("ALKA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.25= read.csv("ALMI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.26= read.csv("ALTO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.27= read.csv("AMAG.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.28= read.csv("AMFG.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.29= read.csv("AMIN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.30= read.csv("AMRT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.31= read.csv("ANJT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.32= read.csv("ANTM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.33= read.csv("APEX.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.34= read.csv("APIC.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.35= read.csv("APIC-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.36= read.csv("APII.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.37= read.csv("APLI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.38= read.csv("APLN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.39= read.csv("APOL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.40= read.csv("ARGO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.41= read.csv("ARII.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.42= read.csv("ARMY.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.43= read.csv("ARNA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.44= read.csv("ARTA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.45= read.csv("ARTI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.46= read.csv("ARTO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.47= read.csv("ASBI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.48= read.csv("ASDM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.49= read.csv("ASGR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.50= read.csv("ASIA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.51= read.csv("ASII.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.52= read.csv("ASJT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.53= read.csv("ASMI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.54= read.csv("ASRI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.55= read.csv("ASRM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.56= read.csv("ASSA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.57= read.csv("ATIC.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.58= read.csv("ATPK.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.59= read.csv("AUTO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.60= read.csv("BABP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.61= read.csv("BABP-W2.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.62= read.csv("BACA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.63= read.csv("BACA-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.64= read.csv("BACA-W2.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.65= read.csv("BAEK.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.66= read.csv("BAJA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.67= read.csv("BALI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.68= read.csv("BALI-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.69= read.csv("BAPA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.70= read.csv("BATA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.71= read.csv("BAYU.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.72= read.csv("BBCA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.73= read.csv("BBHI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.74= read.csv("BBKP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.75= read.csv("BBLD.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.76= read.csv("BBMD.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.77= read.csv("BBNI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.78= read.csv("BBNP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.79= read.csv("BBRI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.80= read.csv("BBRM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.81= read.csv("BBTN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.82= read.csv("BBYB.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.83= read.csv("BBYB-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.84= read.csv("BCAP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.85= read.csv("BCIC.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.86= read.csv("BCIP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.87= read.csv("BDMN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.88= read.csv("BEKS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.89= read.csv("BELL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.90= read.csv("BEST.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.91= read.csv("BFIN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.92= read.csv("BGTG.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.93= read.csv("BHIT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.94= read.csv("BIKA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.95= read.csv("BIMA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.96= read.csv("BINA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.97= read.csv("BIPI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.98= read.csv("BIPP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.99= read.csv("BIPP-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.100= read.csv("BIPP-W2.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.101= read.csv("BIRD.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.102= read.csv("BISI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.103= read.csv("BJBR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.104= read.csv("BJTM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.105= read.csv("BKDP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.106= read.csv("BKSL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.107= read.csv("BKSL-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.108= read.csv("BKSW.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.109= read.csv("BLTA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.110= read.csv("BLTZ.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.111= read.csv("BMAS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.112= read.csv("BMRI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.113= read.csv("BMSR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.114= read.csv("BMTR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.115= read.csv("BNBA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.116= read.csv("BNBR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.117= read.csv("BNGA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.118= read.csv("BNII.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.119= read.csv("BNLI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.120= read.csv("BOGA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.121= read.csv("BOLT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.122= read.csv("BORN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.123= read.csv("BPFI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.124= read.csv("BPII.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.125= read.csv("BRAM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.126= read.csv("BRAU.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.127= read.csv("BRMS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.128= read.csv("BRNA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.129= read.csv("BRPT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.130= read.csv("BSDE.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.131= read.csv("BSIM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.132= read.csv("BSIM-W3.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.133= read.csv("BSSR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.134= read.csv("BSWD.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.135= read.csv("BTEK.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.136= read.csv("BTEL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.137= read.csv("BTON.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.138= read.csv("BTPN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.139= read.csv("BUDI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.140= read.csv("BUKK.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.141= read.csv("BULL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.142= read.csv("BULL-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.143= read.csv("BUMI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.144= read.csv("BUVA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.145= read.csv("BVIC.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.146= read.csv("BWPT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.147= read.csv("BYAN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.148= read.csv("CAMP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.149= read.csv("CANI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.150= read.csv("CARS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.151= read.csv("CASA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.152= read.csv("CASA-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.153= read.csv("CASS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.154= read.csv("CEKA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.155= read.csv("CENT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.156= read.csv("CFIN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.157= read.csv("CINT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.158= read.csv("CITA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.159= read.csv("CKRA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.160= read.csv("CLEO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.161= read.csv("CLPI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.162= read.csv("CMNP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.163= read.csv("CMPP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.164= read.csv("CNKO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.165= read.csv("CNTB.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.166= read.csv("CNTX.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.167= read.csv("COWL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.168= read.csv("CPGT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.169= read.csv("CPIN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.170= read.csv("CPRO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.171= read.csv("CSAP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.172= read.csv("CSIS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.173= read.csv("CTBN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.174= read.csv("CTRA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.175= read.csv("CTTH.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.176= read.csv("DAJK.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.177= read.csv("DART.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.178= read.csv("DAVO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.179= read.csv("DAYA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.180= read.csv("DEFI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.181= read.csv("DEWA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.182= read.csv("DGIK.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.183= read.csv("DILD.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.184= read.csv("DKFT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.185= read.csv("DLTA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.186= read.csv("DMAS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.187= read.csv("DNAR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.188= read.csv("DNET.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.189= read.csv("DOID.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.190= read.csv("DPNS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.191= read.csv("DPUM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.192= read.csv("DSFI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.193= read.csv("DSNG.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.194= read.csv("DSSA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.195= read.csv("DUTI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.196= read.csv("DVLA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.197= read.csv("DWGL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.198= read.csv("DYAN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.199= read.csv("ECII.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.200= read.csv("EKAD.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.201= read.csv("ELSA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.202= read.csv("ELTY.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.203= read.csv("EMDE.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.204= read.csv("EMTK.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.205= read.csv("ENRG.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.206= read.csv("EPMT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.207= read.csv("ERAA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.208= read.csv("ERTX.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.209= read.csv("ESSA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.210= read.csv("ESTI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.211= read.csv("ETWA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.212= read.csv("EXCL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.213= read.csv("FAST.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.214= read.csv("FASW.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.215= read.csv("FINN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.216= read.csv("FIRE.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.217= read.csv("FIRE-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.218= read.csv("FISH.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.219= read.csv("FMII.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.220= read.csv("FORU.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.221= read.csv("FORZ.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.222= read.csv("FORZ-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.223= read.csv("FPNI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.224= read.csv("FREN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.225= read.csv("GAMA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.226= read.csv("GDST.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.227= read.csv("GDYR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.228= read.csv("GEMA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.229= read.csv("GEMS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.230= read.csv("GGRM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.231= read.csv("GIAA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.232= read.csv("GJTL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.233= read.csv("GLOB.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.234= read.csv("GMCW.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.235= read.csv("GMFI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.236= read.csv("GMTD.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.237= read.csv("GOLD.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.238= read.csv("GOLL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.239= read.csv("GOLL-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.240= read.csv("GPRA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.241= read.csv("GREN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.242= read.csv("GSMF.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.243= read.csv("GTBO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.244= read.csv("GWSA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.245= read.csv("GZCO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.246= read.csv("HADE.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.247= read.csv("HDFA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.248= read.csv("HDTX.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.249= read.csv("HERO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.250= read.csv("HEXA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.251= read.csv("HITS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.252= read.csv("HMSP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.253= read.csv("HOKI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.254= read.csv("HOKI-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.255= read.csv("HOME.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.256= read.csv("HOTL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.257= read.csv("HOTL-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.258= read.csv("HRTA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.259= read.csv("HRUM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.260= read.csv("IATA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.261= read.csv("IBFN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.262= read.csv("IBST.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.263= read.csv("ICBP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.264= read.csv("ICON.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.265= read.csv("IDPR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.266= read.csv("IGAR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.267= read.csv("IIKP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.268= read.csv("IKAI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.269= read.csv("IKBI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.270= read.csv("IMAS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.271= read.csv("IMJS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.272= read.csv("IMPC.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.273= read.csv("INAF.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.274= read.csv("INAI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.275= read.csv("INCF.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.276= read.csv("INCI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.277= read.csv("INCO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.278= read.csv("INDF.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.279= read.csv("INDR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.280= read.csv("INDS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.281= read.csv("INDX.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.282= read.csv("INDY.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.283= read.csv("INKP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.284= read.csv("INPC.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.285= read.csv("INPC-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.286= read.csv("INPP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.287= read.csv("INRU.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.288= read.csv("INTA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.289= read.csv("INTA-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.290= read.csv("INTD.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.291= read.csv("INTP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.292= read.csv("INVS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.293= read.csv("IPCM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.294= read.csv("IPOL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.295= read.csv("ISAT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.296= read.csv("ISSP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.297= read.csv("ITMA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.298= read.csv("ITMG.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.299= read.csv("ITTG.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.300= read.csv("JAWA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.301= read.csv("JECC.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.302= read.csv("JGLE.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.303= read.csv("JIHD.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.304= read.csv("JKON.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.305= read.csv("JKSW.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.306= read.csv("JMAS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.307= read.csv("JPFA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.308= read.csv("JPRS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.309= read.csv("JRPT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.310= read.csv("JSMR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.311= read.csv("JSPT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.312= read.csv("JTPE.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.313= read.csv("KAEF.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.314= read.csv("KARW.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.315= read.csv("KBLI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.316= read.csv("KBLM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.317= read.csv("KBLV.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.318= read.csv("KBRI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.319= read.csv("KDSI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.320= read.csv("KIAS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.321= read.csv("KICI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.322= read.csv("KIJA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.323= read.csv("KINO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.324= read.csv("KIOS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.325= read.csv("KIOS-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.326= read.csv("KKGI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.327= read.csv("KLBF.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.328= read.csv("KOBX.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.329= read.csv("KOIN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.330= read.csv("KONI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.331= read.csv("KOPI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.332= read.csv("KPIG.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.333= read.csv("KRAH.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.334= read.csv("KRAS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.335= read.csv("KREN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.336= read.csv("LAMI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.337= read.csv("LAPD.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.338= read.csv("LCGP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.339= read.csv("LEAD.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.340= read.csv("LINK.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.341= read.csv("LION.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.342= read.csv("LMAS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.343= read.csv("LMPI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.344= read.csv("LMSH.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.345= read.csv("LPCK.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.346= read.csv("LPGI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.347= read.csv("LPIN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.348= read.csv("LPKR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.349= read.csv("LPLI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.350= read.csv("LPPF.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.351= read.csv("LPPS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.352= read.csv("LRNA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.353= read.csv("LRNA-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.354= read.csv("LSIP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.355= read.csv("LTLS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.356= read.csv("MABA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.357= read.csv("MAGP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.358= read.csv("MAIN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.359= read.csv("MAMI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.360= read.csv("MAMIP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.361= read.csv("MAPB.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.362= read.csv("MAPI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.363= read.csv("MARI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.364= read.csv("MARK.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.365= read.csv("MASA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.366= read.csv("MAYA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.367= read.csv("MBAP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.368= read.csv("MBSS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.369= read.csv("MBTO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.370= read.csv("MCAS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.371= read.csv("MCOR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.372= read.csv("MDIA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.373= read.csv("MDKA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.374= read.csv("MDLN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.375= read.csv("MDRN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.376= read.csv("MEDC.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.377= read.csv("MEGA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.378= read.csv("MERK.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.379= read.csv("META.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.380= read.csv("MFIN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.381= read.csv("MFMI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.382= read.csv("MGNA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.383= read.csv("MICE.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.384= read.csv("MIDI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.385= read.csv("MIKA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.386= read.csv("MIRA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.387= read.csv("MITI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.388= read.csv("MKNT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.389= read.csv("MKPI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.390= read.csv("MLBI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.391= read.csv("MLIA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.392= read.csv("MLPL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.393= read.csv("MLPT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.394= read.csv("MMLP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.395= read.csv("MNCN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.396= read.csv("MPMX.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.397= read.csv("MPOW.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.398= read.csv("MPPA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.399= read.csv("MRAT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.400= read.csv("MREI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.401= read.csv("MSKY.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.402= read.csv("MTDL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.403= read.csv("MTFN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.404= read.csv("MTLA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.405= read.csv("MTRA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.406= read.csv("MTSM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.407= read.csv("MTWI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.408= read.csv("MYOH.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.409= read.csv("MYOR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.410= read.csv("MYRX.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.411= read.csv("MYRXP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.412= read.csv("MYTX.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.413= read.csv("NAGA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.414= read.csv("NASA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.415= read.csv("NASA-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.416= read.csv("NELY.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.417= read.csv("NIKL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.418= read.csv("NIPS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.419= read.csv("NIRO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.420= read.csv("NISP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.421= read.csv("NOBU.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.422= read.csv("NRCA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.423= read.csv("OASA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.424= read.csv("OCAP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.425= read.csv("OKAS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.426= read.csv("OMRE.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.427= read.csv("PADI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.428= read.csv("PALM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.429= read.csv("PANR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.430= read.csv("PANS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.431= read.csv("PBID.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.432= read.csv("PBRX.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.433= read.csv("PBSA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.434= read.csv("PDES.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.435= read.csv("PEGE.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.436= read.csv("PGAS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.437= read.csv("PGLI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.438= read.csv("PICO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.439= read.csv("PJAA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.440= read.csv("PKPK.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.441= read.csv("PLAS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.442= read.csv("PLIN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.443= read.csv("PNBN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.444= read.csv("PNBS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.445= read.csv("PNIN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.446= read.csv("PNLF.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.447= read.csv("PNSE.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.448= read.csv("POLY.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.449= read.csv("POOL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.450= read.csv("POOL-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.451= read.csv("PORT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.452= read.csv("POWR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.453= read.csv("PPRE.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.454= read.csv("PPRO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.455= read.csv("PRAS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.456= read.csv("PRDA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.457= read.csv("PSAB.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.458= read.csv("PSDN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.459= read.csv("PSKT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.460= read.csv("PSKT-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.461= read.csv("PSSI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.462= read.csv("PTBA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.463= read.csv("PTIS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.464= read.csv("PTPP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.465= read.csv("PTRO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.466= read.csv("PTSN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.467= read.csv("PTSP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.468= read.csv("PUDP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.469= read.csv("PWON.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.470= read.csv("PYFA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.471= read.csv("RAJA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.472= read.csv("RALS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.473= read.csv("RANC.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.474= read.csv("RBMS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.475= read.csv("RDTX.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.476= read.csv("RELI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.477= read.csv("RICY.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.478= read.csv("RIGS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.479= read.csv("RIMO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.480= read.csv("RMBA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.481= read.csv("RODA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.482= read.csv("ROTI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.483= read.csv("RUIS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.484= read.csv("SAFE.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.485= read.csv("SAIP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.486= read.csv("SAME.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.487= read.csv("SCBD.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.488= read.csv("SCCO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.489= read.csv("SCMA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.490= read.csv("SCPI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.491= read.csv("SDMU.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.492= read.csv("SDPC.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.493= read.csv("SDRA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.494= read.csv("SGRO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.495= read.csv("SHID.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.496= read.csv("SHIP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.497= read.csv("SIAP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.498= read.csv("SIDO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.499= read.csv("SILO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.500= read.csv("SIMA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.501= read.csv("SIMP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.502= read.csv("SIPD.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.503= read.csv("SKBM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.504= read.csv("SKLT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.505= read.csv("SKYB.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.506= read.csv("SMAR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.507= read.csv("SMBR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.508= read.csv("SMCB.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.509= read.csv("SMDM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.510= read.csv("SMDR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.511= read.csv("SMGR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.512= read.csv("SMMA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.513= read.csv("SMMT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.514= read.csv("SMRA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.515= read.csv("SMRU.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.516= read.csv("SMSM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.517= read.csv("SOBI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.518= read.csv("SOCI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.519= read.csv("SONA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.520= read.csv("SPMA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.521= read.csv("SQBB.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.522= read.csv("SQBI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.523= read.csv("SQMI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.524= read.csv("SRAJ.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.525= read.csv("SRIL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.526= read.csv("SRSN.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.527= read.csv("SRTG.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.528= read.csv("SSIA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.529= read.csv("SSMS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.530= read.csv("SSTM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.531= read.csv("STAR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.532= read.csv("STTP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.533= read.csv("SUGI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.534= read.csv("SULI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.535= read.csv("SUPR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.536= read.csv("TALF.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.537= read.csv("TAMU.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.538= read.csv("TARA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.539= read.csv("TAXI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.540= read.csv("TBIG.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.541= read.csv("TBLA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.542= read.csv("TBMS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.543= read.csv("TCID.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.544= read.csv("TELE.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.545= read.csv("TFCO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.546= read.csv("TGKA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.547= read.csv("TGRA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.548= read.csv("TIFA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.549= read.csv("TINS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.550= read.csv("TIRA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.551= read.csv("TIRT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.552= read.csv("TKGA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.553= read.csv("TKIM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.554= read.csv("TLKM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.555= read.csv("TMAS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.556= read.csv("TMPI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.557= read.csv("TMPO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.558= read.csv("TOBA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.559= read.csv("TOPS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.560= read.csv("TOTL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.561= read.csv("TOTO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.562= read.csv("TOWR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.563= read.csv("TPIA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.564= read.csv("TPMA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.565= read.csv("TRAM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.566= read.csv("TRIL.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.567= read.csv("TRIM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.568= read.csv("TRIO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.569= read.csv("TRIS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.570= read.csv("TRST.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.571= read.csv("TRUB.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.572= read.csv("TRUS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.573= read.csv("TSPC.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.574= read.csv("TURI.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.575= read.csv("ULTJ.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.576= read.csv("UNIC.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.577= read.csv("UNIT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.578= read.csv("UNSP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.579= read.csv("UNTR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.580= read.csv("UNTX.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.581= read.csv("UNVR.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.582= read.csv("VICO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.583= read.csv("VINS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.584= read.csv("VINS-W.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.585= read.csv("VIVA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.586= read.csv("VOKS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.587= read.csv("VRNA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.588= read.csv("WAPO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.589= read.csv("WEGE.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.590= read.csv("WEHA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.591= read.csv("WICO.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.592= read.csv("WIIM.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.593= read.csv("WIKA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.594= read.csv("WINS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.595= read.csv("WOMF.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.596= read.csv("WOOD.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.597= read.csv("WSBP.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.598= read.csv("WSKT.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.599= read.csv("WTON.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.600= read.csv("YPAS.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.601= read.csv("YULE.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.602= read.csv("ZBRA.JK.csv", sep = ",")[c('Date','Adj.Close')]
df.603= read.csv("ZINC.JK.csv", sep = ",")[c('Date','Adj.Close')]

df.1= data.frame(df.1,code="aali")
df.2= data.frame(df.2,code="abba")
df.3= data.frame(df.3,code="abda")
df.4= data.frame(df.4,code="abmm")
df.5= data.frame(df.5,code="aces")
df.6= data.frame(df.6,code="acst")
df.7= data.frame(df.7,code="ades")
df.8= data.frame(df.8,code="adhi")
df.9= data.frame(df.9,code="admf")
df.10= data.frame(df.10,code="admg")
df.11= data.frame(df.11,code="adro")
df.12= data.frame(df.12,code="agii")
df.13= data.frame(df.13,code="agro")
df.14= data.frame(df.14,code="agro-w")
df.15= data.frame(df.15,code="agrs")
df.16= data.frame(df.16,code="ahap")
df.17= data.frame(df.17,code="aims")
df.18= data.frame(df.18,code="aisa")
df.19= data.frame(df.19,code="akku")
df.20= data.frame(df.20,code="akpi")
df.21= data.frame(df.21,code="akra")
df.22= data.frame(df.22,code="aksi")
df.23= data.frame(df.23,code="aldo")
df.24= data.frame(df.24,code="alka")
df.25= data.frame(df.25,code="almi")
df.26= data.frame(df.26,code="alto")
df.27= data.frame(df.27,code="amag")
df.28= data.frame(df.28,code="amfg")
df.29= data.frame(df.29,code="amin")
df.30= data.frame(df.30,code="amrt")
df.31= data.frame(df.31,code="anjt")
df.32= data.frame(df.32,code="antm")
df.33= data.frame(df.33,code="apex")
df.34= data.frame(df.34,code="apic")
df.35= data.frame(df.35,code="apic-w")
df.36= data.frame(df.36,code="apii")
df.37= data.frame(df.37,code="apli")
df.38= data.frame(df.38,code="apln")
df.39= data.frame(df.39,code="apol")
df.40= data.frame(df.40,code="argo")
df.41= data.frame(df.41,code="arii")
df.42= data.frame(df.42,code="army")
df.43= data.frame(df.43,code="arna")
df.44= data.frame(df.44,code="arta")
df.45= data.frame(df.45,code="arti")
df.46= data.frame(df.46,code="arto")
df.47= data.frame(df.47,code="asbi")
df.48= data.frame(df.48,code="asdm")
df.49= data.frame(df.49,code="asgr")
df.50= data.frame(df.50,code="asia")
df.51= data.frame(df.51,code="asii")
df.52= data.frame(df.52,code="asjt")
df.53= data.frame(df.53,code="asmi")
df.54= data.frame(df.54,code="asri")
df.55= data.frame(df.55,code="asrm")
df.56= data.frame(df.56,code="assa")
df.57= data.frame(df.57,code="atic")
df.58= data.frame(df.58,code="atpk")
df.59= data.frame(df.59,code="auto")
df.60= data.frame(df.60,code="babp")
df.61= data.frame(df.61,code="babp-w2")
df.62= data.frame(df.62,code="baca")
df.63= data.frame(df.63,code="baca-w")
df.64= data.frame(df.64,code="baca-w2")
df.65= data.frame(df.65,code="baek")
df.66= data.frame(df.66,code="baja")
df.67= data.frame(df.67,code="bali")
df.68= data.frame(df.68,code="bali-w")
df.69= data.frame(df.69,code="bapa")
df.70= data.frame(df.70,code="bata")
df.71= data.frame(df.71,code="bayu")
df.72= data.frame(df.72,code="bbca")
df.73= data.frame(df.73,code="bbhi")
df.74= data.frame(df.74,code="bbkp")
df.75= data.frame(df.75,code="bbld")
df.76= data.frame(df.76,code="bbmd")
df.77= data.frame(df.77,code="bbni")
df.78= data.frame(df.78,code="bbnp")
df.79= data.frame(df.79,code="bbri")
df.80= data.frame(df.80,code="bbrm")
df.81= data.frame(df.81,code="bbtn")
df.82= data.frame(df.82,code="bbyb")
df.83= data.frame(df.83,code="bbyb-w")
df.84= data.frame(df.84,code="bcap")
df.85= data.frame(df.85,code="bcic")
df.86= data.frame(df.86,code="bcip")
df.87= data.frame(df.87,code="bdmn")
df.88= data.frame(df.88,code="beks")
df.89= data.frame(df.89,code="bell")
df.90= data.frame(df.90,code="best")
df.91= data.frame(df.91,code="bfin")
df.92= data.frame(df.92,code="bgtg")
df.93= data.frame(df.93,code="bhit")
df.94= data.frame(df.94,code="bika")
df.95= data.frame(df.95,code="bima")
df.96= data.frame(df.96,code="bina")
df.97= data.frame(df.97,code="bipi")
df.98= data.frame(df.98,code="bipp")
df.99= data.frame(df.99,code="bipp-w")
df.100= data.frame(df.100,code="bipp-w2")
df.101= data.frame(df.101,code="bird")
df.102= data.frame(df.102,code="bisi")
df.103= data.frame(df.103,code="bjbr")
df.104= data.frame(df.104,code="bjtm")
df.105= data.frame(df.105,code="bkdp")
df.106= data.frame(df.106,code="bksl")
df.107= data.frame(df.107,code="bksl-w")
df.108= data.frame(df.108,code="bksw")
df.109= data.frame(df.109,code="blta")
df.110= data.frame(df.110,code="bltz")
df.111= data.frame(df.111,code="bmas")
df.112= data.frame(df.112,code="bmri")
df.113= data.frame(df.113,code="bmsr")
df.114= data.frame(df.114,code="bmtr")
df.115= data.frame(df.115,code="bnba")
df.116= data.frame(df.116,code="bnbr")
df.117= data.frame(df.117,code="bnga")
df.118= data.frame(df.118,code="bnii")
df.119= data.frame(df.119,code="bnli")
df.120= data.frame(df.120,code="boga")
df.121= data.frame(df.121,code="bolt")
df.122= data.frame(df.122,code="born")
df.123= data.frame(df.123,code="bpfi")
df.124= data.frame(df.124,code="bpii")
df.125= data.frame(df.125,code="bram")
df.126= data.frame(df.126,code="brau")
df.127= data.frame(df.127,code="brms")
df.128= data.frame(df.128,code="brna")
df.129= data.frame(df.129,code="brpt")
df.130= data.frame(df.130,code="bsde")
df.131= data.frame(df.131,code="bsim")
df.132= data.frame(df.132,code="bsim-w3")
df.133= data.frame(df.133,code="bssr")
df.134= data.frame(df.134,code="bswd")
df.135= data.frame(df.135,code="btek")
df.136= data.frame(df.136,code="btel")
df.137= data.frame(df.137,code="bton")
df.138= data.frame(df.138,code="btpn")
df.139= data.frame(df.139,code="budi")
df.140= data.frame(df.140,code="bukk")
df.141= data.frame(df.141,code="bull")
df.142= data.frame(df.142,code="bull-w")
df.143= data.frame(df.143,code="bumi")
df.144= data.frame(df.144,code="buva")
df.145= data.frame(df.145,code="bvic")
df.146= data.frame(df.146,code="bwpt")
df.147= data.frame(df.147,code="byan")
df.148= data.frame(df.148,code="camp")
df.149= data.frame(df.149,code="cani")
df.150= data.frame(df.150,code="cars")
df.151= data.frame(df.151,code="casa")
df.152= data.frame(df.152,code="casa-w")
df.153= data.frame(df.153,code="cass")
df.154= data.frame(df.154,code="ceka")
df.155= data.frame(df.155,code="cent")
df.156= data.frame(df.156,code="cfin")
df.157= data.frame(df.157,code="cint")
df.158= data.frame(df.158,code="cita")
df.159= data.frame(df.159,code="ckra")
df.160= data.frame(df.160,code="cleo")
df.161= data.frame(df.161,code="clpi")
df.162= data.frame(df.162,code="cmnp")
df.163= data.frame(df.163,code="cmpp")
df.164= data.frame(df.164,code="cnko")
df.165= data.frame(df.165,code="cntb")
df.166= data.frame(df.166,code="cntx")
df.167= data.frame(df.167,code="cowl")
df.168= data.frame(df.168,code="cpgt")
df.169= data.frame(df.169,code="cpin")
df.170= data.frame(df.170,code="cpro")
df.171= data.frame(df.171,code="csap")
df.172= data.frame(df.172,code="csis")
df.173= data.frame(df.173,code="ctbn")
df.174= data.frame(df.174,code="ctra")
df.175= data.frame(df.175,code="ctth")
df.176= data.frame(df.176,code="dajk")
df.177= data.frame(df.177,code="dart")
df.178= data.frame(df.178,code="davo")
df.179= data.frame(df.179,code="daya")
df.180= data.frame(df.180,code="defi")
df.181= data.frame(df.181,code="dewa")
df.182= data.frame(df.182,code="dgik")
df.183= data.frame(df.183,code="dild")
df.184= data.frame(df.184,code="dkft")
df.185= data.frame(df.185,code="dlta")
df.186= data.frame(df.186,code="dmas")
df.187= data.frame(df.187,code="dnar")
df.188= data.frame(df.188,code="dnet")
df.189= data.frame(df.189,code="doid")
df.190= data.frame(df.190,code="dpns")
df.191= data.frame(df.191,code="dpum")
df.192= data.frame(df.192,code="dsfi")
df.193= data.frame(df.193,code="dsng")
df.194= data.frame(df.194,code="dssa")
df.195= data.frame(df.195,code="duti")
df.196= data.frame(df.196,code="dvla")
df.197= data.frame(df.197,code="dwgl")
df.198= data.frame(df.198,code="dyan")
df.199= data.frame(df.199,code="ecii")
df.200= data.frame(df.200,code="ekad")
df.201= data.frame(df.201,code="elsa")
df.202= data.frame(df.202,code="elty")
df.203= data.frame(df.203,code="emde")
df.204= data.frame(df.204,code="emtk")
df.205= data.frame(df.205,code="enrg")
df.206= data.frame(df.206,code="epmt")
df.207= data.frame(df.207,code="eraa")
df.208= data.frame(df.208,code="ertx")
df.209= data.frame(df.209,code="essa")
df.210= data.frame(df.210,code="esti")
df.211= data.frame(df.211,code="etwa")
df.212= data.frame(df.212,code="excl")
df.213= data.frame(df.213,code="fast")
df.214= data.frame(df.214,code="fasw")
df.215= data.frame(df.215,code="finn")
df.216= data.frame(df.216,code="fire")
df.217= data.frame(df.217,code="fire-w")
df.218= data.frame(df.218,code="fish")
df.219= data.frame(df.219,code="fmii")
df.220= data.frame(df.220,code="foru")
df.221= data.frame(df.221,code="forz")
df.222= data.frame(df.222,code="forz-w")
df.223= data.frame(df.223,code="fpni")
df.224= data.frame(df.224,code="fren")
df.225= data.frame(df.225,code="gama")
df.226= data.frame(df.226,code="gdst")
df.227= data.frame(df.227,code="gdyr")
df.228= data.frame(df.228,code="gema")
df.229= data.frame(df.229,code="gems")
df.230= data.frame(df.230,code="ggrm")
df.231= data.frame(df.231,code="giaa")
df.232= data.frame(df.232,code="gjtl")
df.233= data.frame(df.233,code="glob")
df.234= data.frame(df.234,code="gmcw")
df.235= data.frame(df.235,code="gmfi")
df.236= data.frame(df.236,code="gmtd")
df.237= data.frame(df.237,code="gold")
df.238= data.frame(df.238,code="goll")
df.239= data.frame(df.239,code="goll-w")
df.240= data.frame(df.240,code="gpra")
df.241= data.frame(df.241,code="gren")
df.242= data.frame(df.242,code="gsmf")
df.243= data.frame(df.243,code="gtbo")
df.244= data.frame(df.244,code="gwsa")
df.245= data.frame(df.245,code="gzco")
df.246= data.frame(df.246,code="hade")
df.247= data.frame(df.247,code="hdfa")
df.248= data.frame(df.248,code="hdtx")
df.249= data.frame(df.249,code="hero")
df.250= data.frame(df.250,code="hexa")
df.251= data.frame(df.251,code="hits")
df.252= data.frame(df.252,code="hmsp")
df.253= data.frame(df.253,code="hoki")
df.254= data.frame(df.254,code="hoki-w")
df.255= data.frame(df.255,code="home")
df.256= data.frame(df.256,code="hotl")
df.257= data.frame(df.257,code="hotl-w")
df.258= data.frame(df.258,code="hrta")
df.259= data.frame(df.259,code="hrum")
df.260= data.frame(df.260,code="iata")
df.261= data.frame(df.261,code="ibfn")
df.262= data.frame(df.262,code="ibst")
df.263= data.frame(df.263,code="icbp")
df.264= data.frame(df.264,code="icon")
df.265= data.frame(df.265,code="idpr")
df.266= data.frame(df.266,code="igar")
df.267= data.frame(df.267,code="iikp")
df.268= data.frame(df.268,code="ikai")
df.269= data.frame(df.269,code="ikbi")
df.270= data.frame(df.270,code="imas")
df.271= data.frame(df.271,code="imjs")
df.272= data.frame(df.272,code="impc")
df.273= data.frame(df.273,code="inaf")
df.274= data.frame(df.274,code="inai")
df.275= data.frame(df.275,code="incf")
df.276= data.frame(df.276,code="inci")
df.277= data.frame(df.277,code="inco")
df.278= data.frame(df.278,code="indf")
df.279= data.frame(df.279,code="indr")
df.280= data.frame(df.280,code="inds")
df.281= data.frame(df.281,code="indx")
df.282= data.frame(df.282,code="indy")
df.283= data.frame(df.283,code="inkp")
df.284= data.frame(df.284,code="inpc")
df.285= data.frame(df.285,code="inpc-w")
df.286= data.frame(df.286,code="inpp")
df.287= data.frame(df.287,code="inru")
df.288= data.frame(df.288,code="inta")
df.289= data.frame(df.289,code="inta-w")
df.290= data.frame(df.290,code="intd")
df.291= data.frame(df.291,code="intp")
df.292= data.frame(df.292,code="invs")
df.293= data.frame(df.293,code="ipcm")
df.294= data.frame(df.294,code="ipol")
df.295= data.frame(df.295,code="isat")
df.296= data.frame(df.296,code="issp")
df.297= data.frame(df.297,code="itma")
df.298= data.frame(df.298,code="itmg")
df.299= data.frame(df.299,code="ittg")
df.300= data.frame(df.300,code="jawa")
df.301= data.frame(df.301,code="jecc")
df.302= data.frame(df.302,code="jgle")
df.303= data.frame(df.303,code="jihd")
df.304= data.frame(df.304,code="jkon")
df.305= data.frame(df.305,code="jksw")
df.306= data.frame(df.306,code="jmas")
df.307= data.frame(df.307,code="jpfa")
df.308= data.frame(df.308,code="jprs")
df.309= data.frame(df.309,code="jrpt")
df.310= data.frame(df.310,code="jsmr")
df.311= data.frame(df.311,code="jspt")
df.312= data.frame(df.312,code="jtpe")
df.313= data.frame(df.313,code="kaef")
df.314= data.frame(df.314,code="karw")
df.315= data.frame(df.315,code="kbli")
df.316= data.frame(df.316,code="kblm")
df.317= data.frame(df.317,code="kblv")
df.318= data.frame(df.318,code="kbri")
df.319= data.frame(df.319,code="kdsi")
df.320= data.frame(df.320,code="kias")
df.321= data.frame(df.321,code="kici")
df.322= data.frame(df.322,code="kija")
df.323= data.frame(df.323,code="kino")
df.324= data.frame(df.324,code="kios")
df.325= data.frame(df.325,code="kios-w")
df.326= data.frame(df.326,code="kkgi")
df.327= data.frame(df.327,code="klbf")
df.328= data.frame(df.328,code="kobx")
df.329= data.frame(df.329,code="koin")
df.330= data.frame(df.330,code="koni")
df.331= data.frame(df.331,code="kopi")
df.332= data.frame(df.332,code="kpig")
df.333= data.frame(df.333,code="krah")
df.334= data.frame(df.334,code="kras")
df.335= data.frame(df.335,code="kren")
df.336= data.frame(df.336,code="lami")
df.337= data.frame(df.337,code="lapd")
df.338= data.frame(df.338,code="lcgp")
df.339= data.frame(df.339,code="lead")
df.340= data.frame(df.340,code="link")
df.341= data.frame(df.341,code="lion")
df.342= data.frame(df.342,code="lmas")
df.343= data.frame(df.343,code="lmpi")
df.344= data.frame(df.344,code="lmsh")
df.345= data.frame(df.345,code="lpck")
df.346= data.frame(df.346,code="lpgi")
df.347= data.frame(df.347,code="lpin")
df.348= data.frame(df.348,code="lpkr")
df.349= data.frame(df.349,code="lpli")
df.350= data.frame(df.350,code="lppf")
df.351= data.frame(df.351,code="lpps")
df.352= data.frame(df.352,code="lrna")
df.353= data.frame(df.353,code="lrna-w")
df.354= data.frame(df.354,code="lsip")
df.355= data.frame(df.355,code="ltls")
df.356= data.frame(df.356,code="maba")
df.357= data.frame(df.357,code="magp")
df.358= data.frame(df.358,code="main")
df.359= data.frame(df.359,code="mami")
df.360= data.frame(df.360,code="mamip")
df.361= data.frame(df.361,code="mapb")
df.362= data.frame(df.362,code="mapi")
df.363= data.frame(df.363,code="mari")
df.364= data.frame(df.364,code="mark")
df.365= data.frame(df.365,code="masa")
df.366= data.frame(df.366,code="maya")
df.367= data.frame(df.367,code="mbap")
df.368= data.frame(df.368,code="mbss")
df.369= data.frame(df.369,code="mbto")
df.370= data.frame(df.370,code="mcas")
df.371= data.frame(df.371,code="mcor")
df.372= data.frame(df.372,code="mdia")
df.373= data.frame(df.373,code="mdka")
df.374= data.frame(df.374,code="mdln")
df.375= data.frame(df.375,code="mdrn")
df.376= data.frame(df.376,code="medc")
df.377= data.frame(df.377,code="mega")
df.378= data.frame(df.378,code="merk")
df.379= data.frame(df.379,code="meta")
df.380= data.frame(df.380,code="mfin")
df.381= data.frame(df.381,code="mfmi")
df.382= data.frame(df.382,code="mgna")
df.383= data.frame(df.383,code="mice")
df.384= data.frame(df.384,code="midi")
df.385= data.frame(df.385,code="mika")
df.386= data.frame(df.386,code="mira")
df.387= data.frame(df.387,code="miti")
df.388= data.frame(df.388,code="mknt")
df.389= data.frame(df.389,code="mkpi")
df.390= data.frame(df.390,code="mlbi")
df.391= data.frame(df.391,code="mlia")
df.392= data.frame(df.392,code="mlpl")
df.393= data.frame(df.393,code="mlpt")
df.394= data.frame(df.394,code="mmlp")
df.395= data.frame(df.395,code="mncn")
df.396= data.frame(df.396,code="mpmx")
df.397= data.frame(df.397,code="mpow")
df.398= data.frame(df.398,code="mppa")
df.399= data.frame(df.399,code="mrat")
df.400= data.frame(df.400,code="mrei")
df.401= data.frame(df.401,code="msky")
df.402= data.frame(df.402,code="mtdl")
df.403= data.frame(df.403,code="mtfn")
df.404= data.frame(df.404,code="mtla")
df.405= data.frame(df.405,code="mtra")
df.406= data.frame(df.406,code="mtsm")
df.407= data.frame(df.407,code="mtwi")
df.408= data.frame(df.408,code="myoh")
df.409= data.frame(df.409,code="myor")
df.410= data.frame(df.410,code="myrx")
df.411= data.frame(df.411,code="myrxp")
df.412= data.frame(df.412,code="mytx")
df.413= data.frame(df.413,code="naga")
df.414= data.frame(df.414,code="nasa")
df.415= data.frame(df.415,code="nasa-w")
df.416= data.frame(df.416,code="nely")
df.417= data.frame(df.417,code="nikl")
df.418= data.frame(df.418,code="nips")
df.419= data.frame(df.419,code="niro")
df.420= data.frame(df.420,code="nisp")
df.421= data.frame(df.421,code="nobu")
df.422= data.frame(df.422,code="nrca")
df.423= data.frame(df.423,code="oasa")
df.424= data.frame(df.424,code="ocap")
df.425= data.frame(df.425,code="okas")
df.426= data.frame(df.426,code="omre")
df.427= data.frame(df.427,code="padi")
df.428= data.frame(df.428,code="palm")
df.429= data.frame(df.429,code="panr")
df.430= data.frame(df.430,code="pans")
df.431= data.frame(df.431,code="pbid")
df.432= data.frame(df.432,code="pbrx")
df.433= data.frame(df.433,code="pbsa")
df.434= data.frame(df.434,code="pdes")
df.435= data.frame(df.435,code="pege")
df.436= data.frame(df.436,code="pgas")
df.437= data.frame(df.437,code="pgli")
df.438= data.frame(df.438,code="pico")
df.439= data.frame(df.439,code="pjaa")
df.440= data.frame(df.440,code="pkpk")
df.441= data.frame(df.441,code="plas")
df.442= data.frame(df.442,code="plin")
df.443= data.frame(df.443,code="pnbn")
df.444= data.frame(df.444,code="pnbs")
df.445= data.frame(df.445,code="pnin")
df.446= data.frame(df.446,code="pnlf")
df.447= data.frame(df.447,code="pnse")
df.448= data.frame(df.448,code="poly")
df.449= data.frame(df.449,code="pool")
df.450= data.frame(df.450,code="pool-w")
df.451= data.frame(df.451,code="port")
df.452= data.frame(df.452,code="powr")
df.453= data.frame(df.453,code="ppre")
df.454= data.frame(df.454,code="ppro")
df.455= data.frame(df.455,code="pras")
df.456= data.frame(df.456,code="prda")
df.457= data.frame(df.457,code="psab")
df.458= data.frame(df.458,code="psdn")
df.459= data.frame(df.459,code="pskt")
df.460= data.frame(df.460,code="pskt-w")
df.461= data.frame(df.461,code="pssi")
df.462= data.frame(df.462,code="ptba")
df.463= data.frame(df.463,code="ptis")
df.464= data.frame(df.464,code="ptpp")
df.465= data.frame(df.465,code="ptro")
df.466= data.frame(df.466,code="ptsn")
df.467= data.frame(df.467,code="ptsp")
df.468= data.frame(df.468,code="pudp")
df.469= data.frame(df.469,code="pwon")
df.470= data.frame(df.470,code="pyfa")
df.471= data.frame(df.471,code="raja")
df.472= data.frame(df.472,code="rals")
df.473= data.frame(df.473,code="ranc")
df.474= data.frame(df.474,code="rbms")
df.475= data.frame(df.475,code="rdtx")
df.476= data.frame(df.476,code="reli")
df.477= data.frame(df.477,code="ricy")
df.478= data.frame(df.478,code="rigs")
df.479= data.frame(df.479,code="rimo")
df.480= data.frame(df.480,code="rmba")
df.481= data.frame(df.481,code="roda")
df.482= data.frame(df.482,code="roti")
df.483= data.frame(df.483,code="ruis")
df.484= data.frame(df.484,code="safe")
df.485= data.frame(df.485,code="saip")
df.486= data.frame(df.486,code="same")
df.487= data.frame(df.487,code="scbd")
df.488= data.frame(df.488,code="scco")
df.489= data.frame(df.489,code="scma")
df.490= data.frame(df.490,code="scpi")
df.491= data.frame(df.491,code="sdmu")
df.492= data.frame(df.492,code="sdpc")
df.493= data.frame(df.493,code="sdra")
df.494= data.frame(df.494,code="sgro")
df.495= data.frame(df.495,code="shid")
df.496= data.frame(df.496,code="ship")
df.497= data.frame(df.497,code="siap")
df.498= data.frame(df.498,code="sido")
df.499= data.frame(df.499,code="silo")
df.500= data.frame(df.500,code="sima")
df.501= data.frame(df.501,code="simp")
df.502= data.frame(df.502,code="sipd")
df.503= data.frame(df.503,code="skbm")
df.504= data.frame(df.504,code="sklt")
df.505= data.frame(df.505,code="skyb")
df.506= data.frame(df.506,code="smar")
df.507= data.frame(df.507,code="smbr")
df.508= data.frame(df.508,code="smcb")
df.509= data.frame(df.509,code="smdm")
df.510= data.frame(df.510,code="smdr")
df.511= data.frame(df.511,code="smgr")
df.512= data.frame(df.512,code="smma")
df.513= data.frame(df.513,code="smmt")
df.514= data.frame(df.514,code="smra")
df.515= data.frame(df.515,code="smru")
df.516= data.frame(df.516,code="smsm")
df.517= data.frame(df.517,code="sobi")
df.518= data.frame(df.518,code="soci")
df.519= data.frame(df.519,code="sona")
df.520= data.frame(df.520,code="spma")
df.521= data.frame(df.521,code="sqbb")
df.522= data.frame(df.522,code="sqbi")
df.523= data.frame(df.523,code="sqmi")
df.524= data.frame(df.524,code="sraj")
df.525= data.frame(df.525,code="sril")
df.526= data.frame(df.526,code="srsn")
df.527= data.frame(df.527,code="srtg")
df.528= data.frame(df.528,code="ssia")
df.529= data.frame(df.529,code="ssms")
df.530= data.frame(df.530,code="sstm")
df.531= data.frame(df.531,code="star")
df.532= data.frame(df.532,code="sttp")
df.533= data.frame(df.533,code="sugi")
df.534= data.frame(df.534,code="suli")
df.535= data.frame(df.535,code="supr")
df.536= data.frame(df.536,code="talf")
df.537= data.frame(df.537,code="tamu")
df.538= data.frame(df.538,code="tara")
df.539= data.frame(df.539,code="taxi")
df.540= data.frame(df.540,code="tbig")
df.541= data.frame(df.541,code="tbla")
df.542= data.frame(df.542,code="tbms")
df.543= data.frame(df.543,code="tcid")
df.544= data.frame(df.544,code="tele")
df.545= data.frame(df.545,code="tfco")
df.546= data.frame(df.546,code="tgka")
df.547= data.frame(df.547,code="tgra")
df.548= data.frame(df.548,code="tifa")
df.549= data.frame(df.549,code="tins")
df.550= data.frame(df.550,code="tira")
df.551= data.frame(df.551,code="tirt")
df.552= data.frame(df.552,code="tkga")
df.553= data.frame(df.553,code="tkim")
df.554= data.frame(df.554,code="tlkm")
df.555= data.frame(df.555,code="tmas")
df.556= data.frame(df.556,code="tmpi")
df.557= data.frame(df.557,code="tmpo")
df.558= data.frame(df.558,code="toba")
df.559= data.frame(df.559,code="tops")
df.560= data.frame(df.560,code="totl")
df.561= data.frame(df.561,code="toto")
df.562= data.frame(df.562,code="towr")
df.563= data.frame(df.563,code="tpia")
df.564= data.frame(df.564,code="tpma")
df.565= data.frame(df.565,code="tram")
df.566= data.frame(df.566,code="tril")
df.567= data.frame(df.567,code="trim")
df.568= data.frame(df.568,code="trio")
df.569= data.frame(df.569,code="tris")
df.570= data.frame(df.570,code="trst")
df.571= data.frame(df.571,code="trub")
df.572= data.frame(df.572,code="trus")
df.573= data.frame(df.573,code="tspc")
df.574= data.frame(df.574,code="turi")
df.575= data.frame(df.575,code="ultj")
df.576= data.frame(df.576,code="unic")
df.577= data.frame(df.577,code="unit")
df.578= data.frame(df.578,code="unsp")
df.579= data.frame(df.579,code="untr")
df.580= data.frame(df.580,code="untx")
df.581= data.frame(df.581,code="unvr")
df.582= data.frame(df.582,code="vico")
df.583= data.frame(df.583,code="vins")
df.584= data.frame(df.584,code="vins-w")
df.585= data.frame(df.585,code="viva")
df.586= data.frame(df.586,code="voks")
df.587= data.frame(df.587,code="vrna")
df.588= data.frame(df.588,code="wapo")
df.589= data.frame(df.589,code="wege")
df.590= data.frame(df.590,code="weha")
df.591= data.frame(df.591,code="wico")
df.592= data.frame(df.592,code="wiim")
df.593= data.frame(df.593,code="wika")
df.594= data.frame(df.594,code="wins")
df.595= data.frame(df.595,code="womf")
df.596= data.frame(df.596,code="wood")
df.597= data.frame(df.597,code="wsbp")
df.598= data.frame(df.598,code="wskt")
df.599= data.frame(df.599,code="wton")
df.600= data.frame(df.600,code="ypas")
df.601= data.frame(df.601,code="yule")
df.602= data.frame(df.602,code="zbra")
df.603= data.frame(df.603,code="zinc")



setwd("C:/Users/lukman/OneDrive/5_Finance/2_Yahoo/jkse/5_useR")
write.csv(df.1,"df.1.csv")
write.csv(df.2,"df.2.csv")
write.csv(df.3,"df.3.csv")
write.csv(df.4,"df.4.csv")
write.csv(df.5,"df.5.csv")
write.csv(df.6,"df.6.csv")
write.csv(df.7,"df.7.csv")
write.csv(df.8,"df.8.csv")
write.csv(df.9,"df.9.csv")
write.csv(df.10,"df.10.csv")
write.csv(df.11,"df.11.csv")
write.csv(df.12,"df.12.csv")
write.csv(df.13,"df.13.csv")
write.csv(df.14,"df.14.csv")
write.csv(df.15,"df.15.csv")
write.csv(df.16,"df.16.csv")
write.csv(df.17,"df.17.csv")
write.csv(df.18,"df.18.csv")
write.csv(df.19,"df.19.csv")
write.csv(df.20,"df.20.csv")
write.csv(df.21,"df.21.csv")
write.csv(df.22,"df.22.csv")
write.csv(df.23,"df.23.csv")
write.csv(df.24,"df.24.csv")
write.csv(df.25,"df.25.csv")
write.csv(df.26,"df.26.csv")
write.csv(df.27,"df.27.csv")
write.csv(df.28,"df.28.csv")
write.csv(df.29,"df.29.csv")
write.csv(df.30,"df.30.csv")
write.csv(df.31,"df.31.csv")
write.csv(df.32,"df.32.csv")
write.csv(df.33,"df.33.csv")
write.csv(df.34,"df.34.csv")
write.csv(df.35,"df.35.csv")
write.csv(df.36,"df.36.csv")
write.csv(df.37,"df.37.csv")
write.csv(df.38,"df.38.csv")
write.csv(df.39,"df.39.csv")
write.csv(df.40,"df.40.csv")
write.csv(df.41,"df.41.csv")
write.csv(df.42,"df.42.csv")
write.csv(df.43,"df.43.csv")
write.csv(df.44,"df.44.csv")
write.csv(df.45,"df.45.csv")
write.csv(df.46,"df.46.csv")
write.csv(df.47,"df.47.csv")
write.csv(df.48,"df.48.csv")
write.csv(df.49,"df.49.csv")
write.csv(df.50,"df.50.csv")
write.csv(df.51,"df.51.csv")
write.csv(df.52,"df.52.csv")
write.csv(df.53,"df.53.csv")
write.csv(df.54,"df.54.csv")
write.csv(df.55,"df.55.csv")
write.csv(df.56,"df.56.csv")
write.csv(df.57,"df.57.csv")
write.csv(df.58,"df.58.csv")
write.csv(df.59,"df.59.csv")
write.csv(df.60,"df.60.csv")
write.csv(df.61,"df.61.csv")
write.csv(df.62,"df.62.csv")
write.csv(df.63,"df.63.csv")
write.csv(df.64,"df.64.csv")
write.csv(df.65,"df.65.csv")
write.csv(df.66,"df.66.csv")
write.csv(df.67,"df.67.csv")
write.csv(df.68,"df.68.csv")
write.csv(df.69,"df.69.csv")
write.csv(df.70,"df.70.csv")
write.csv(df.71,"df.71.csv")
write.csv(df.72,"df.72.csv")
write.csv(df.73,"df.73.csv")
write.csv(df.74,"df.74.csv")
write.csv(df.75,"df.75.csv")
write.csv(df.76,"df.76.csv")
write.csv(df.77,"df.77.csv")
write.csv(df.78,"df.78.csv")
write.csv(df.79,"df.79.csv")
write.csv(df.80,"df.80.csv")
write.csv(df.81,"df.81.csv")
write.csv(df.82,"df.82.csv")
write.csv(df.83,"df.83.csv")
write.csv(df.84,"df.84.csv")
write.csv(df.85,"df.85.csv")
write.csv(df.86,"df.86.csv")
write.csv(df.87,"df.87.csv")
write.csv(df.88,"df.88.csv")
write.csv(df.89,"df.89.csv")
write.csv(df.90,"df.90.csv")
write.csv(df.91,"df.91.csv")
write.csv(df.92,"df.92.csv")
write.csv(df.93,"df.93.csv")
write.csv(df.94,"df.94.csv")
write.csv(df.95,"df.95.csv")
write.csv(df.96,"df.96.csv")
write.csv(df.97,"df.97.csv")
write.csv(df.98,"df.98.csv")
write.csv(df.99,"df.99.csv")
write.csv(df.100,"df.100.csv")
write.csv(df.101,"df.101.csv")
write.csv(df.102,"df.102.csv")
write.csv(df.103,"df.103.csv")
write.csv(df.104,"df.104.csv")
write.csv(df.105,"df.105.csv")
write.csv(df.106,"df.106.csv")
write.csv(df.107,"df.107.csv")
write.csv(df.108,"df.108.csv")
write.csv(df.109,"df.109.csv")
write.csv(df.110,"df.110.csv")
write.csv(df.111,"df.111.csv")
write.csv(df.112,"df.112.csv")
write.csv(df.113,"df.113.csv")
write.csv(df.114,"df.114.csv")
write.csv(df.115,"df.115.csv")
write.csv(df.116,"df.116.csv")
write.csv(df.117,"df.117.csv")
write.csv(df.118,"df.118.csv")
write.csv(df.119,"df.119.csv")
write.csv(df.120,"df.120.csv")
write.csv(df.121,"df.121.csv")
write.csv(df.122,"df.122.csv")
write.csv(df.123,"df.123.csv")
write.csv(df.124,"df.124.csv")
write.csv(df.125,"df.125.csv")
write.csv(df.126,"df.126.csv")
write.csv(df.127,"df.127.csv")
write.csv(df.128,"df.128.csv")
write.csv(df.129,"df.129.csv")
write.csv(df.130,"df.130.csv")
write.csv(df.131,"df.131.csv")
write.csv(df.132,"df.132.csv")
write.csv(df.133,"df.133.csv")
write.csv(df.134,"df.134.csv")
write.csv(df.135,"df.135.csv")
write.csv(df.136,"df.136.csv")
write.csv(df.137,"df.137.csv")
write.csv(df.138,"df.138.csv")
write.csv(df.139,"df.139.csv")
write.csv(df.140,"df.140.csv")
write.csv(df.141,"df.141.csv")
write.csv(df.142,"df.142.csv")
write.csv(df.143,"df.143.csv")
write.csv(df.144,"df.144.csv")
write.csv(df.145,"df.145.csv")
write.csv(df.146,"df.146.csv")
write.csv(df.147,"df.147.csv")
write.csv(df.148,"df.148.csv")
write.csv(df.149,"df.149.csv")
write.csv(df.150,"df.150.csv")
write.csv(df.151,"df.151.csv")
write.csv(df.152,"df.152.csv")
write.csv(df.153,"df.153.csv")
write.csv(df.154,"df.154.csv")
write.csv(df.155,"df.155.csv")
write.csv(df.156,"df.156.csv")
write.csv(df.157,"df.157.csv")
write.csv(df.158,"df.158.csv")
write.csv(df.159,"df.159.csv")
write.csv(df.160,"df.160.csv")
write.csv(df.161,"df.161.csv")
write.csv(df.162,"df.162.csv")
write.csv(df.163,"df.163.csv")
write.csv(df.164,"df.164.csv")
write.csv(df.165,"df.165.csv")
write.csv(df.166,"df.166.csv")
write.csv(df.167,"df.167.csv")
write.csv(df.168,"df.168.csv")
write.csv(df.169,"df.169.csv")
write.csv(df.170,"df.170.csv")
write.csv(df.171,"df.171.csv")
write.csv(df.172,"df.172.csv")
write.csv(df.173,"df.173.csv")
write.csv(df.174,"df.174.csv")
write.csv(df.175,"df.175.csv")
write.csv(df.176,"df.176.csv")
write.csv(df.177,"df.177.csv")
write.csv(df.178,"df.178.csv")
write.csv(df.179,"df.179.csv")
write.csv(df.180,"df.180.csv")
write.csv(df.181,"df.181.csv")
write.csv(df.182,"df.182.csv")
write.csv(df.183,"df.183.csv")
write.csv(df.184,"df.184.csv")
write.csv(df.185,"df.185.csv")
write.csv(df.186,"df.186.csv")
write.csv(df.187,"df.187.csv")
write.csv(df.188,"df.188.csv")
write.csv(df.189,"df.189.csv")
write.csv(df.190,"df.190.csv")
write.csv(df.191,"df.191.csv")
write.csv(df.192,"df.192.csv")
write.csv(df.193,"df.193.csv")
write.csv(df.194,"df.194.csv")
write.csv(df.195,"df.195.csv")
write.csv(df.196,"df.196.csv")
write.csv(df.197,"df.197.csv")
write.csv(df.198,"df.198.csv")
write.csv(df.199,"df.199.csv")
write.csv(df.200,"df.200.csv")
write.csv(df.201,"df.201.csv")
write.csv(df.202,"df.202.csv")
write.csv(df.203,"df.203.csv")
write.csv(df.204,"df.204.csv")
write.csv(df.205,"df.205.csv")
write.csv(df.206,"df.206.csv")
write.csv(df.207,"df.207.csv")
write.csv(df.208,"df.208.csv")
write.csv(df.209,"df.209.csv")
write.csv(df.210,"df.210.csv")
write.csv(df.211,"df.211.csv")
write.csv(df.212,"df.212.csv")
write.csv(df.213,"df.213.csv")
write.csv(df.214,"df.214.csv")
write.csv(df.215,"df.215.csv")
write.csv(df.216,"df.216.csv")
write.csv(df.217,"df.217.csv")
write.csv(df.218,"df.218.csv")
write.csv(df.219,"df.219.csv")
write.csv(df.220,"df.220.csv")
write.csv(df.221,"df.221.csv")
write.csv(df.222,"df.222.csv")
write.csv(df.223,"df.223.csv")
write.csv(df.224,"df.224.csv")
write.csv(df.225,"df.225.csv")
write.csv(df.226,"df.226.csv")
write.csv(df.227,"df.227.csv")
write.csv(df.228,"df.228.csv")
write.csv(df.229,"df.229.csv")
write.csv(df.230,"df.230.csv")
write.csv(df.231,"df.231.csv")
write.csv(df.232,"df.232.csv")
write.csv(df.233,"df.233.csv")
write.csv(df.234,"df.234.csv")
write.csv(df.235,"df.235.csv")
write.csv(df.236,"df.236.csv")
write.csv(df.237,"df.237.csv")
write.csv(df.238,"df.238.csv")
write.csv(df.239,"df.239.csv")
write.csv(df.240,"df.240.csv")
write.csv(df.241,"df.241.csv")
write.csv(df.242,"df.242.csv")
write.csv(df.243,"df.243.csv")
write.csv(df.244,"df.244.csv")
write.csv(df.245,"df.245.csv")
write.csv(df.246,"df.246.csv")
write.csv(df.247,"df.247.csv")
write.csv(df.248,"df.248.csv")
write.csv(df.249,"df.249.csv")
write.csv(df.250,"df.250.csv")
write.csv(df.251,"df.251.csv")
write.csv(df.252,"df.252.csv")
write.csv(df.253,"df.253.csv")
write.csv(df.254,"df.254.csv")
write.csv(df.255,"df.255.csv")
write.csv(df.256,"df.256.csv")
write.csv(df.257,"df.257.csv")
write.csv(df.258,"df.258.csv")
write.csv(df.259,"df.259.csv")
write.csv(df.260,"df.260.csv")
write.csv(df.261,"df.261.csv")
write.csv(df.262,"df.262.csv")
write.csv(df.263,"df.263.csv")
write.csv(df.264,"df.264.csv")
write.csv(df.265,"df.265.csv")
write.csv(df.266,"df.266.csv")
write.csv(df.267,"df.267.csv")
write.csv(df.268,"df.268.csv")
write.csv(df.269,"df.269.csv")
write.csv(df.270,"df.270.csv")
write.csv(df.271,"df.271.csv")
write.csv(df.272,"df.272.csv")
write.csv(df.273,"df.273.csv")
write.csv(df.274,"df.274.csv")
write.csv(df.275,"df.275.csv")
write.csv(df.276,"df.276.csv")
write.csv(df.277,"df.277.csv")
write.csv(df.278,"df.278.csv")
write.csv(df.279,"df.279.csv")
write.csv(df.280,"df.280.csv")
write.csv(df.281,"df.281.csv")
write.csv(df.282,"df.282.csv")
write.csv(df.283,"df.283.csv")
write.csv(df.284,"df.284.csv")
write.csv(df.285,"df.285.csv")
write.csv(df.286,"df.286.csv")
write.csv(df.287,"df.287.csv")
write.csv(df.288,"df.288.csv")
write.csv(df.289,"df.289.csv")
write.csv(df.290,"df.290.csv")
write.csv(df.291,"df.291.csv")
write.csv(df.292,"df.292.csv")
write.csv(df.293,"df.293.csv")
write.csv(df.294,"df.294.csv")
write.csv(df.295,"df.295.csv")
write.csv(df.296,"df.296.csv")
write.csv(df.297,"df.297.csv")
write.csv(df.298,"df.298.csv")
write.csv(df.299,"df.299.csv")
write.csv(df.300,"df.300.csv")
write.csv(df.301,"df.301.csv")
write.csv(df.302,"df.302.csv")
write.csv(df.303,"df.303.csv")
write.csv(df.304,"df.304.csv")
write.csv(df.305,"df.305.csv")
write.csv(df.306,"df.306.csv")
write.csv(df.307,"df.307.csv")
write.csv(df.308,"df.308.csv")
write.csv(df.309,"df.309.csv")
write.csv(df.310,"df.310.csv")
write.csv(df.311,"df.311.csv")
write.csv(df.312,"df.312.csv")
write.csv(df.313,"df.313.csv")
write.csv(df.314,"df.314.csv")
write.csv(df.315,"df.315.csv")
write.csv(df.316,"df.316.csv")
write.csv(df.317,"df.317.csv")
write.csv(df.318,"df.318.csv")
write.csv(df.319,"df.319.csv")
write.csv(df.320,"df.320.csv")
write.csv(df.321,"df.321.csv")
write.csv(df.322,"df.322.csv")
write.csv(df.323,"df.323.csv")
write.csv(df.324,"df.324.csv")
write.csv(df.325,"df.325.csv")
write.csv(df.326,"df.326.csv")
write.csv(df.327,"df.327.csv")
write.csv(df.328,"df.328.csv")
write.csv(df.329,"df.329.csv")
write.csv(df.330,"df.330.csv")
write.csv(df.331,"df.331.csv")
write.csv(df.332,"df.332.csv")
write.csv(df.333,"df.333.csv")
write.csv(df.334,"df.334.csv")
write.csv(df.335,"df.335.csv")
write.csv(df.336,"df.336.csv")
write.csv(df.337,"df.337.csv")
write.csv(df.338,"df.338.csv")
write.csv(df.339,"df.339.csv")
write.csv(df.340,"df.340.csv")
write.csv(df.341,"df.341.csv")
write.csv(df.342,"df.342.csv")
write.csv(df.343,"df.343.csv")
write.csv(df.344,"df.344.csv")
write.csv(df.345,"df.345.csv")
write.csv(df.346,"df.346.csv")
write.csv(df.347,"df.347.csv")
write.csv(df.348,"df.348.csv")
write.csv(df.349,"df.349.csv")
write.csv(df.350,"df.350.csv")
write.csv(df.351,"df.351.csv")
write.csv(df.352,"df.352.csv")
write.csv(df.353,"df.353.csv")
write.csv(df.354,"df.354.csv")
write.csv(df.355,"df.355.csv")
write.csv(df.356,"df.356.csv")
write.csv(df.357,"df.357.csv")
write.csv(df.358,"df.358.csv")
write.csv(df.359,"df.359.csv")
write.csv(df.360,"df.360.csv")
write.csv(df.361,"df.361.csv")
write.csv(df.362,"df.362.csv")
write.csv(df.363,"df.363.csv")
write.csv(df.364,"df.364.csv")
write.csv(df.365,"df.365.csv")
write.csv(df.366,"df.366.csv")
write.csv(df.367,"df.367.csv")
write.csv(df.368,"df.368.csv")
write.csv(df.369,"df.369.csv")
write.csv(df.370,"df.370.csv")
write.csv(df.371,"df.371.csv")
write.csv(df.372,"df.372.csv")
write.csv(df.373,"df.373.csv")
write.csv(df.374,"df.374.csv")
write.csv(df.375,"df.375.csv")
write.csv(df.376,"df.376.csv")
write.csv(df.377,"df.377.csv")
write.csv(df.378,"df.378.csv")
write.csv(df.379,"df.379.csv")
write.csv(df.380,"df.380.csv")
write.csv(df.381,"df.381.csv")
write.csv(df.382,"df.382.csv")
write.csv(df.383,"df.383.csv")
write.csv(df.384,"df.384.csv")
write.csv(df.385,"df.385.csv")
write.csv(df.386,"df.386.csv")
write.csv(df.387,"df.387.csv")
write.csv(df.388,"df.388.csv")
write.csv(df.389,"df.389.csv")
write.csv(df.390,"df.390.csv")
write.csv(df.391,"df.391.csv")
write.csv(df.392,"df.392.csv")
write.csv(df.393,"df.393.csv")
write.csv(df.394,"df.394.csv")
write.csv(df.395,"df.395.csv")
write.csv(df.396,"df.396.csv")
write.csv(df.397,"df.397.csv")
write.csv(df.398,"df.398.csv")
write.csv(df.399,"df.399.csv")
write.csv(df.400,"df.400.csv")
write.csv(df.401,"df.401.csv")
write.csv(df.402,"df.402.csv")
write.csv(df.403,"df.403.csv")
write.csv(df.404,"df.404.csv")
write.csv(df.405,"df.405.csv")
write.csv(df.406,"df.406.csv")
write.csv(df.407,"df.407.csv")
write.csv(df.408,"df.408.csv")
write.csv(df.409,"df.409.csv")
write.csv(df.410,"df.410.csv")
write.csv(df.411,"df.411.csv")
write.csv(df.412,"df.412.csv")
write.csv(df.413,"df.413.csv")
write.csv(df.414,"df.414.csv")
write.csv(df.415,"df.415.csv")
write.csv(df.416,"df.416.csv")
write.csv(df.417,"df.417.csv")
write.csv(df.418,"df.418.csv")
write.csv(df.419,"df.419.csv")
write.csv(df.420,"df.420.csv")
write.csv(df.421,"df.421.csv")
write.csv(df.422,"df.422.csv")
write.csv(df.423,"df.423.csv")
write.csv(df.424,"df.424.csv")
write.csv(df.425,"df.425.csv")
write.csv(df.426,"df.426.csv")
write.csv(df.427,"df.427.csv")
write.csv(df.428,"df.428.csv")
write.csv(df.429,"df.429.csv")
write.csv(df.430,"df.430.csv")
write.csv(df.431,"df.431.csv")
write.csv(df.432,"df.432.csv")
write.csv(df.433,"df.433.csv")
write.csv(df.434,"df.434.csv")
write.csv(df.435,"df.435.csv")
write.csv(df.436,"df.436.csv")
write.csv(df.437,"df.437.csv")
write.csv(df.438,"df.438.csv")
write.csv(df.439,"df.439.csv")
write.csv(df.440,"df.440.csv")
write.csv(df.441,"df.441.csv")
write.csv(df.442,"df.442.csv")
write.csv(df.443,"df.443.csv")
write.csv(df.444,"df.444.csv")
write.csv(df.445,"df.445.csv")
write.csv(df.446,"df.446.csv")
write.csv(df.447,"df.447.csv")
write.csv(df.448,"df.448.csv")
write.csv(df.449,"df.449.csv")
write.csv(df.450,"df.450.csv")
write.csv(df.451,"df.451.csv")
write.csv(df.452,"df.452.csv")
write.csv(df.453,"df.453.csv")
write.csv(df.454,"df.454.csv")
write.csv(df.455,"df.455.csv")
write.csv(df.456,"df.456.csv")
write.csv(df.457,"df.457.csv")
write.csv(df.458,"df.458.csv")
write.csv(df.459,"df.459.csv")
write.csv(df.460,"df.460.csv")
write.csv(df.461,"df.461.csv")
write.csv(df.462,"df.462.csv")
write.csv(df.463,"df.463.csv")
write.csv(df.464,"df.464.csv")
write.csv(df.465,"df.465.csv")
write.csv(df.466,"df.466.csv")
write.csv(df.467,"df.467.csv")
write.csv(df.468,"df.468.csv")
write.csv(df.469,"df.469.csv")
write.csv(df.470,"df.470.csv")
write.csv(df.471,"df.471.csv")
write.csv(df.472,"df.472.csv")
write.csv(df.473,"df.473.csv")
write.csv(df.474,"df.474.csv")
write.csv(df.475,"df.475.csv")
write.csv(df.476,"df.476.csv")
write.csv(df.477,"df.477.csv")
write.csv(df.478,"df.478.csv")
write.csv(df.479,"df.479.csv")
write.csv(df.480,"df.480.csv")
write.csv(df.481,"df.481.csv")
write.csv(df.482,"df.482.csv")
write.csv(df.483,"df.483.csv")
write.csv(df.484,"df.484.csv")
write.csv(df.485,"df.485.csv")
write.csv(df.486,"df.486.csv")
write.csv(df.487,"df.487.csv")
write.csv(df.488,"df.488.csv")
write.csv(df.489,"df.489.csv")
write.csv(df.490,"df.490.csv")
write.csv(df.491,"df.491.csv")
write.csv(df.492,"df.492.csv")
write.csv(df.493,"df.493.csv")
write.csv(df.494,"df.494.csv")
write.csv(df.495,"df.495.csv")
write.csv(df.496,"df.496.csv")
write.csv(df.497,"df.497.csv")
write.csv(df.498,"df.498.csv")
write.csv(df.499,"df.499.csv")
write.csv(df.500,"df.500.csv")
write.csv(df.501,"df.501.csv")
write.csv(df.502,"df.502.csv")
write.csv(df.503,"df.503.csv")
write.csv(df.504,"df.504.csv")
write.csv(df.505,"df.505.csv")
write.csv(df.506,"df.506.csv")
write.csv(df.507,"df.507.csv")
write.csv(df.508,"df.508.csv")
write.csv(df.509,"df.509.csv")
write.csv(df.510,"df.510.csv")
write.csv(df.511,"df.511.csv")
write.csv(df.512,"df.512.csv")
write.csv(df.513,"df.513.csv")
write.csv(df.514,"df.514.csv")
write.csv(df.515,"df.515.csv")
write.csv(df.516,"df.516.csv")
write.csv(df.517,"df.517.csv")
write.csv(df.518,"df.518.csv")
write.csv(df.519,"df.519.csv")
write.csv(df.520,"df.520.csv")
write.csv(df.521,"df.521.csv")
write.csv(df.522,"df.522.csv")
write.csv(df.523,"df.523.csv")
write.csv(df.524,"df.524.csv")
write.csv(df.525,"df.525.csv")
write.csv(df.526,"df.526.csv")
write.csv(df.527,"df.527.csv")
write.csv(df.528,"df.528.csv")
write.csv(df.529,"df.529.csv")
write.csv(df.530,"df.530.csv")
write.csv(df.531,"df.531.csv")
write.csv(df.532,"df.532.csv")
write.csv(df.533,"df.533.csv")
write.csv(df.534,"df.534.csv")
write.csv(df.535,"df.535.csv")
write.csv(df.536,"df.536.csv")
write.csv(df.537,"df.537.csv")
write.csv(df.538,"df.538.csv")
write.csv(df.539,"df.539.csv")
write.csv(df.540,"df.540.csv")
write.csv(df.541,"df.541.csv")
write.csv(df.542,"df.542.csv")
write.csv(df.543,"df.543.csv")
write.csv(df.544,"df.544.csv")
write.csv(df.545,"df.545.csv")
write.csv(df.546,"df.546.csv")
write.csv(df.547,"df.547.csv")
write.csv(df.548,"df.548.csv")
write.csv(df.549,"df.549.csv")
write.csv(df.550,"df.550.csv")
write.csv(df.551,"df.551.csv")
write.csv(df.552,"df.552.csv")
write.csv(df.553,"df.553.csv")
write.csv(df.554,"df.554.csv")
write.csv(df.555,"df.555.csv")
write.csv(df.556,"df.556.csv")
write.csv(df.557,"df.557.csv")
write.csv(df.558,"df.558.csv")
write.csv(df.559,"df.559.csv")
write.csv(df.560,"df.560.csv")
write.csv(df.561,"df.561.csv")
write.csv(df.562,"df.562.csv")
write.csv(df.563,"df.563.csv")
write.csv(df.564,"df.564.csv")
write.csv(df.565,"df.565.csv")
write.csv(df.566,"df.566.csv")
write.csv(df.567,"df.567.csv")
write.csv(df.568,"df.568.csv")
write.csv(df.569,"df.569.csv")
write.csv(df.570,"df.570.csv")
write.csv(df.571,"df.571.csv")
write.csv(df.572,"df.572.csv")
write.csv(df.573,"df.573.csv")
write.csv(df.574,"df.574.csv")
write.csv(df.575,"df.575.csv")
write.csv(df.576,"df.576.csv")
write.csv(df.577,"df.577.csv")
write.csv(df.578,"df.578.csv")
write.csv(df.579,"df.579.csv")
write.csv(df.580,"df.580.csv")
write.csv(df.581,"df.581.csv")
write.csv(df.582,"df.582.csv")
write.csv(df.583,"df.583.csv")
write.csv(df.584,"df.584.csv")
write.csv(df.585,"df.585.csv")
write.csv(df.586,"df.586.csv")
write.csv(df.587,"df.587.csv")
write.csv(df.588,"df.588.csv")
write.csv(df.589,"df.589.csv")
write.csv(df.590,"df.590.csv")
write.csv(df.591,"df.591.csv")
write.csv(df.592,"df.592.csv")
write.csv(df.593,"df.593.csv")
write.csv(df.594,"df.594.csv")
write.csv(df.595,"df.595.csv")
write.csv(df.596,"df.596.csv")
write.csv(df.597,"df.597.csv")
write.csv(df.598,"df.598.csv")
write.csv(df.599,"df.599.csv")
write.csv(df.600,"df.600.csv")
write.csv(df.601,"df.601.csv")
write.csv(df.602,"df.602.csv")
write.csv(df.603,"df.603.csv")

files = list.files(pattern = ".csv")

df.raw = read.csv(files[1])
for (f in files[-1]){
  df.all = read.csv(f)
  df.raw = rbind(df.raw, df.all)
}

write.csv(df.raw,"df.raw.csv")
