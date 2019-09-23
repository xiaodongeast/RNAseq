# RNAseq Analysis for the lab.
#### Experiment: 
 (1) RIN>5. send your sample to the core for quality check, and discuss with the core for the RIN requirments. (2) Extract RNA, sequence together.  (3). n>=3
#### Computational resources:
 (1). workstation with all software installed or (2) accre acount 
#### Time (plan your experiment):
 (1). RNA extraction 30min-4 hrs
 (2). accre requires 3 training, 1-3 weeks
 (3). sequencing requires 1 month
 (4). Data analysis < 1 week (data transfer might take 2 days)
#### Steps
##### Biology
(1). standard RNA extraction
(2). submit request for QC through ilab
##### Analysis
(1). transfer the results to accre or your computer, eg: <br>
rsync -arv  --progress  /Volumes/2234/ &nbsp;&nbsp; username@login7.accre.vanderbilt.edu:/path <br>
(2). check the sequencing quality, submitting:fastqc_check.slurm <br>
(3). After this you can use your local R, and for the final results


### Userful links
1. when you do not have your Graphic user interface: &nbsp;&nbsp; http://cheatsheetworld.com/programming/unix-linux-cheat-sheet/ 

2.A survey of best practices for RNA-seq data analysis &nbsp;&nbsp; https://genomebiology.biomedcentral.com/articles/10.1186/s13059-016-0881-8 
