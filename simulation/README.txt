Requirements
- Use a mac or similar unix based system; the code was developed and run on macos 15.7.5; the hardware was Apple M2 Pro with 16GB RAM
- Bash must be installed and in use as the shell
- python version 3.12.10 must be installed
- Modules listed in infrastructure/requirements.txt must be installed
- Jupyter must be installed

Obtaining the data (only needed for CSW-analysis.ipynb and only if running CSW-analysis.ipynb does not automatically fetch the data)
- run ./install.sh to get the cisco dataset

Running the notebooks
- cd to the root directory (one should see notebooks/ from the root directory)
- jupyter notebook --no-browser --port 5656 &
- Go to http://localhost:5656/tree on a web browser (such as chrome); click on notebook/s directory: one should see all three notebooks relevant to the paper
- Click on ER.ipynb and "Run All Cells" under the Run menu; this generated the latex tables and figures used in the paper
- Click on SBM-equal-sized.ipynb and "Run All Cells" under the Run menu; this generated the latex tables and figures used in the paper
- Click on CSW-analysis.ipynb and "Run All Cells" under the Run menu; this generated the latex tables and figures used in the paper

Note
- The code has been tested on Colab
- ER.ipynb and SBM-equal-sized.ipynb should run without problems
- CSW-analysis.ipynb should download the requisite data and run as well; however colab settings and other configuration may cause the data download to fail causing the script to stop
	o The data download on the local machine as well Colab can take a few minutes
	o Building the adjacency matrix on Colab can take ~60 minutes (on the above mentioned local machine this takes ~30 minutes)
