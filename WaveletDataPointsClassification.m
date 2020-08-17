%This script calls machine learning algorithm on data and retrieve validation accuracy and calls the third testing model for each of the 5 subjects and calculates the testing accuracy 
TestDataPoints;
[trainedClassifier, validationAccuracy] = TestDataPointsClassifier(AETest);
TestDataPointsModel1;
yfit1 = trainedClassifier.predictFcn(TestDataPointResult1);
TestDataPointsModel2;
yfit2 = trainedClassifier.predictFcn(TestDataPointResult2);
TestDataPointsModel3;
yfit3 = trainedClassifier.predictFcn(TestDataPointResult3);
TestDataPointsModel4;
yfit4 = trainedClassifier.predictFcn(TestDataPointResult4);
TestDataPointsModel5;
yfit5 = trainedClassifier.predictFcn(TestDataPointResult5);
TestingDataPointsAccuracy;

