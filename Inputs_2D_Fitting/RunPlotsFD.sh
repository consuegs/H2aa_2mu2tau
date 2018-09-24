rm *.pdf
rm *.png


#FinalDiscriminant_X_0p4.pdf
root -b -q PlotFinalDiscriminant.C

#FinalDiscriminant_X_0p6.pdf
sed -i 's/deltaRStr = "_0p4"/deltaRStr = "_0p6"/g' PlotFinalDiscriminant.C
sed -i 's/0.55,0.25,0.84,0.78/0.60,0.25,0.89,0.78/g' PlotFinalDiscriminant.C
root -b -q PlotFinalDiscriminant.C

#FinalDiscriminant_X_0p7.pdf
sed -i 's/deltaRStr = "_0p6"/deltaRStr = "_0p7"/g' PlotFinalDiscriminant.C
sed -i 's/0.60,0.25,0.89,0.78/0.15,0.40,0.44,0.93/g' PlotFinalDiscriminant.C
root -b -q PlotFinalDiscriminant.C

#FinalDiscriminant_X_0p8.pdf
sed -i 's/deltaRStr = "_0p7"/deltaRStr = "_0p8"/g' PlotFinalDiscriminant.C
root -b -q PlotFinalDiscriminant.C

sed -i 's/deltaRStr = "_0p8"/deltaRStr = "_0p4"/g' PlotFinalDiscriminant.C
sed -i 's/show_X = true/show_X = false/g' PlotFinalDiscriminant.C
sed -i 's/show_Y = false/show_Y = true/g' PlotFinalDiscriminant.C
sed -i 's/0.15,0.40,0.44,0.93/0.55,0.25,0.84,0.78/g' PlotFinalDiscriminant.C


#FinalDiscriminant_Y_0p4.pdf
sed -i 's/" GeV"/" GeV (x10)"/g' PlotFinalDiscriminant.C
root -b -q PlotFinalDiscriminant.C

#FinalDiscriminant_Y_0p6.pdf
sed -i 's/deltaRStr = "_0p4"/deltaRStr = "_0p6"/g' PlotFinalDiscriminant.C
root -b -q PlotFinalDiscriminant.C

#FinalDiscriminant_Y_0p7.pdf
sed -i 's/deltaRStr = "_0p6"/deltaRStr = "_0p7"/g' PlotFinalDiscriminant.C
root -b -q PlotFinalDiscriminant.C

#FinalDiscriminant_Y_0p8.pdf
sed -i 's/deltaRStr = "_0p7"/deltaRStr = "_0p8"/g' PlotFinalDiscriminant.C
root -b -q PlotFinalDiscriminant.C

sed -i 's/"GeV (x10)"/" GeV"/g' PlotFinalDiscriminant.C
sed -i 's/deltaRStr = "_0p8"/deltaRStr = "_0p4"/g' PlotFinalDiscriminant.C
sed -i 's/show_X = false/show_X = true/g' PlotFinalDiscriminant.C
sed -i 's/show_Y = true/show_Y = false/g' PlotFinalDiscriminant.C


#Join all the plots in a single pdf 
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=PlotFinalDiscriminant.pdf FinalDiscriminant*.pdf




