rm *.pdf
rm *.png

#nTracksAmumucandidatesH_0p7.pdf
sed -i 's/histName = "counter_MuonSizeGTE3H",/histName = "nTracksAmumucandidatesH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "Dimuon Invariant Mass",/xtitle = "number of tracks around a->#mu#mu candidates",/g' PlotSamplesRatio.C
sed -i 's/xLower = 3.5,/xLower = 0,/g' PlotSamplesRatio.C
sed -i 's/xUpper = 20,/xUpper = 10,/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C

#nTracksAtautaucandidateH_0p7.pdf
sed -i 's/histName = "nTracksAmumucandidatesH_0p7",/histName = "nTracksAtautaucandidateH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "number of tracks around a->#mu#mu candidates",/xtitle = "number of tracks around a->#tau#tau candidate",/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C

#etaAmumu1candidateH_0p7.pdf
sed -i 's/histName = "nTracksAtautaucandidateH_0p7",/histName = "etaAmumu1candidateH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "number of tracks around a->#tau#tau candidate",/xtitle = "muon #eta (1st a->#mu#mu candidates)",/g' PlotSamplesRatio.C
sed -i 's/xLower = 0,/xLower = -2.4,/g' PlotSamplesRatio.C
sed -i 's/xUpper = 10,/xUpper = 2.4,/g' PlotSamplesRatio.C
sed -i 's/"Events",/"Events \/ 0.2",/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C

#etaAmumu2candidateH_0p7.pdf
sed -i 's/histName = "etaAmumu1candidateH_0p7",/histName = "etaAmumu2candidateH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "muon #eta (1st a->#mu#mu candidates)",/xtitle = "muon #eta (2nd a->#mu#mu candidates)",/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C

#etaAtautaucandidateH_0p7.pdf
sed -i 's/histName = "etaAmumu2candidateH_0p7",/histName = "etaAtautaucandidateH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "muon #eta (2nd a->#mu#mu candidates)",/xtitle = "muon #eta (a->#tau#tau candidate)",/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C

#ptAmumu1candidateH_0p7.pdf
sed -i 's/histName = "etaAtautaucandidateH_0p7",/histName = "ptAmumu1candidateH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "muon #eta (a->#tau#tau candidate)",/xtitle = "muon pT (1st a->#mu#mu candidates)",/g' PlotSamplesRatio.C
sed -i 's/xLower = -2.4,/xLower = 10,/g' PlotSamplesRatio.C
sed -i 's/xUpper = 2.4,/xUpper = 100,/g' PlotSamplesRatio.C
sed -i 's/Events \/ 0.2/Events \/ 4 GeV/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C

#ptAmumu2candidateH_0p7.pdf
sed -i 's/histName = "ptAmumu1candidateH_0p7",/histName = "ptAmumu2candidateH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "muon pT (1st a->#mu#mu candidates)",/xtitle = "muon pT (2nd a->#mu#mu candidates)",/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C

#ptAtautaucandidateH_0p7.pdf
sed -i 's/histName = "ptAmumu2candidateH_0p7",/histName = "ptAtautaucandidateH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "muon pT (2nd a->#mu#mu candidates)",/xtitle = "muon pT (a->#tau#tau candidate)",/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C

#dxyAmumu1candidateH_0p7.pdf
sed -i 's/10000/100000/g' PlotSamplesRatio.C
sed -i 's/histName = "ptAtautaucandidateH_0p7",/histName = "dxyAmumu1candidateH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "muon pT (a->#tau#tau candidate)",/xtitle = "|d_{xy}|cm (1st a->#mu#mu candidates)",/g' PlotSamplesRatio.C
sed -i 's/"Events \/ 4 GeV",/"Events \/ 0.005 cm",/g' PlotSamplesRatio.C
sed -i 's/xLower = 10,/xLower = -0.02,/g' PlotSamplesRatio.C
sed -i 's/xUpper = 100,/xUpper = 0.02,/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C

#dxyAmumu2candidateH_0p7.pdf
sed -i 's/histName = "dxyAmumu1candidateH_0p7",/histName = "dxyAmumu2candidateH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "|d_{xy}|cm (1st a->#mu#mu candidates)",/xtitle = "|d_{xy}|cm (2nd a->#mu#mu candidates)",/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C

