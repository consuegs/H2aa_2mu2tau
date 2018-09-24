#include "th1fmorph.cc"
#include "HttStylesNew.cc"
void MakeInterpolation(
			int ma = 6, // value to interpolate
			int maLow = 5, // lower value
			int maHigh = 7 // upper value
			) {

  bool logY = false;
  bool drawLeg = true;

  SetStyle();

  double maD = double(ma); 
  double maLowD = double(maLow);
  double maHighD = double(maHigh);
  
  char mass[4];
  char massLow[4];
  char massHigh[4];

  if (ma<13)
    sprintf(mass,"%1i",ma);
  else
    sprintf(mass,"%2i",ma);

  if (maLow<13)
    sprintf(massLow,"%1i",maLow);
  else
    sprintf(massLow,"%2i",maLow);

  if (maHigh<13)
    sprintf(massHigh,"%1i",maHigh);
  else
    sprintf(massHigh,"%2i",maHigh);

  TString Mass(mass);
  TString MassLow(massLow);
  TString MassHigh(massHigh);

  TFile * fileLow  = new TFile("SUSYGluGluToHToAA_AToMuMu_AToTauTau_M-"+MassLow+".root");
  TFile * fileHigh = new TFile("SUSYGluGluToHToAA_AToMuMu_AToTauTau_M-"+MassHigh+".root");
  TH1D * histLow  = (TH1D*)fileLow->Get("dimuonMassSeltotalH");
  TH1D * histHigh = (TH1D*)fileHigh->Get("dimuonMassSeltotalH");

  std::cout << histLow << ":" << histHigh << ":" << std::endl;

   // to interpolate counter_FinalEvents and eventCount
   TFile * file5  = new TFile("SUSYGluGluToHToAA_AToMuMu_AToTauTau_M-5.root");
   TFile * file7  = new TFile("SUSYGluGluToHToAA_AToMuMu_AToTauTau_M-7.root");
   TFile * file9  = new TFile("SUSYGluGluToHToAA_AToMuMu_AToTauTau_M-9.root");
   TFile * file11  = new TFile("SUSYGluGluToHToAA_AToMuMu_AToTauTau_M-11.root");
   TFile * file13  = new TFile("SUSYGluGluToHToAA_AToMuMu_AToTauTau_M-13.root");
   TFile * file15  = new TFile("SUSYGluGluToHToAA_AToMuMu_AToTauTau_M-15.root");
   TFile * file17  = new TFile("SUSYGluGluToHToAA_AToMuMu_AToTauTau_M-17.root");
   TFile * file19  = new TFile("SUSYGluGluToHToAA_AToMuMu_AToTauTau_M-19.root");
   
   TH1D * hist5  = (TH1D*)file5->Get("dimuonMassSeltotalH");
   TH1D * hist7  = (TH1D*)file7->Get("dimuonMassSeltotalH");
   TH1D * hist9  = (TH1D*)file9->Get("dimuonMassSeltotalH");
   TH1D * hist11  = (TH1D*)file11->Get("dimuonMassSeltotalH");
   TH1D * hist13  = (TH1D*)file13->Get("dimuonMassSeltotalH");
   TH1D * hist15  = (TH1D*)file15->Get("dimuonMassSeltotalH");
   TH1D * hist17  = (TH1D*)file17->Get("dimuonMassSeltotalH");
   TH1D * hist19  = (TH1D*)file19->Get("dimuonMassSeltotalH");

   TH1D * hist5Weights  = (TH1D*)file5->Get("histWeightsH");
   TH1D * hist7Weights  = (TH1D*)file7->Get("histWeightsH");
   TH1D * hist9Weights  = (TH1D*)file9->Get("histWeightsH");
   TH1D * hist11Weights  = (TH1D*)file11->Get("histWeightsH");
   TH1D * hist13Weights  = (TH1D*)file13->Get("histWeightsH");
   TH1D * hist15Weights  = (TH1D*)file15->Get("histWeightsH");
   TH1D * hist17Weights  = (TH1D*)file17->Get("histWeightsH");
   TH1D * hist19Weights  = (TH1D*)file19->Get("histWeightsH");

   Float_t norm5 = hist5->GetSumOfWeights();
   Float_t norm7 = hist7->GetSumOfWeights();
   Float_t norm9 = hist9->GetSumOfWeights(); 
   Float_t norm11 = hist11->GetSumOfWeights();
   Float_t norm13 = hist13->GetSumOfWeights();  
   Float_t norm15 = hist15->GetSumOfWeights();
   Float_t norm17 = hist17->GetSumOfWeights();
   Float_t norm19 = hist19->GetSumOfWeights();

   Float_t eventCount5 = hist5Weights->GetSumOfWeights();
   Float_t eventCount7 = hist7Weights->GetSumOfWeights();
   Float_t eventCount9 = hist9Weights->GetSumOfWeights(); 
   Float_t eventCount11 = hist11Weights->GetSumOfWeights();
   Float_t eventCount13 = hist13Weights->GetSumOfWeights();  
   Float_t eventCount15 = hist15Weights->GetSumOfWeights();
   Float_t eventCount17 = hist17Weights->GetSumOfWeights();
   Float_t eventCount19 = hist19Weights->GetSumOfWeights();
   
   gROOT->Reset();
   TCanvas * canv1 = MakeCanvas("canv1", "", 600, 700);

    // create a 2-d histogram to define the range
   TH2F *hr = new TH2F("hr","Mass a{5,7,9,11,13,15,17,19}",1,4,20,1,0,2500);
   hr->SetXTitle("mass[GeV]");
   hr->SetYTitle("counter_FinalEvents fit");
   hr->Draw();
   canv1->GetFrame()->SetFillColor(21);
   canv1->GetFrame()->SetBorderSize(12); 
   Int_t n1 = 8;
   Float_t x1[]  = {5,7,9,11,13,15,17,19};
   Float_t y1[]  = {norm5,norm7,norm9,norm11,norm13,norm15,norm17,norm19};   
   gr1 = new TGraph(n1,x1,y1);
   gr1->SetMarkerColor(kBlue);
   gr1->SetMarkerStyle(21);
   gr1->Draw("LP");

    // use a cubic spline to smooth the graph
   TSpline3 *s1 = new TSpline3("grs",gr1);
   s1->SetLineColor(kRed);
   s1->Draw("same");
   canv1->SaveAs("counter_FinalEvents"+Mass+".jpg");
   cout<<"counter_FinalEvents a5: "<<norm5<<endl;
   cout<<"counter_FinalEvents a6-extrapolated: "<<s1->Eval(6)<<endl;
   cout<<"counter_FinalEvents a7: "<<norm7<<endl;
   cout<<"counter_FinalEvents a8-extrapolated: "<<s1->Eval(8)<<endl;
   cout<<"counter_FinalEvents a9: "<<norm9<<endl;
   cout<<"counter_FinalEvents a11: "<<norm11<<endl;
   cout<<"counter_FinalEvents a12-extrapolated: "<<s1->Eval(12)<<endl;
   cout<<"counter_FinalEvents a13: "<<norm13<<endl;
   cout<<"counter_FinalEvents a14-extrapolated: "<<s1->Eval(14)<<endl;
   cout<<"counter_FinalEvents a15: "<<norm15<<endl;
   cout<<"counter_FinalEvents a17: "<<norm17<<endl;
   cout<<"counter_FinalEvents a19: "<<norm19<<endl;

   TCanvas * canv2 = MakeCanvas("canv2", "", 600, 700);
    // create a 2-d histogram to define the range
   TH2F *hr1 = new TH2F("hr1","Mass a{5,9,11,13,15,17,19}",1,4,20,1,230000,350000);
   hr1->SetXTitle("mass[GeV]");
   hr1->SetYTitle("eventCount fit");
   hr1->Draw();
   canv2->GetFrame()->SetFillColor(21);
   canv2->GetFrame()->SetBorderSize(12); 
   Int_t n2 = 7;
   Float_t x2[]  = {5,9,11,13,15,17,19};
   Float_t y2[]  = {eventCount5, eventCount9,eventCount11,eventCount13,eventCount15,eventCount17,eventCount19};   
   gr2 = new TGraph(n2,x2,y2);
   gr2->SetMarkerColor(kBlue);
   gr2->SetMarkerStyle(21);
   gr2->Draw("LP");

    // use a cubic spline to smooth the graph
   TSpline3 *s2 = new TSpline3("grs",gr2);
   s2->SetLineColor(kRed);
   s2->Draw("same");
   canv2->SaveAs("eventCount"+Mass+".jpg");
   cout<<"eventCount a5: "<<eventCount5<<endl;
   cout<<"eventCount a6-extrapolated: "<<s2->Eval(6)<<endl;
   cout<<"eventCount a7: "<<eventCount7<<endl;
   cout<<"eventCount a8-extrapolated: "<<s2->Eval(8)<<endl;
   cout<<"eventCount a9: "<<eventCount9<<endl;
   cout<<"eventCount a11: "<<eventCount11<<endl;
   cout<<"eventCount a12-extrapolated: "<<s2->Eval(12)<<endl;
   cout<<"eventCount a13: "<<eventCount13<<endl;
   cout<<"eventCount a14-extrapolated: "<<s2->Eval(14)<<endl;
   cout<<"eventCount a15: "<<eventCount15<<endl;
   cout<<"eventCount a17: "<<eventCount17<<endl;
   cout<<"eventCount a19: "<<eventCount19<<endl;

  f = new TFile("SUSYGluGluToHToAA_AToMuMu_AToTauTau_M-"+Mass+".root","RECREATE");

  TCanvas * canv3 = MakeCanvas("canv3", "", 600, 700);   
  TH1D * histI = th1fmorph("Interp","interp",histLow,histHigh,maLowD,maHighD,maD,double(1.0),0);
 
  InitHist(histI,"","",kCyan,1001);

  double norm = s1->Eval(ma);
  int nBins = histLow->GetNbinsX();

//comment this for normalization

  for (int iB=1; iB<=nBins; ++iB) {
    double x = norm*histI->GetBinContent(iB);
    double ex = sqrt(norm)*histI->GetBinError(iB);
    histI->SetBinContent(iB,x);
    histI->SetBinError(iB,ex);
//    cout<<ex<<endl;
  }


  histI->GetXaxis()->SetTitle("Dimuon Invariant Mass [GeV]");
  histI->GetYaxis()->SetTitle("Events");
  histI->GetYaxis()->SetTitleOffset(1.5);
  histI->GetYaxis()->SetTitleSize(0.06);
  histI->SetMarkerSize(1.2);
  histI->GetYaxis()->SetLabelSize(0.04);
  histI->GetXaxis()->SetRangeUser(4,8);
  
  double yMax = histI->GetMaximum();
 
  if (logY) histI->GetYaxis()->SetRangeUser(0.001,500);
//uncomment this and comment line below for normalization
//  if (logY) histI->GetYaxis()->SetRangeUser(0.001,1);
  else histI->GetYaxis()->SetRangeUser(0.0,1.2*yMax);
  
  histI->Draw("sameh");

  TLegend * leg = new TLegend(0.64,0.69,0.90,0.89);
  SetLegendStyle(leg);
  leg->SetHeader("m_{a} = "+Mass+" GeV");
  leg->SetTextSize(0.044);
  leg->AddEntry(histI,"Interpolated","f");
  if (drawLeg) leg->Draw();
  if (logY) canv3->SetLogy(true);  
  
  canv3->Print("Interpolation_ma"+Mass+".png");
  histI->SetName("dimuonMassSeltotalH"); 
  histI->GetXaxis()->SetRangeUser(4,20);

  TH1D * counter_FinalEventstotalH=new TH1D("counter_FinalEventstotalH","",1,0.,2.);
  int nBins1 =2; 
  for (int iB=1; iB<=nBins1; ++iB) {
    double x = 1;
    counter_FinalEventstotalH->SetBinContent(iB,s1->Eval(ma));
  }

  TH1D * histWeightsH = new TH1D("histWeightsH","",1,0.,2.);
  for (int iB=1; iB<=nBins1; ++iB) {
    double x = 1;
    histWeightsH->SetBinContent(iB,s2->Eval(ma));
  }
  
  f->Write();
  f->Close();
}
