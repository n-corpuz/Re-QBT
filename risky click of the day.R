##Nicholas Corpuz & Kevin Ramdass & Khagay Nagdimov
## Legal Aid Statistical Tool, Graphical User Interface

# If running for the first time uncomment:
#install.packages("RGtk2","gtk+")

## first, create blank matrix to be filled by variable values
library("RGtk2")

#-######################################################################################################
# GUI 
# create a window
window = gtkWindow()
# add a title
window["title"] = "Legal Aid Statistical Tool (Beta)"

# add a scrollbar
scroll <- gtkScrolledWindow()
window$add(scroll)

# create and add a new vertical container box 
vbox = gtkVBoxNew(FALSE , 8) 
vbox$setBorderWidth(24)                 #------------------------------VBOX
scroll$addWithViewport(vbox)

#moved the button command to the last box

#visual interface for inputing the name of the suspect "caseName"
# create a horizontal container 
hbox = gtkHBoxNew(FALSE , 8)
# we packstarted the horizontal box into the vertical box 
vbox$packStart(hbox , FALSE , FALSE , 0)# -----------------------------VBOX 
#*****************************************************************************************
# add a label to the vertical box 
caseLabel = gtkLabelNewWithMnemonic("_Case Name")
hbox$packStart(caseLabel , FALSE , FALSE , 0) # ----------------------------VBOX
	# add an entry in the second column; named "caseName"
caseName = gtkEntryNew() # create a new entry for USER INPUT!
caseName$setWidthChars(30)
caseLabel$setMnemonicWidget(caseName)
# pack in the filename object into the horizontal box
hbox$packStart(caseName , FALSE , FALSE , 0) 
#********************************************************************************************


#-----------------------------------------------------------------------------------------------------
	# visual interface for inputing Quantity of DNA "quantName"
# add a label to the vertical box 
quantLabel = gtkLabelNewWithMnemonic("_Quantity")
hbox$packStart(quantLabel , FALSE , FALSE , 0) # ----------------------------VBOX
# add an entry in the second column; named "Quant"
quantName = gtkEntryNew() # create a new entry for USER INPUT!
quantName$setWidthChars(4)
quantLabel$setMnemonicWidget(quantName)
# pack in the filename object into the horizontal box
hbox$packStart(quantName , FALSE , FALSE , 0) 
#-----------------------------------------------------------------------------------------------------
	#visual interface for inputing number of number of contributors to the sample "contributorsName"
# create a horizontal container 
hbox = gtkHBoxNew(FALSE , 8)
# we packstarted the horizontal box into the vertical box 
vbox$packStart(hbox , FALSE , FALSE , 0)# -----------------------------VBOX 
# add a label to the vertical box 
contLabel = gtkLabelNewWithMnemonic("_Contributors")
hbox$packStart(contLabel , FALSE , FALSE , 0)
# add an entry in the second column; named "Cont"
contributorsName = gtkEntryNew() # create a new entry for USER INPUT!
contributorsName$setWidthChars(3)
contLabel$setMnemonicWidget(contributorsName)
# pack in the filename object into the horizontal box
hbox$packStart(contributorsName , FALSE , FALSE , 0) 
#-----------------------------------------------------------------------------------------------------
	# visual interface for inputting deducible or non-deducible mixture "deducName"
deducLabel = gtkLabelNewWithMnemonic("_Deducible or _Non-_Deducible")
hbox$packStart(deducLabel , FALSE , FALSE , 0)
deducName = gtkEntryNew()
deducName$setWidthChars(3)
deducLabel$setMnemonicWidget(deducName)
hbox$packStart(deducName , FALSE , FALSE , 0 )

#------------------------------------------------------------------------------

	#visual interface for inputting number of known alleles: "knownName"
knownLabel = gtkLabelNewWithMnemonic("Number of Knowns:")
hbox$packStart(knownLabel, FALSE, FALSE, 0)
knownName = gtkEntryNew()
knownName$setWidthChars(3)
knownLabel$setMnemonicWidget(knownName)
hbox$packStart(knownName, FALSE, FALSE, 0)

#------------------------------------------------------------------------------

	#visual interface for inputting number of REP's: "repsName"
repsLabel = gtkLabelNewWithMnemonic("Number of REPS:")
hbox$packStart(repsLabel, FALSE, FALSE, 0)
repsName = gtkEntryNew()
repsName$setWidthChars(3)
repsLabel$setMnemonicWidget(repsName)
hbox$packStart(repsName, FALSE, FALSE, 0)

#-----------------------------------------------------------------------------------------------------


	# add a horizontal container to display option to input known alleles 
