(* ::Package:: *)

(* ::Input:: *)
(*(*81 lines per section*)*)
(*(*r Zr-Zr C-Zr C-C Total*)*)


(* ::Input:: *)
(*SetDirectory["/Volumes/MicroSD/Dropbox/PostDoc_SD/ZrC/Frenkel_classifier/Frenkels_classifier_training_structures/collective_PDFs"];*)
(*files={"pdf.70.4850.1_836.txt","pdf.129.4850.1_1141.txt","pdf.142.4850.1_891.txt","pdf.174.4850.1_851.txt","pdf.1126.4850.1_746.txt"};*)
(*pdfData=Table[ReadList[files[[i]],{Number,Number,Number,Number,Number}],{i,1,5}];*)


(* ::Input:: *)
(*names={"70","129","142","174","1126"};*)
(*fullNames={"Bound-dimer","Unbound-dimer","Unbound-trimer","Bound-trimer","Bound-tetramer"};*)
(*header={"Methods","Bound-dimer","Bound-trimer","Unbound-dimer","Unbound-Trimer","Unbound-Tetramer"};*)


(* ::Input:: *)
(*zrzr=Table[Transpose@{Transpose[pdfData[[i]]][[1]],Transpose[pdfData[[i]]][[2]]},{i,1,5}];*)
(*czr=Table[Transpose@{Transpose[pdfData[[i]]][[1]],Transpose[pdfData[[i]]][[3]]},{i,1,5}];*)
(*cc=Table[Transpose@{Transpose[pdfData[[i]]][[1]],Transpose[pdfData[[i]]][[4]]},{i,1,5}];*)
(*tot=Table[Transpose@{Transpose[pdfData[[i]]][[1]],Transpose[pdfData[[i]]][[5]]},{i,1,5}];*)


(* ::Input:: *)
(*ListLinePlot[Partition[zrzr[[1]],81],PlotRange->All];*)
(*ListLinePlot[Partition[zrzr[[3]],81],PlotRange->All];*)


(* ::Input:: *)
(*Table[ListLinePlot[Partition[cc[[i]],81],PlotRange->All],{i,1,5}];*)


(* ::Input:: *)
(*ListLinePlot[Partition[tot[[1]],81][[1;;10]],PlotRange->All];*)


(* ::Input:: *)
(*With[{name=czr},ListAnimate[Table[ListLinePlot[Partition[name[[1]],81][[i]],PlotRange->{{0,5},{0,.5}},Frame->True,FrameLabel->{"\!\(\**)
(*StyleBox[\"r\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)\!\(\**)
(*StyleBox[\" \",\nFontWeight->\"Bold\"]\)\!\(\**)
(*StyleBox[\"(\",\nFontWeight->\"Bold\"]\)\[Angstrom])","\[Rho](\!\(\**)
(*StyleBox[\"r\",\nFontWeight->\"Bold\"]\))"}],{i,1,Partition[name[[1]],81]//Length}],15]];*)


(* ::Input:: *)
(*With[{name=cc},ListAnimate[Table[ListLinePlot[Partition[name[[1]],81][[i]],PlotRange->{{0,5},{0,.5}},Frame->True,FrameLabel->{"\!\(\**)
(*StyleBox[\"r\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)\!\(\**)
(*StyleBox[\" \",\nFontWeight->\"Bold\"]\)\!\(\**)
(*StyleBox[\"(\",\nFontWeight->\"Bold\"]\)\[Angstrom])","\[Rho](\!\(\**)
(*StyleBox[\"r\",\nFontWeight->\"Bold\"]\))"}],{i,1,Partition[name[[1]],81]//Length}],25]]*)


(* ::Input:: *)
(*With[{name=zrzr},ListAnimate[Table[ListLinePlot[Partition[name,81][[i]],PlotRange->{{0,5},{0,.5}},Frame->True,FrameLabel->{"\!\(\**)
(*StyleBox[\"r\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)\!\(\**)
(*StyleBox[\" \",\nFontWeight->\"Bold\"]\)\!\(\**)
(*StyleBox[\"(\",\nFontWeight->\"Bold\"]\)\[Angstrom])","\[Rho](\!\(\**)
(*StyleBox[\"r\",\nFontWeight->\"Bold\"]\))"}],{i,1,Partition[name,81]//Length}],15]]*)


(* ::Input:: *)
(*With[{name=czr},ListAnimate[Table[ListLinePlot[Partition[name[[1]],81][[i]],PlotRange->{{0,5},{0,.5}},Frame->True,FrameLabel->{"\!\(\**)
(*StyleBox[\"r\",\nFontWeight->\"Bold\",\nFontSlant->\"Italic\"]\)\!\(\**)
(*StyleBox[\" \",\nFontWeight->\"Bold\"]\)\!\(\**)
(*StyleBox[\"(\",\nFontWeight->\"Bold\"]\)\[Angstrom])","\[Rho](\!\(\**)
(*StyleBox[\"r\",\nFontWeight->\"Bold\"]\))"}],{i,1,Partition[name[[1]],81]//Length}],15]];*)


(* ::Input:: *)
(*trainSet=Table[Table[{Partition[cc[[i]],81][[j]]->ToString@fullNames[[i]]},{j,1,2}],{i,1,5}];*)


(* ::Input:: *)
(*Options@Classify*)


(* ::Input:: *)
(*methods={"LogisticRegression","Markov","NaiveBayes","NearestNeighbors","RandomForest","SupportVectorMachine"}*)


(* ::Input:: *)
(*scores=With[{maxTypes=5},Table[results=With[{trainSize=100,valSize=50,method=methods[[i]]},trainSet=Join@@Table[Table[Transpose[Partition[cc[[type]],81][[timeStep]]][[2]]->ToString@fullNames[[type]],{timeStep,1,trainSize}],{type,1,maxTypes}];*)
(*c=Classify[trainSet,Method->method,PerformanceGoal->"Quality"];*)
(*Table[Table[c[Transpose[Partition[cc[[type]],81][[timeStep]]][[2]]],{type,1,maxTypes}],{timeStep,trainSize,trainSize+valSize}]];*)
(*(*results for 10 training eras*)*)
(*accuracy=Table[{fullNames[[type]],Count[Transpose[results][[type]],Transpose[results][[type]][[1]]]/Length[Transpose[results][[type]]]//N},{type,1,maxTypes}];*)
(*Transpose[accuracy][[2]],{i,1,6}]//TableForm]*)
(*finalResults=With[{maxTypes=5},Join[{header[[1;;maxTypes]]},Table[Flatten@Join[{methods[[i]],scores[[1]][[i]]}],{i,1,Length@methods}]]];*)


(* ::Input:: *)
(*(*trainingSet=50,ValidationSet=100*)*)
(*finalResults//TableForm*)


(* ::Input:: *)
(*(*trainingSet=10,ValidationSet=100*)*)
(*finalResults//TableForm*)


(* ::Input:: *)
(*(*trainingSet=5,ValidationSet=100*)*)
(*finalResults//TableForm*)


(* ::Input:: *)
(*(*trainingSet=5,ValidationSet=10*)*)
(*finalResults//TableForm*)