#dxyAtautaucandidateH_0p7.pdf
sed -i 's/histName = "dxyAmumu2candidateH_0p7",/histName = "dxyAtautaucandidateH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "|d_{xy}|cm (2nd a->#mu#mu candidates)",/xtitle = "|d_{xy}|cm muon (a->#tau#tau candidate)",/g' PlotSamplesRatio.C
sed -i 's/xLower = -0.02,/xLower = -0.04,/g' PlotSamplesRatio.C
sed -i 's/xUpper = 0.02,/xUpper = 0.04,/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C

#dzAmumu1candidateH_0p7.pdf
sed -i 's/histName = "dxyAtautaucandidateH_0p7",/histName = "dzAmumu1candidateH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "|d_{xy}|cm muon (a->#tau#tau candidate)",/xtitle = "|d_{z}|cm (1st a->#mu#mu candidates)",/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C

#dzAmumu2candidateH_0p7.pdf
sed -i 's/histName = "dzAmumu1candidateH_0p7",/histName = "dzAmumu2candidateH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "|d_{z}|cm (1st a->#mu#mu candidates)",/xtitle = "|d_{z}|cm (2nd a->#mu#mu candidates)",/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C

#dzAtautaucandidateH_0p7.pdf
sed -i 's/histName = "dzAmumu2candidateH_0p7",/histName = "dzAtautaucandidateH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "|d_{z}|cm (2nd a->#mu#mu candidates)",/xtitle = "|d_{z}|cm muon (a->#tau#tau candidate)",/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C



#dxyTracksAtautaucandidateH_0p7.pdf
sed -i 's/100000/1000000/g' PlotSamplesRatio.C
sed -i 's/histName = "dzAtautaucandidateH_0p7",/histName = "dxyTracksAtautaucandidateH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "|d_{z}|cm muon (a->#tau#tau candidate)",/xtitle = "track |d_{xy}|cm",/g' PlotSamplesRatio.C
sed -i 's/"Events \/ 0.04 cm",/"Events \/ 0.02 cm",/g' PlotSamplesRatio.C
sed -i 's/0.5,0.45,0.84,0.78/0.5,0.50,0.84,0.83/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C

#dzTracksAtautaucandidateH_0p7.pdf
sed -i 's/histName = "dxyTracksAtautaucandidateH_0p7",/histName = "dzTracksAtautaucandidateH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "track |d_{xy}|cm",/xtitle = "track |d_{z}|cm",/g' PlotSamplesRatio.C
sed -i 's/"Events \/ 0.005 cm",/"Events \/ 0.01 cm",/g' PlotSamplesRatio.C
sed -i 's/xLower = -0.04,/xLower = -0.1,/g' PlotSamplesRatio.C
sed -i 's/xUpper = 0.04,/xUpper = 0.1,/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C

#ptTracksAtautaucandidateH_0p7
sed -i 's/1000000/10000/g' PlotSamplesRatio.C
sed -i 's/histName = "dzTracksAtautaucandidateH_0p7",/histName = "ptTracksAtautaucandidateH_0p7",/g' PlotSamplesRatio.C
sed -i 's/xtitle = "track |d_{z}|cm",/xtitle = "track p_{T} [GeV]",/g' PlotSamplesRatio.C
sed -i 's/xLower = -0.1,/xLower = 0,/g' PlotSamplesRatio.C
sed -i 's/xUpper = 0.1,/xUpper = 40,/g' PlotSamplesRatio.C
sed -i 's/"Events \/ 0.01 cm",/"Events \/ 2 GeV",/g' PlotSamplesRatio.C
sed -i 's/0.5,0.50,0.84,0.83/0.5,0.45,0.84,0.78/g' PlotSamplesRatio.C
root -b -q PlotSamplesRatio.C

sed -i 's/histName = "ptTracksAtautaucandidateH_0p7",/histName = "counter_MuonSizeGTE3H",/g' PlotSamplesRatio.C
sed -i 's/track p_{T} [GeV]/Dimuon Invariant Mass/g' PlotSamplesRatio.C
sed -i 's/xLower = 0,/xLower = 3.5,/g' PlotSamplesRatio.C
sed -i 's/xUpper = 40,/xUpper = 20,/g' PlotSamplesRatio.C
sed -i 's/"Events \/ 2 GeV",/"Events",/g' PlotSamplesRatio.C


