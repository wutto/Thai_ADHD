##This workflow was performed in WSL1 (Window -SubSystem for Linux)
##########################################################################
##[1] QC [Quality Control]
##########################################################################
##[1.1] Assessment RAW sequence using FASTQC
cd ./1_inputSingleEndSeq
find . -name "*.fq" -exec fastqc {} \;
multiqc -o ../1_qcReport/summaryCleanedSeq .

cd ../1_inputRawPairEnd
find . -name "*.fq" -exec fastqc {} \;
multiqc -o ../1_qcReport/summaryRawSeq .
