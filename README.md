# sci-sw-dev-2021

The tool presented here helps to analyze some data from the European Court of Human Rights. 
The system uses an approach where each document/case is tagged with some IDs that correspond to different keywords in a vocabularium, e.g., ID “2” corresponds to ’(P6-1) Abolition of the death
penalty’. The folder "data" contains ".json" files with different documents/cases.

The bash script "data_processing_bash.sh" is written to automate the data processing originally split by 2 operations with the Python ("print_kpthesaurus.py") and R script ("analyse_and_visualize.r").

Firstly, the bash script writes in one "filename.dat" all IDs from the different documents in the "data" folder, adding the document name before the IDs, which is required by the R script, i.e., in the form:
...
001-100002;445;444
001-100003;445;444
...

The first part indicates a document name, e.g., "001-100002", then IDs in the document e.g., "445;444".

Secondly, the distribution of different IDs (keywords) in a vocabularium is plotted in the "filename.pdf" based on the extracted data in the "filename.dat" by calling the R script inside the bash script.

The bash script can be executed by calling "./data_processing_bash.sh"
It is assumed that the bash file is in the same folder as "data" folder.
Firstly it asks the user to input a file name (without extension) which is the same for both ".dat" and ".pdf" files.
If a file with the same name already exists in the current folder, the user will be asked for a permission to overwrite this file or choose a new file name.
