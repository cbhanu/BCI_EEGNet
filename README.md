# BCI_EEGNet
EEGNet implementation of 2 BCI competition datasets:

1) Kaggle competition Dataset: https://www.kaggle.com/c/inria-bci-challenge/data

2) BCI Competition III Dataset 2: http://www.bbci.de/competition/iii/#data_set_ii 


EEGNet CNN architecture PyTorch implementation borrowed from : Sriram Ravindran: https://github.com/aliasvishnu/EEGNet

All the data used in the codes was earlier bandpassed filtered in MATLAB with a 2nd order Butterworth Filter from 0.1-30 Hz

FLOW: 
1) Run the .m filtering file on the dataset obtained from the link for the BCI COmpetition Dataset
2) Run the file BCI_III_DS_2_TestSet_PreProcessing.ipynb on the filtered datasets obtained from the Matlab code.

3) RUn the BCI_III_DS_2_Filtered_Downsampled.ipynb to get results on downsampled data at 120 Hz

4) Modify the BCI_III_DS_2_TestSet_PreProcessing.ipynb to get results at original data of 240 Hz and then run BCI_III_DS_2_Filtered Data.ipynb to get results.

----

1) Run the matlab preprocessing file same as above.
2) Run Kaggle Dataset- ERN with appropriate file path to get results.

## Unstable version 