hbox = gtkHBoxNew(FALSE , 8) # create a new horizontal box 
vbox$packStart(hbox , FALSE , FALSE , 0) 
knownLabel = gtkLabelNewWithMnemonic("Input _First Known Alleles or leave blank if there are none:") 
hbox$packStart(knownLabel , expand = FALSE, FALSE , 0) # add that label to the horizontal box
#add a separator
vbox$packStart(gtkHSeparatorNew() , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k1_D8S1179
hbox =gtkHBoxNew(FALSE, 8)
vbox$packStart(hbox , FALSE , FALSE , 0) 
k1_D8S1179_label = gtkLabelNewWithMnemonic("D8S1179") 
hbox$packStart(k1_D8S1179_label , FALSE, FALSE , 0)
k1_D8S1179 = gtkEntryNew()
k1_D8S1179$setWidthChars(7)
k1_D8S1179_label$setMnemonicWidget(k1_D8S1179)
hbox$packStart(k1_D8S1179 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k1_D21S11
k1_D21S11_label = gtkLabelNewWithMnemonic("D21S11") # create a new label 
hbox$packStart(k1_D21S11_label , FALSE, FALSE , 0)
k1_D21S11 = gtkEntryNew()
k1_D21S11$setWidthChars(7)
k1_D21S11_label$setMnemonicWidget(k1_D21S11)
hbox$packStart(k1_D21S11 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k1_D7S820
k1_D7S820_label = gtkLabelNewWithMnemonic("D7S820") # create a new label 
hbox$packStart(k1_D7S820_label , FALSE, FALSE , 0)
k1_D7S820 = gtkEntryNew()
k1_D7S820$setWidthChars(7)
k1_D7S820_label$setMnemonicWidget(k1_D7S820)
hbox$packStart(k1_D7S820 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k1_CSF1P0
k1_CSF1P0_label = gtkLabelNewWithMnemonic("CSF1P0") # create a new label 
hbox$packStart(k1_CSF1P0_label , FALSE, FALSE , 0)
k1_CSF1P0 = gtkEntryNew()
k1_CSF1P0$setWidthChars(7)
k1_CSF1P0_label$setMnemonicWidget(k1_CSF1P0)
hbox$packStart(k1_CSF1P0 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k1_D3S1358
k1_D3S1358_label = gtkLabelNewWithMnemonic("D3S1358") # create a new label 
hbox$packStart(k1_D3S1358_label , FALSE, FALSE , 0)
k1_D3S1358 = gtkEntryNew()
k1_D3S1358$setWidthChars(7)
k1_D3S1358_label$setMnemonicWidget(k1_D3S1358)
hbox$packStart(k1_D3S1358 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k1_TH01
k1_TH01_label = gtkLabelNewWithMnemonic("TH01") # create a new label 
hbox$packStart(k1_TH01_label , FALSE, FALSE , 0)
k1_TH01 = gtkEntryNew()
k1_TH01$setWidthChars(7)
k1_TH01_label$setMnemonicWidget(k1_TH01)
hbox$packStart(k1_TH01 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k1_D13S317
k1_D13S317_label = gtkLabelNewWithMnemonic("D13S317") # create a new label 
hbox$packStart(k1_D13S317_label , FALSE, FALSE , 0)
k1_D13S317 = gtkEntryNew()
k1_D13S317$setWidthChars(7)
k1_D13S317_label$setMnemonicWidget(k1_D13S317)
hbox$packStart(k1_D13S317 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k1_D16S539
k1_D16S539_label = gtkLabelNewWithMnemonic("D16S539") # create a new label 
hbox$packStart(k1_D16S539_label , FALSE, FALSE , 0)
k1_D16S539 = gtkEntryNew()
k1_D16S539$setWidthChars(7)
k1_D16S539_label$setMnemonicWidget(k1_D16S539)
hbox$packStart(k1_D16S539 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k1_D2S1138
k1_D2S1138_label = gtkLabelNewWithMnemonic("D2S1138") # create a new label 
hbox$packStart(k1_D2S1138_label , FALSE, FALSE , 0)
k1_D2S1138 = gtkEntryNew()
k1_D2S1138$setWidthChars(7)
k1_D2S1138_label$setMnemonicWidget(k1_D2S1138)
hbox$packStart(k1_D2S1138 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k1_D19S433
k1_D19S433_label = gtkLabelNewWithMnemonic("D19S433") # create a new label 
hbox$packStart(k1_D19S433_label , FALSE, FALSE , 0)
k1_D19S433 = gtkEntryNew()
k1_D19S433$setWidthChars(7)
k1_D19S433_label$setMnemonicWidget(k1_D19S433)
hbox$packStart(k1_D19S433 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k1_vWA
k1_vWA_label = gtkLabelNewWithMnemonic("vWA") # create a new label 
hbox$packStart(k1_vWA_label , FALSE, FALSE , 0)
k1_vWA = gtkEntryNew()
k1_vWA$setWidthChars(7)
k1_vWA_label$setMnemonicWidget(k1_vWA)
hbox$packStart(k1_vWA , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k1_TPOX
k1_TPOX_label = gtkLabelNewWithMnemonic("TPOX") # create a new label 
hbox$packStart(k1_TPOX_label , FALSE, FALSE , 0)
k1_TPOX = gtkEntryNew()
k1_TPOX$setWidthChars(7)
k1_TPOX_label$setMnemonicWidget(k1_TPOX)
hbox$packStart(k1_TPOX , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k1_D18S51
k1_D18S51_label = gtkLabelNewWithMnemonic("D18S51") # create a new label 
hbox$packStart(k1_D18S51_label , FALSE, FALSE , 0)
k1_D18S51 = gtkEntryNew()
k1_D18S51$setWidthChars(9)
k1_D18S51_label$setMnemonicWidget(k1_D18S51)
hbox$packStart(k1_D18S51 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k1_D5S818
k1_D5S818_label = gtkLabelNewWithMnemonic("D5S818") # create a new label 
hbox$packStart(k1_D5S818_label , FALSE, FALSE , 0)
k1_D5S818 = gtkEntryNew()
k1_D5S818$setWidthChars(9)
k1_D5S818_label$setMnemonicWidget(k1_D5S818)
hbox$packStart(k1_D5S818 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k1_FGA
k1_FGA_label = gtkLabelNewWithMnemonic("FGA") # create a new label 
hbox$packStart(k1_FGA_label , FALSE, FALSE , 0)
k1_FGA = gtkEntryNew()
k1_FGA$setWidthChars(9)
k1_FGA_label$setMnemonicWidget(k1_FGA)
hbox$packStart(k1_FGA , FALSE , FALSE , 0)

###################################################################################################

#input a second set of known alleles


# add a horizontal container to display option to input known alleles 
hbox = gtkHBoxNew(FALSE , 8) # create a new horizontal box 
vbox$packStart(hbox , FALSE , FALSE , 0) 
knownLabel = gtkLabelNewWithMnemonic("Input _Second Known Alleles:") # create a new label 
hbox$packStart(knownLabel , expand = FALSE, FALSE , 0) # add that label to the horizontal box
#add a separator
vbox$packStart(gtkHSeparatorNew() , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k2_D8S1179
hbox =gtkHBoxNew(FALSE, 8)
vbox$packStart(hbox , FALSE , FALSE , 0) 
k2_D8S1179_label = gtkLabelNewWithMnemonic("D8S1179") 
hbox$packStart(k2_D8S1179_label , FALSE, FALSE , 0)
k2_D8S1179 = gtkEntryNew()
k2_D8S1179$setWidthChars(7)
k2_D8S1179_label$setMnemonicWidget(k2_D8S1179)
hbox$packStart(k2_D8S1179 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k2_D21S11
k2_D21S11_label = gtkLabelNewWithMnemonic("D21S11") # create a new label 
hbox$packStart(k2_D21S11_label , FALSE, FALSE , 0)
k2_D21S11 = gtkEntryNew()
k2_D21S11$setWidthChars(7)
k2_D21S11_label$setMnemonicWidget(k2_D21S11)
hbox$packStart(k2_D21S11 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k2_D7S820
k2_D7S820_label = gtkLabelNewWithMnemonic("D7S820") # create a new label 
hbox$packStart(k2_D7S820_label , FALSE, FALSE , 0)
k2_D7S820 = gtkEntryNew()
k2_D7S820$setWidthChars(7)
k2_D7S820_label$setMnemonicWidget(k2_D7S820)
hbox$packStart(k2_D7S820 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k2_CSF1P0
k2_CSF1P0_label = gtkLabelNewWithMnemonic("CSF1P0") # create a new label 
hbox$packStart(k2_CSF1P0_label , FALSE, FALSE , 0)
k2_CSF1P0 = gtkEntryNew()
k2_CSF1P0$setWidthChars(7)
k2_CSF1P0_label$setMnemonicWidget(k2_CSF1P0)
hbox$packStart(k2_CSF1P0 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k2_D3S1358
k2_D3S1358_label = gtkLabelNewWithMnemonic("D3S1358") # create a new label 
hbox$packStart(k2_D3S1358_label , FALSE, FALSE , 0)
k2_D3S1358 = gtkEntryNew()
k2_D3S1358$setWidthChars(7)
k2_D3S1358_label$setMnemonicWidget(k2_D3S1358)
hbox$packStart(k2_D3S1358 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k2_TH01
k2_TH01_label = gtkLabelNewWithMnemonic("TH01") # create a new label 
hbox$packStart(k2_TH01_label , FALSE, FALSE , 0)
k2_TH01 = gtkEntryNew()
k2_TH01$setWidthChars(7)
k2_TH01_label$setMnemonicWidget(k2_TH01)
hbox$packStart(k2_TH01 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k2_D13S317
k2_D13S317_label = gtkLabelNewWithMnemonic("D13S317") # create a new label 
hbox$packStart(k2_D13S317_label , FALSE, FALSE , 0)
k2_D13S317 = gtkEntryNew()
k2_D13S317$setWidthChars(7)
k2_D13S317_label$setMnemonicWidget(k2_D13S317)
hbox$packStart(k2_D13S317 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k2_D16S539
k2_D16S539_label = gtkLabelNewWithMnemonic("D16S539") # create a new label 
hbox$packStart(k2_D16S539_label , FALSE, FALSE , 0)
k2_D16S539 = gtkEntryNew()
k2_D16S539$setWidthChars(7)
k2_D16S539_label$setMnemonicWidget(k2_D16S539)
hbox$packStart(k2_D16S539 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k2_D2S1138
k2_D2S1138_label = gtkLabelNewWithMnemonic("D2S1138") # create a new label 
hbox$packStart(k2_D2S1138_label , FALSE, FALSE , 0)
k2_D2S1138 = gtkEntryNew()
k2_D2S1138$setWidthChars(7)
k2_D2S1138_label$setMnemonicWidget(k2_D2S1138)
hbox$packStart(k2_D2S1138 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k2_D19S433
k2_D19S433_label = gtkLabelNewWithMnemonic("D19S433") # create a new label 
hbox$packStart(k2_D19S433_label , FALSE, FALSE , 0)
k2_D19S433 = gtkEntryNew()
k2_D19S433$setWidthChars(7)
k2_D19S433_label$setMnemonicWidget(k2_D19S433)
hbox$packStart(k2_D19S433 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k2_vWA
k2_vWA_label = gtkLabelNewWithMnemonic("vWA") # create a new label 
hbox$packStart(k2_vWA_label , FALSE, FALSE , 0)
k2_vWA = gtkEntryNew()
k2_vWA$setWidthChars(7)
k2_vWA_label$setMnemonicWidget(k2_vWA)
hbox$packStart(k2_vWA , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k2_TPOX
k2_TPOX_label = gtkLabelNewWithMnemonic("TPOX") # create a new label 
hbox$packStart(k2_TPOX_label , FALSE, FALSE , 0)
k2_TPOX = gtkEntryNew()
k2_TPOX$setWidthChars(7)
k2_TPOX_label$setMnemonicWidget(k2_TPOX)
hbox$packStart(k2_TPOX , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k2_D18S51
k2_D18S51_label = gtkLabelNewWithMnemonic("D18S51") # create a new label 
hbox$packStart(k2_D18S51_label , FALSE, FALSE , 0)
k2_D18S51 = gtkEntryNew()
k2_D18S51$setWidthChars(9)
k2_D18S51_label$setMnemonicWidget(k2_D18S51)
hbox$packStart(k2_D18S51 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k2_D5S818
k2_D5S818_label = gtkLabelNewWithMnemonic("D5S818") # create a new label 
hbox$packStart(k2_D5S818_label , FALSE, FALSE , 0)
k2_D5S818 = gtkEntryNew()
k2_D5S818$setWidthChars(9)
k2_D5S818_label$setMnemonicWidget(k2_D5S818)
hbox$packStart(k2_D5S818 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k2_FGA
k2_FGA_label = gtkLabelNewWithMnemonic("FGA") # create a new label 
hbox$packStart(k2_FGA_label , FALSE, FALSE , 0)
k2_FGA = gtkEntryNew()
k2_FGA$setWidthChars(9)
k2_FGA_label$setMnemonicWidget(k2_FGA)
hbox$packStart(k2_FGA , FALSE , FALSE , 0)

###################################################################################################

#input for known 3 collectively termed k3_"allele"...

	# add a horizontal container to display option to input known alleles 
hbox = gtkHBoxNew(FALSE , 8) # create a new horizontal box 
vbox$packStart(hbox , FALSE , FALSE , 0) 
knownLabel = gtkLabelNewWithMnemonic("Input _Third Known Allele's:") # create a new label 
hbox$packStart(knownLabel , expand = FALSE, FALSE , 0) # add that label to the horizontal box
	#add a separator
vbox$packStart(gtkHSeparatorNew() , FALSE , FALSE , 0)

	#k3_D8S1179
hbox =gtkHBoxNew(FALSE, 8)
vbox$packStart(hbox , FALSE , FALSE , 0) 
k3_D8S1179_label = gtkLabelNewWithMnemonic("D8S1179") 
hbox$packStart(k3_D8S1179_label , FALSE, FALSE , 0)
k3_D8S1179 = gtkEntryNew()
k3_D8S1179$setWidthChars(7)
k3_D8S1179_label$setMnemonicWidget(k3_D8S1179)
hbox$packStart(k3_D8S1179 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k3_D21S11
k3_D21S11_label = gtkLabelNewWithMnemonic("D21S11") # create a new label 
hbox$packStart(k3_D21S11_label , FALSE, FALSE , 0)
k3_D21S11 = gtkEntryNew()
k3_D21S11$setWidthChars(7)
k3_D21S11_label$setMnemonicWidget(k3_D21S11)
hbox$packStart(k3_D21S11 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k3_D7S820
k3_D7S820_label = gtkLabelNewWithMnemonic("D7S820") # create a new label 
hbox$packStart(k3_D7S820_label , FALSE, FALSE , 0)
k3_D7S820 = gtkEntryNew()
k3_D7S820$setWidthChars(7)
k3_D7S820_label$setMnemonicWidget(k3_D7S820)
hbox$packStart(k3_D7S820 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k3_CSF1P0
k3_CSF1P0_label = gtkLabelNewWithMnemonic("CSF1P0") # create a new label 
hbox$packStart(k3_CSF1P0_label , FALSE, FALSE , 0)
k3_CSF1P0 = gtkEntryNew()
k3_CSF1P0$setWidthChars(7)
k3_CSF1P0_label$setMnemonicWidget(k3_CSF1P0)
hbox$packStart(k3_CSF1P0 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k3_D3S1358
k3_D3S1358_label = gtkLabelNewWithMnemonic("D3S1358") # create a new label 
hbox$packStart(k3_D3S1358_label , FALSE, FALSE , 0)
k3_D3S1358 = gtkEntryNew()
k3_D3S1358$setWidthChars(7)
k3_D3S1358_label$setMnemonicWidget(k3_D3S1358)
hbox$packStart(k3_D3S1358 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k3_TH01
k3_TH01_label = gtkLabelNewWithMnemonic("TH01") # create a new label 
hbox$packStart(k3_TH01_label , FALSE, FALSE , 0)
k3_TH01 = gtkEntryNew()
k3_TH01$setWidthChars(7)
k3_TH01_label$setMnemonicWidget(k3_TH01)
hbox$packStart(k3_TH01 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k3_D13S317
k3_D13S317_label = gtkLabelNewWithMnemonic("D13S317") # create a new label 
hbox$packStart(k3_D13S317_label , FALSE, FALSE , 0)
k3_D13S317 = gtkEntryNew()
k3_D13S317$setWidthChars(7)
k3_D13S317_label$setMnemonicWidget(k3_D13S317)
hbox$packStart(k3_D13S317 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k3_D16S539
k3_D16S539_label = gtkLabelNewWithMnemonic("D16S539") # create a new label 
hbox$packStart(k3_D16S539_label , FALSE, FALSE , 0)
k3_D16S539 = gtkEntryNew()
k3_D16S539$setWidthChars(7)
k3_D16S539_label$setMnemonicWidget(k3_D16S539)
hbox$packStart(k3_D16S539 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k3_D2S1138
k3_D2S1138_label = gtkLabelNewWithMnemonic("D2S1138") # create a new label 
hbox$packStart(k3_D2S1138_label , FALSE, FALSE , 0)
k3_D2S1138 = gtkEntryNew()
k3_D2S1138$setWidthChars(7)
k3_D2S1138_label$setMnemonicWidget(k3_D2S1138)
hbox$packStart(k3_D2S1138 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k3_D19S433
k3_D19S433_label = gtkLabelNewWithMnemonic("D19S433") # create a new label 
hbox$packStart(k3_D19S433_label , FALSE, FALSE , 0)
k3_D19S433 = gtkEntryNew()
k3_D19S433$setWidthChars(7)
k3_D19S433_label$setMnemonicWidget(k3_D19S433)
hbox$packStart(k3_D19S433 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k3_vWA
k3_vWA_label = gtkLabelNewWithMnemonic("vWA") # create a new label 
hbox$packStart(k3_vWA_label , FALSE, FALSE , 0)
k3_vWA = gtkEntryNew()
k3_vWA$setWidthChars(7)
k3_vWA_label$setMnemonicWidget(k3_vWA)
hbox$packStart(k3_vWA , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k3_TPOX
k3_TPOX_label = gtkLabelNewWithMnemonic("TPOX") # create a new label 
hbox$packStart(k3_TPOX_label , FALSE, FALSE , 0)
k3_TPOX = gtkEntryNew()
k3_TPOX$setWidthChars(7)
k3_TPOX_label$setMnemonicWidget(k3_TPOX)
hbox$packStart(k3_TPOX , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k3_D18S51
k3_D18S51_label = gtkLabelNewWithMnemonic("D18S51") # create a new label 
hbox$packStart(k3_D18S51_label , FALSE, FALSE , 0)
k3_D18S51 = gtkEntryNew()
k3_D18S51$setWidthChars(9)
k3_D18S51_label$setMnemonicWidget(k3_D18S51)
hbox$packStart(k3_D18S51 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k3_D5S818
k3_D5S818_label = gtkLabelNewWithMnemonic("D5S818") # create a new label 
hbox$packStart(k3_D5S818_label , FALSE, FALSE , 0)
k3_D5S818 = gtkEntryNew()
k3_D5S818$setWidthChars(9)
k3_D5S818_label$setMnemonicWidget(k3_D5S818)
hbox$packStart(k3_D5S818 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k3_FGA
k3_FGA_label = gtkLabelNewWithMnemonic("FGA") # create a new label 
hbox$packStart(k3_FGA_label , FALSE, FALSE , 0)
k3_FGA = gtkEntryNew()
k3_FGA$setWidthChars(9)
k3_FGA_label$setMnemonicWidget(k3_FGA)
hbox$packStart(k3_FGA , FALSE , FALSE , 0)


###################################################################################################

#Input for Known contributor 4 collectivley delimited with k4_""

	# add a horizontal container to display option to input known alleles 
hbox = gtkHBoxNew(FALSE , 8) # create a new horizontal box 
vbox$packStart(hbox , FALSE , FALSE , 0) 
knownLabel = gtkLabelNewWithMnemonic("Input _Fourth Known Allele's:") # create a new label 
hbox$packStart(knownLabel , expand = FALSE, FALSE , 0) # add that label to the horizontal box
	#add a separator
vbox$packStart(gtkHSeparatorNew() , FALSE , FALSE , 0)

	#k4_D8S1179
hbox =gtkHBoxNew(FALSE, 8)
vbox$packStart(hbox , FALSE , FALSE , 0) 
k4_D8S1179_label = gtkLabelNewWithMnemonic("D8S1179") 
hbox$packStart(k4_D8S1179_label , FALSE, FALSE , 0)
k4_D8S1179 = gtkEntryNew()
k4_D8S1179$setWidthChars(7)
k4_D8S1179_label$setMnemonicWidget(k4_D8S1179)
hbox$packStart(k4_D8S1179 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k4_D21S11
k4_D21S11_label = gtkLabelNewWithMnemonic("D21S11") # create a new label 
hbox$packStart(k4_D21S11_label , FALSE, FALSE , 0)
k4_D21S11 = gtkEntryNew()
k4_D21S11$setWidthChars(7)
k4_D21S11_label$setMnemonicWidget(k4_D21S11)
hbox$packStart(k4_D21S11 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k4_D7S820
k4_D7S820_label = gtkLabelNewWithMnemonic("D7S820") # create a new label 
hbox$packStart(k4_D7S820_label , FALSE, FALSE , 0)
k4_D7S820 = gtkEntryNew()
k4_D7S820$setWidthChars(7)
k4_D7S820_label$setMnemonicWidget(k4_D7S820)
hbox$packStart(k4_D7S820 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k4_CSF1P0
k4_CSF1P0_label = gtkLabelNewWithMnemonic("CSF1P0") # create a new label 
hbox$packStart(k4_CSF1P0_label , FALSE, FALSE , 0)
k4_CSF1P0 = gtkEntryNew()
k4_CSF1P0$setWidthChars(7)
k4_CSF1P0_label$setMnemonicWidget(k4_CSF1P0)
hbox$packStart(k4_CSF1P0 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k4_D3S1358
k4_D3S1358_label = gtkLabelNewWithMnemonic("D3S1358") # create a new label 
hbox$packStart(k4_D3S1358_label , FALSE, FALSE , 0)
k4_D3S1358 = gtkEntryNew()
k4_D3S1358$setWidthChars(7)
k4_D3S1358_label$setMnemonicWidget(k4_D3S1358)
hbox$packStart(k4_D3S1358 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
	#k4_TH01
k4_TH01_label = gtkLabelNewWithMnemonic("TH01") # create a new label 
hbox$packStart(k4_TH01_label , FALSE, FALSE , 0)
k4_TH01 = gtkEntryNew()
k4_TH01$setWidthChars(7)
k4_TH01_label$setMnemonicWidget(k4_TH01)
hbox$packStart(k4_TH01 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k4_D13S317
k4_D13S317_label = gtkLabelNewWithMnemonic("D13S317") # create a new label 
hbox$packStart(k4_D13S317_label , FALSE, FALSE , 0)
k4_D13S317 = gtkEntryNew()
k4_D13S317$setWidthChars(7)
k4_D13S317_label$setMnemonicWidget(k4_D13S317)
hbox$packStart(k4_D13S317 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k4_D16S539
k4_D16S539_label = gtkLabelNewWithMnemonic("D16S539") # create a new label 
hbox$packStart(k4_D16S539_label , FALSE, FALSE , 0)
k4_D16S539 = gtkEntryNew()
k4_D16S539$setWidthChars(7)
k4_D16S539_label$setMnemonicWidget(k4_D16S539)
hbox$packStart(k4_D16S539 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k4_D2S1138
k4_D2S1138_label = gtkLabelNewWithMnemonic("D2S1138") # create a new label 
hbox$packStart(k4_D2S1138_label , FALSE, FALSE , 0)
k4_D2S1138 = gtkEntryNew()
k4_D2S1138$setWidthChars(7)
k4_D2S1138_label$setMnemonicWidget(k4_D2S1138)
hbox$packStart(k4_D2S1138 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k4_D19S433
k4_D19S433_label = gtkLabelNewWithMnemonic("D19S433") # create a new label 
hbox$packStart(k4_D19S433_label , FALSE, FALSE , 0)
k4_D19S433 = gtkEntryNew()
k4_D19S433$setWidthChars(7)
k4_D19S433_label$setMnemonicWidget(k4_D19S433)
hbox$packStart(k4_D19S433 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k4_vWA
k4_vWA_label = gtkLabelNewWithMnemonic("vWA") # create a new label 
hbox$packStart(k4_vWA_label , FALSE, FALSE , 0)
k4_vWA = gtkEntryNew()
k4_vWA$setWidthChars(7)
k4_vWA_label$setMnemonicWidget(k4_vWA)
hbox$packStart(k4_vWA , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k4_TPOX
k4_TPOX_label = gtkLabelNewWithMnemonic("TPOX") # create a new label 
hbox$packStart(k4_TPOX_label , FALSE, FALSE , 0)
k4_TPOX = gtkEntryNew()
k4_TPOX$setWidthChars(7)
k4_TPOX_label$setMnemonicWidget(k4_TPOX)
hbox$packStart(k4_TPOX , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k4_D18S51
k4_D18S51_label = gtkLabelNewWithMnemonic("D18S51") # create a new label 
hbox$packStart(k4_D18S51_label , FALSE, FALSE , 0)
k4_D18S51 = gtkEntryNew()
k4_D18S51$setWidthChars(9)
k4_D18S51_label$setMnemonicWidget(k4_D18S51)
hbox$packStart(k4_D18S51 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k4_D5S818
k4_D5S818_label = gtkLabelNewWithMnemonic("D5S818") # create a new label 
hbox$packStart(k4_D5S818_label , FALSE, FALSE , 0)
k4_D5S818 = gtkEntryNew()
k4_D5S818$setWidthChars(9)
k4_D5S818_label$setMnemonicWidget(k4_D5S818)
hbox$packStart(k4_D5S818 , FALSE , FALSE , 0)
#-------------------------------------------------------------------------------------------------------
	#k4_FGA
k4_FGA_label = gtkLabelNewWithMnemonic("FGA") # create a new label 
hbox$packStart(k4_FGA_label , FALSE, FALSE , 0)
k4_FGA = gtkEntryNew()
k4_FGA$setWidthChars(9)
k4_FGA_label$setMnemonicWidget(k4_FGA)
hbox$packStart(k4_FGA , FALSE , FALSE , 0)
hbox$packStart(gtkHSeparatorNew() , FALSE , FALSE , 0)

###################################################################################################




###################################################################################################

#add a horizontal container to display option to input suspect alleles 
hbox = gtkHBoxNew(FALSE , 8) # create a new horizontal box 
vbox$packStart(hbox, FALSE, FALSE, 0)
label = gtkLabelNewWithMnemonic("Input Individual Allele REPs seperated by a semicolon. If no allele's observed input: N/ NEG. If no viable rep input: INC:") # create a new label 
hbox$packStart(label , expand = FALSE, FALSE , 0) # add that label to the horizontal box
#add a separator
vbox$packStart(gtkHSeparatorNew() , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
#rep1_D8S1179
hbox =gtkHBoxNew(FALSE, 8)
vbox$packStart(hbox , FALSE , FALSE , 0) 
rep1_D8S1179_label = gtkLabelNewWithMnemonic("_REP1") 
hbox$packStart(rep1_D8S1179_label , FALSE, FALSE , 0)
hbox = gtkHBoxNew(FALSE , 8)
vbox$packStart(hbox, FALSE , FALSE , 0)
rep1_D8S1179 = gtkEntryNew()
rep1_D8S1179$setWidthChars(15)
rep1_D8S1179$setMnemonicWidget(rep1_D8S1179)
hbox$packStart(rep1_D8S1179 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
#rep1_D21S11
rep1_D21S11 = gtkEntryNew()
rep1_D21S11$setWidthChars(15)
hbox$packStart(rep1_D21S11 , FALSE , FALSE , 0) 
#--------------------------------------------------------------------------------------------------------
#rep1_D7S820
rep1_D7S820 = gtkEntryNew()
rep1_D7S820$setWidthChars(15)
hbox$packStart(rep1_D7S820 , FALSE , FALSE , 0) 
#--------------------------------------------------------------------------------------------------------
#rep1_CSF1PO
rep1_CSF1PO = gtkEntryNew()
rep1_CSF1PO$setWidthChars(15)
hbox$packStart(rep1_CSF1PO , FALSE , FALSE , 0) 
#--------------------------------------------------------------------------------------------------------
#rep1_D3S1358
rep1_D3S1358 = gtkEntryNew()
rep1_D3S1358$setWidthChars(15)
hbox$packStart(rep1_D3S1358 , FALSE , FALSE , 0) 
#--------------------------------------------------------------------------------------------------------
#rep1_TH01
rep1_TH01 = gtkEntryNew()
rep1_TH01$setWidthChars(15)
hbox$packStart(rep1_TH01 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep1_D13S317
rep1_D13S317 = gtkEntryNew()
rep1_D13S317$setWidthChars(15)
hbox$packStart(rep1_D13S317 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep1_D16S539
rep1_D16S539 = gtkEntryNew()
rep1_D16S539$setWidthChars(15)
hbox$packStart(rep1_D16S539 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep1_D2S1338
rep1_D2S1338 = gtkEntryNew()
rep1_D2S1338$setWidthChars(15)
hbox$packStart(rep1_D2S1338 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep1_D19S433
rep1_D19S433 = gtkEntryNew()
rep1_D19S433$setWidthChars(17)
hbox$packStart(rep1_D19S433 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep1_vWA
rep1_vWA = gtkEntryNew()
rep1_vWA$setWidthChars(13)
hbox$packStart(rep1_vWA , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep1_TPOX
rep1_TPOX = gtkEntryNew()
rep1_TPOX$setWidthChars(13)
hbox$packStart(rep1_TPOX , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep1_D18S51
rep1_D18S51 = gtkEntryNew()
rep1_D18S51$setWidthChars(15)
hbox$packStart(rep1_D18S51 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep1_D5S818
rep1_D5S818 = gtkEntryNew()
rep1_D5S818$setWidthChars(15)
hbox$packStart(rep1_D5S818 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep1_FGA
rep1_FGA = gtkEntryNew()
rep1_FGA$setWidthChars(15)
hbox$packStart(rep1_FGA , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep2_D8S1179
hbox =gtkHBoxNew(FALSE, 8)
vbox$packStart(hbox , FALSE , FALSE , 0) 
rep2_D8S1179_label = gtkLabelNewWithMnemonic("REP2") 
hbox$packStart(rep2_D8S1179_label , FALSE, FALSE , 0)
hbox = gtkHBoxNew(FALSE , 8)
vbox$packStart(hbox, FALSE , FALSE , 0)
rep2_D8S1179 = gtkEntryNew()
rep2_D8S1179$setWidthChars(15)
rep2_D8S1179$setMnemonicWidget(rep2_D8S1179)
hbox$packStart(rep2_D8S1179 , FALSE , FALSE , 0)
#--------------------------------------------------------------------------------------------------------
#rep2_D21S11
rep2_D21S11 = gtkEntryNew()
rep2_D21S11$setWidthChars(15)
hbox$packStart(rep2_D21S11 , FALSE , FALSE , 0) 
#--------------------------------------------------------------------------------------------------------
#rep2_D7S820
rep2_D7S820 = gtkEntryNew()
rep2_D7S820$setWidthChars(15)
hbox$packStart(rep2_D7S820 , FALSE , FALSE , 0) 
#--------------------------------------------------------------------------------------------------------
#rep2_CSF1PO
rep2_CSF1PO = gtkEntryNew()
rep2_CSF1PO$setWidthChars(15)
hbox$packStart(rep2_CSF1PO , FALSE , FALSE , 0) 
#--------------------------------------------------------------------------------------------------------
#rep2_D3S1358
rep2_D3S1358 = gtkEntryNew()
rep2_D3S1358$setWidthChars(15)
hbox$packStart(rep2_D3S1358 , FALSE , FALSE , 0) 
#--------------------------------------------------------------------------------------------------------
#rep2_TH01
rep2_TH01 = gtkEntryNew()
rep2_TH01$setWidthChars(15)
hbox$packStart(rep2_TH01 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep2_D13S317
rep2_D13S317 = gtkEntryNew()
rep2_D13S317$setWidthChars(15)
hbox$packStart(rep2_D13S317 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep2_D16S539
rep2_D16S539 = gtkEntryNew()
rep2_D16S539$setWidthChars(15)
hbox$packStart(rep2_D16S539 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep2_D2S1338
rep2_D2S1338 = gtkEntryNew()
rep2_D2S1338$setWidthChars(15)
hbox$packStart(rep2_D2S1338 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep2_D19S433
rep2_D19S433 = gtkEntryNew()
rep2_D19S433$setWidthChars(17)
hbox$packStart(rep2_D19S433 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep2_vWA
rep2_vWA = gtkEntryNew()
rep2_vWA$setWidthChars(13)
hbox$packStart(rep2_vWA , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep2_TPOX
rep2_TPOX = gtkEntryNew()
rep2_TPOX$setWidthChars(13)
hbox$packStart(rep2_TPOX , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep2_D18S51
rep2_D18S51 = gtkEntryNew()
rep2_D18S51$setWidthChars(15)
hbox$packStart(rep2_D18S51 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep2_D5S818
rep2_D5S818 = gtkEntryNew()
rep2_D5S818$setWidthChars(15)
hbox$packStart(rep2_D5S818 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep2_FGA
rep2_FGA = gtkEntryNew()
rep2_FGA$setWidthChars(15)
hbox$packStart(rep2_FGA , FALSE , FALSE , 0) 
#--------------------------------------------------------------------------------------------------------
#rep3_D8S1179
hbox =gtkHBoxNew(FALSE, 8)
vbox$packStart(hbox , FALSE , FALSE , 0) 
rep3_D8S1179_label = gtkLabelNewWithMnemonic("REP3") 
hbox$packStart(rep3_D8S1179_label , FALSE, FALSE , 0)
hbox = gtkHBoxNew(FALSE , 8)
vbox$packStart(hbox, FALSE , FALSE , 0)
rep3_D8S1179 = gtkEntryNew()
rep3_D8S1179$setWidthChars(15)
rep3_D8S1179$setMnemonicWidget(rep3_D8S1179_label) 
hbox$packStart(rep3_D8S1179 , FALSE , FALSE , 0)

######################################################for some reason the above statment is throwing some kind of error could you look at this please?
#--------------------------------------------------------------------------------------------------------
#rep3_D21S11
rep3_D21S11 = gtkEntryNew()
rep3_D21S11$setWidthChars(15)
hbox$packStart(rep3_D21S11 , FALSE , FALSE , 0) 
#--------------------------------------------------------------------------------------------------------
#rep3_D7S820
rep3_D7S820 = gtkEntryNew()
rep3_D7S820$setWidthChars(15)
hbox$packStart(rep3_D7S820 , FALSE , FALSE , 0) 
#--------------------------------------------------------------------------------------------------------
#rep3_CSF1PO
rep3_CSF1PO = gtkEntryNew()
rep3_CSF1PO$setWidthChars(15)
hbox$packStart(rep3_CSF1PO , FALSE , FALSE , 0) 
#--------------------------------------------------------------------------------------------------------
#rep3_D3S1358
rep3_D3S1358 = gtkEntryNew()
rep3_D3S1358$setWidthChars(15)
hbox$packStart(rep3_D3S1358 , FALSE , FALSE , 0) 
#--------------------------------------------------------------------------------------------------------
#rep3_TH01
rep3_TH01 = gtkEntryNew()
rep3_TH01$setWidthChars(15)
hbox$packStart(rep3_TH01 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep3_D13S317
rep3_D13S317 = gtkEntryNew()
rep3_D13S317$setWidthChars(15)
hbox$packStart(rep3_D13S317 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep3_D16S539
rep3_D16S539 = gtkEntryNew()
rep3_D16S539$setWidthChars(15)
hbox$packStart(rep3_D16S539 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep3_D2S1338
rep3_D2S1338 = gtkEntryNew()
rep3_D2S1338$setWidthChars(15)
hbox$packStart(rep3_D2S1338 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep3_D19S433
rep3_D19S433 = gtkEntryNew()
rep3_D19S433$setWidthChars(17)
hbox$packStart(rep3_D19S433 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep3_vWA
rep3_vWA = gtkEntryNew()
rep3_vWA$setWidthChars(13)
hbox$packStart(rep3_vWA , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep3_TPOX
rep3_TPOX = gtkEntryNew()
rep3_TPOX$setWidthChars(13)
hbox$packStart(rep3_TPOX , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep3_D18S51
rep3_D18S51 = gtkEntryNew()
rep3_D18S51$setWidthChars(15)
hbox$packStart(rep3_D18S51 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep3_D5S818
rep3_D5S818 = gtkEntryNew()
rep3_D5S818$setWidthChars(15)
hbox$packStart(rep3_D5S818 , FALSE , FALSE , 0) 
#---------------------------------------------------------------------------------
#rep3_FGA
rep3_FGA = gtkEntryNew()
rep3_FGA$setWidthChars(15)
hbox$packStart(rep3_FGA , FALSE , FALSE , 0) 

	# create buton for "save.user.input"
buttonOK <- gtkButtonNewFromStock("gtk-ok")
gSignalConnect(buttonOK , "clicked" , save.user.input)
vbox$packStart(buttonOK , fill = T)


#end of GUI itself and start of the processing and writing portion of the program
#-######################################################################################################
	#save.user.input is a function that writes the input from the GUI into multiple (usually 15) .csv files 
	#and then calls the LAST.exe file that Kevin Wrote

 save.user.input <- function(...) {

		knowns <- as.numeric(knownName$getText())
		reps <- as.numeric(repsName$getText())


############################################################################################
	#create a matrix containing the names of each loci

locusList <- c("D8S1179", "D21S11", "D7S820", "CSF1PO", "D3S1358", "TH01", "D13S317", "D16S539", "D2S1338", "D19S433", "vWA", "TPOX", "D18S51", "D5S818", "FGA")

locusList <-matrix(locusList, 15,1)


############################################################################################
	
knownList<- 1:length((15*knowns))

knownMtx<-matrix(knownList, 15, knowns)

	
	
	if(knowns ==1) {
knownMtx[1,1] <-k1_D8S1179$getText()
knownMtx[2,1] <-k1_D21S11$getText()
knownMtx[3,1] <-k1_D7S820$getText()
knownMtx[4,1] <-k1_CSF1P0$getText()
knownMtx[5,1] <-k1_D3S1358$getText()
knownMtx[6,1] <-k1_TH01$getText()
knownMtx[7,1] <-k1_D13S317$getText()
knownMtx[8,1] <-k1_D16S539$getText()
knownMtx[9,1] <- k1_D2S1138$getText()
knownMtx[10,1] <-k1_D19S433$getText()
knownMtx[11,1] <-k1_vWA$getText()
knownMtx[12,1] <-k1_TPOX$getText()
knownMtx[13,1] <-k1_D18S51$getText()
knownMtx[14,1] <-k1_D5S818$getText()
knownMtx[15,1] <-k1_FGA$getText()
	}

if(knowns ==2) {

knownMtx[1,1] <-k1_D8S1179$getText()
knownMtx[2,1] <-k1_D21S11$getText()
knownMtx[3,1] <-k1_D7S820$getText()
knownMtx[4,1] <-k1_CSF1P0$getText()
knownMtx[5,1] <-k1_D3S1358$getText()
knownMtx[6,1] <-k1_TH01$getText()
knownMtx[7,1] <-k1_D13S317$getText()
knownMtx[8,1] <-k1_D16S539$getText()
knownMtx[9,1] <-k1_D2S1138$getText()
knownMtx[10,1] <-k1_D19S433$getText()
knownMtx[11,1] <-k1_vWA$getText()
knownMtx[12,1] <-k1_TPOX$getText()
knownMtx[13,1] <-k1_D18S51$getText()
knownMtx[14,1] <-k1_D5S818$getText()
knownMtx[15,1] <-k1_FGA$getText()

knownMtx[1,2] <-k2_D8S1179$getText()
knownMtx[2,2] <-k2_D21S11$getText()
knownMtx[3,2] <-k2_D7S820$getText()
knownMtx[4,2] <-k2_CSF1P0$getText()
knownMtx[5,2] <-k2_D3S1358$getText()
knownMtx[6,2] <-k2_TH01$getText()
knownMtx[7,2] <-k2_D13S317$getText()
knownMtx[8,2] <-k2_D16S539$getText()
knownMtx[9,2] <- k2_D2S1138$getText()
knownMtx[10,2] <-k2_D19S433$getText()
knownMtx[11,2] <-k2_vWA$getText()
knownMtx[12,2] <-k2_TPOX$getText()
knownMtx[13,2] <-k2_D18S51$getText()
knownMtx[14,2] <-k2_D5S818$getText()
knownMtx[15,2] <-k2_FGA$getText()
	}

	if(knowns == 3) {
knownMtx[1,1] <-k1_D8S1179$getText()
knownMtx[2,1] <-k1_D21S11$getText()
knownMtx[3,1] <-k1_D7S820$getText()
knownMtx[4,1] <-k1_CSF1P0$getText()
knownMtx[5,1] <-k1_D3S1358$getText()
knownMtx[6,1] <-k1_TH01$getText()
knownMtx[7,1] <-k1_D13S317$getText()
knownMtx[8,1] <-k1_D16S539$getText()
knownMtx[9,1] <- k1_D2S1138$getText()
knownMtx[10,1] <-k1_D19S433$getText()
knownMtx[11,1] <-k1_vWA$getText()
knownMtx[12,1] <-k1_TPOX$getText()
knownMtx[13,1] <-k1_D18S51$getText()
knownMtx[14,1] <-k1_D5S818$getText()
knownMtx[15,1] <-k1_FGA$getText()

knownMtx[1,2] <-k2_D8S1179$getText()
knownMtx[2,2] <-k2_D21S11$getText()
knownMtx[3,2] <-k2_D7S820$getText()
knownMtx[4,2] <-k2_CSF1P0$getText()
knownMtx[5,2] <-k2_D3S1358$getText()
knownMtx[6,2] <-k2_TH01$getText()
knownMtx[7,2] <-k2_D13S317$getText()
knownMtx[8,2] <-k2_D16S539$getText()
knownMtx[9,2] <- k2_D2S1138$getText()
knownMtx[10,2] <-k2_D19S433$getText()
knownMtx[11,2] <-k2_vWA$getText()
knownMtx[12,2] <-k2_TPOX$getText()
knownMtx[13,2] <-k2_D18S51$getText()
knownMtx[14,2] <-k2_D5S818$getText()
knownMtx[15,2] <-k2_FGA$getText()

knownMtx[1,3] <-k3_D8S1179$getText()
knownMtx[2,3] <-k3_D21S11$getText()
knownMtx[3,3] <-k3_D7S820$getText()
knownMtx[4,3] <-k3_CSF1P0$getText()
knownMtx[5,3] <-k3_D3S1358$getText()
knownMtx[6,3] <-k3_TH01$getText()
knownMtx[7,3] <-k3_D13S317$getText()
knownMtx[8,3] <-k3_D16S539$getText()
knownMtx[9,3] <- k3_D2S1138$getText()
knownMtx[10,3] <-k3_D19S433$getText()
knownMtx[11,3] <-k3_vWA$getText()
knownMtx[12,3] <-k3_TPOX$getText()
knownMtx[13,3] <-k3_D18S51$getText()
knownMtx[14,3] <-k3_D5S818$getText()
knownMtx[15,3] <-k3_FGA$getText()
	}

	if(knowns ==4) {
knownMtx[1,1] <-k1_D8S1179$getText()
knownMtx[2,1] <-k1_D21S11$getText()
knownMtx[3,1] <-k1_D7S820$getText()
knownMtx[4,1] <-k1_CSF1P0$getText()
knownMtx[5,1] <-k1_D3S1358$getText()
knownMtx[6,1] <-k1_TH01$getText()
knownMtx[7,1] <-k1_D13S317$getText()
knownMtx[8,1] <-k1_D16S539$getText()
knownMtx[9,1] <- k1_D2S1138$getText()
knownMtx[10,1] <-k1_D19S433$getText()
knownMtx[11,1] <-k1_vWA$getText()
knownMtx[12,1] <-k1_TPOX$getText()
knownMtx[13,1] <-k1_D18S51$getText()
knownMtx[14,1] <-k1_D5S818$getText()
knownMtx[15,1] <-k1_FGA$getText()

knownMtx[1,2] <-k2_D8S1179$getText()
knownMtx[2,2] <-k2_D21S11$getText()
knownMtx[3,2] <-k2_D7S820$getText()
knownMtx[4,2] <-k2_CSF1P0$getText()
knownMtx[5,2] <-k2_D3S1358$getText()
knownMtx[6,2] <-k2_TH01$getText()
knownMtx[7,2] <-k2_D13S317$getText()
knownMtx[8,2] <-k2_D16S539$getText()
knownMtx[9,2] <- k2_D2S1138$getText()
knownMtx[10,2] <-k2_D19S433$getText()
knownMtx[11,2] <-k2_vWA$getText()
knownMtx[12,2] <-k2_TPOX$getText()
knownMtx[13,2] <-k2_D18S51$getText()
knownMtx[14,2] <-k2_D5S818$getText()
knownMtx[15,2] <-k2_FGA$getText()

knownMtx[1,3] <-k3_D8S1179$getText()
knownMtx[2,3] <-k3_D21S11$getText()
knownMtx[3,3] <-k3_D7S820$getText()
knownMtx[4,3] <-k3_CSF1P0$getText()
knownMtx[5,3] <-k3_D3S1358$getText()
knownMtx[6,3] <-k3_TH01$getText()
knownMtx[7,3] <-k3_D13S317$getText()
knownMtx[8,3] <-k3_D16S539$getText()
knownMtx[9,3] <- k3_D2S1138$getText()
knownMtx[10,3] <-k3_D19S433$getText()
knownMtx[11,3] <-k3_vWA$getText()
knownMtx[12,3] <-k3_TPOX$getText()
knownMtx[13,3] <-k3_D18S51$getText()
knownMtx[14,3] <-k3_D5S818$getText()
knownMtx[15,3] <-k3_FGA$getText()

knownMtx[1,4] <-k4_D8S1179$getText()
knownMtx[2,4] <-k4_D21S11$getText()
knownMtx[3,4] <-k4_D7S820$getText()
knownMtx[4,4] <-k4_CSF1P0$getText()
knownMtx[5,4] <-k4_D3S1358$getText()
knownMtx[6,4] <- k4_TH01$getText()
knownMtx[7,4] <- k4_D13S317$getText()
knownMtx[8,4] <- k4_D16S539$getText()
knownMtx[9,4] <- k4_D2S1138$getText()
knownMtx[10,4] <-k4_D19S433$getText()
knownMtx[11,4] <-k4_vWA$getText()
knownMtx[12,4] <-k4_TPOX$getText()
knownMtx[13,4] <-k4_D18S51$getText()
knownMtx[14,4] <-k4_D5S818$getText()
knownMtx[15,4] <-k4_FGA$getText()
	}


############################################################################################

neg <- -1

if(reps==1) {

rep1List<-matrix(neg,15,reps)

rep1List[1] <- rep1_D8S1179$getText()
rep1List[2] <- rep1_D21S11$getText()
rep1List[3] <- rep1_D7S820$getText()
rep1List[4] <- rep1_CSF1PO$getText()
rep1List[5] <- rep1_D3S1358$getText()
rep1List[6] <- rep1_TH01$getText()
rep1List[7] <- rep1_D13S317$getText()
rep1List[8] <- rep1_D16S539$getText()
rep1List[9] <- rep1_D2S1338$getText()
rep1List[10] <- rep1_D19S433$getText()
rep1List[11] <- rep1_vWA$getText()
rep1List[12] <- rep1_TPOX$getText()
rep1List[13] <- rep1_D18S51$getText()
rep1List[14] <- rep1_D5S818$getText()
rep1List[15] <- rep1_FGA$getText()

	}  

if(reps==2) {

rep1List<-matrix(neg,15,1)

rep1List[1] <- rep1_D8S1179$getText()
rep1List[2] <- rep1_D21S11$getText()
rep1List[3] <- rep1_D7S820$getText()
rep1List[4] <- rep1_CSF1PO$getText()
rep1List[5] <- rep1_D3S1358$getText()
rep1List[6] <- rep1_TH01$getText()
rep1List[7] <- rep1_D13S317$getText()
rep1List[8] <- rep1_D16S539$getText()
rep1List[9] <- rep1_D2S1338$getText()
rep1List[10] <- rep1_D19S433$getText()
rep1List[11] <- rep1_vWA$getText()
rep1List[12] <- rep1_TPOX$getText()
rep1List[13] <- rep1_D18S51$getText()
rep1List[14] <- rep1_D5S818$getText()
rep1List[15] <- rep1_FGA$getText()

rep2List<-matrix(neg,15,1)

rep2List[1] <- rep2_D8S1179$getText()
rep2List[2] <- rep2_D21S11$getText()
rep2List[3] <- rep2_D7S820$getText()
rep2List[4] <- rep2_CSF1PO$getText()
rep2List[5] <- rep2_D3S1358$getText()
rep2List[6] <- rep2_TH01$getText()
rep2List[7] <- rep2_D13S317$getText()
rep2List[8] <- rep2_D16S539$getText()
rep2List[9] <- rep2_D2S1338$getText()
rep2List[10] <- rep2_D19S433$getText()
rep2List[11] <- rep2_vWA$getText()
rep2List[12] <- rep2_TPOX$getText()
rep2List[13] <- rep2_D18S51$getText()
rep2List[14] <- rep2_D5S818$getText()
rep2List[15] <- rep2_FGA$getText()
	}

if(reps==3) {

rep1List<-matrix(neg,15,1)

rep1List[1] <- rep1_D8S1179$getText()
rep1List[2] <- rep1_D21S11$getText()
rep1List[3] <- rep1_D7S820$getText()
rep1List[4] <- rep1_CSF1PO$getText()
rep1List[5] <- rep1_D3S1358$getText()
rep1List[6] <- rep1_TH01$getText()
rep1List[7] <- rep1_D13S317$getText()
rep1List[8] <- rep1_D16S539$getText()
rep1List[9] <- rep1_D2S1338$getText()
rep1List[10] <- rep1_D19S433$getText()
rep1List[11] <- rep1_vWA$getText()
rep1List[12] <- rep1_TPOX$getText()
rep1List[13] <- rep1_D18S51$getText()
rep1List[14] <- rep1_D5S818$getText()
rep1List[15] <- rep1_FGA$getText()

rep2List<-matrix(neg,15,1)

rep2List[1] <- rep2_D8S1179$getText()
rep2List[2] <- rep2_D21S11$getText()
rep2List[3] <- rep2_D7S820$getText()
rep2List[4] <- rep2_CSF1PO$getText()
rep2List[5] <- rep2_D3S1358$getText()
rep2List[6] <- rep2_TH01$getText()
rep2List[7] <- rep2_D13S317$getText()
rep2List[8] <- rep2_D16S539$getText()
rep2List[9] <- rep2_D2S1338$getText()
rep2List[10] <- rep2_D19S433$getText()
rep2List[11] <- rep2_vWA$getText()
rep2List[12] <- rep2_TPOX$getText()
rep2List[13] <- rep2_D18S51$getText()
rep2List[14] <- rep2_D5S818$getText()
rep2List[15] <- rep2_FGA$getText()
	
rep3List<-matrix(neg,15,1)

rep3List[1] <- rep3_D8S1179$getText()
rep3List[2] <- rep3_D21S11$getText()
rep3List[3] <- rep3_D7S820$getText()
rep3List[4] <- rep3_CSF1PO$getText()
rep3List[5] <- rep3_D3S1358$getText()
rep3List[6] <- rep3_TH01$getText()
rep3List[7] <- rep3_D13S317$getText()
rep3List[8] <- rep3_D16S539$getText()
rep3List[9] <- rep3_D2S1338$getText()
rep3List[10] <- rep3_D19S433$getText()
rep3List[11] <- rep3_vWA$getText()
rep3List[12] <- rep3_TPOX$getText()
rep3List[13] <- rep3_D18S51$getText()
rep3List[14] <- rep3_D5S818$getText()
rep3List[15] <- rep3_FGA$getText()
	} 



#####################################################################################


	# designate matrix size 
header <-matrix("",1,13)
entry <-matrix("",1, 13)


	



#-######################################################################################################

for( i in seq_along(locusList)){	


entry[1] <- caseName$getText()
entry[2] <- contributorsName$getText()
entry[3] <- deducName$getText()
entry[4] <- quantName$getText()
entry[5] <- locusList[i]
entry[6] <- "alleles" # fuck how to figure out how to tie in Kevins R function into this shit??
entry[7:(6+knowns)] <- knownMtx[i,]

#Save information to header
header[1] <- "Case Name"
header[2] <- "Contributors" 
header[3] <- "D/ND" 
header[4] <- "Quant" 
header[5] <- "Locus"
header[6] <- "Alleles"
header[7:(6+knowns)] <- "Known Alleles"

repdeck<-0

if(rep>=1 && rep1List[i,1]!="INC"){  ##-------Start of IF loop for rep1
repdeck<-repdeck+1
entry[6+knowns+repdeck]<-rep1List[i,1]
header[6+knowns+repdeck] <-"REP"
}

if(rep >=2 && rep2List[i,1] !="INC"){    #-------Start of IF loop for rep2
repdeck<-repdeck+1
entry[6+knowns+repdeck]<-rep2List[i,1]
header[6+knowns+repdeck]<-"REP"
}


if(rep==3 && rep3List[i,1]!= "INC"){ 	
repdeck<-repdeck+1	
entry[6+knowns+repdeck]<-rep3List[i,1]
header[(6+knowns+repdeck)]<-"REP"
}




full<-matrix(c(header,entry))


print(full)


write(full, paste0("C:/Users/NCorpuz/Desktop/Data_Entry_",i,".csv"), sep=",", ncolumns=13, append=FALSE)
}


#-######################################################################################################

#does work