#deltaRSSMuonsH.pdf 
sed -i 's/(0.6,0.35,0.8,0.70)/(0.3,0.35,0.5,0.70)/g' PlotDistributions.C
sed -i 's/SetRangeUser(0.,1.1/SetRangeUser(0.,1.3/g' PlotDistributions.C
root -b -q PlotDistributions.C
sed -i 's/(0.3,0.35,0.5,0.70)/(0.6,0.35,0.8,0.70)/g' PlotDistributions.C
sed -i 's/SetRangeUser(0.,1.3/SetRangeUser(0.,1.1/g' PlotDistributions.C

#deltaRMuonMuonH.pdf
sed -i 's/histName = "deltaRSSMuonsH",/histName = "deltaRMuonMuonH",/g' PlotDistributions.C
sed -i 's/xtitle = "#DeltaR SS Muons",/xtitle = "#DeltaR (#mu, #mu)",/g' PlotDistributions.C
sed -i 's/xUpper = 4,/xUpper = 2,/g' PlotDistributions.C
root -b -q PlotDistributions.C

#deltaRMuonPionH.pdf
sed -i 's/histName = "deltaRMuonMuonH",/histName = "deltaRMuonPionH",/g' PlotDistributions.C
sed -i 's/xtitle = "#DeltaR (#mu, #mu)",/xtitle = "#DeltaR (#mu, track)",/g' PlotDistributions.C
root -b -q PlotDistributions.C

sed -i 's/histName = "deltaRMuonPionH",/histName = "deltaRSSMuonsH",/g' PlotDistributions.C
sed -i 's/xtitle = "#DeltaR (#mu, track)",/xtitle = "#DeltaR SS Muons",/g' PlotDistributions.C
sed -i 's/xUpper = 2,/xUpper = 4,/g' PlotDistributions.C



#Fitting of the signal to double sided crystal ball (FittingSignal.pdf)
sed -i 's/"FittingSignal_2D_"+MassStr+".pdf"/"FittingSignal_2D_"+MassStr+"diMu.pdf"/g' FittingSignal_2D.C
sed -i 's/TString ma = "10", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/TString ma = "3.6", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "3.6", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/TString ma = "4", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "4", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/TString ma = "5", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "5", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/TString ma = "6", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "6", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/TString ma = "7", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "7", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/TString ma = "8", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "8", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/TString ma = "9", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "9", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/TString ma = "10", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "10", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/TString ma = "11", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "11", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/TString ma = "12", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "12", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/TString ma = "13", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "13", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/TString ma = "14", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "14", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/TString ma = "15", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "15", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/TString ma = "10", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/g' FittingSignal_2D.C


sed -i 's/"FittingSignal_2D_"+MassStr+"diMu.pdf"/"FittingSignal_2D_"+MassStr+"diTau.pdf"/g' FittingSignal_2D.C
sed -i 's/TString ma = "10", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/TString ma = "3.6", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "3.6", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/TString ma = "4", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "4", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/TString ma = "5", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "5", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/TString ma = "6", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "6", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/TString ma = "7", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "7", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/TString ma = "8", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "8", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/TString ma = "9", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "9", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/TString ma = "10", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "10", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/TString ma = "11", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "11", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/TString ma = "12", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "12", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/TString ma = "13", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "13", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/TString ma = "14", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "14", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/TString ma = "15", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/g' FittingSignal_2D.C
root -b -q FittingSignal_2D.C
sed -i 's/TString ma = "15", bool showplot = true, bool show_X = false, bool show_Y = true, bool show_2D_Model = false/TString ma = "10", bool showplot = true, bool show_X = true, bool show_Y = false, bool show_2D_Model = false/g' FittingSignal_2D.C
sed -i 's/"FittingSignal_2D_"+MassStr+"diTau.pdf"/"FittingSignal_2D_"+MassStr+".pdf"/g' FittingSignal_2D.C

#Fitting of the background to exponential decay and Breit-Wigner for the SM resonances (FittingBkgd.pdf)
root -b -q FittingBkgd_2D.C


#Validation of interpolation procedure  (ValidateInterpolation.pdf) 
root -b -q ValidateInterpolation.C

#Join all the plots in a single pdf 
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=H2aa_atomumu_atotatutau.pdf *.pdf



