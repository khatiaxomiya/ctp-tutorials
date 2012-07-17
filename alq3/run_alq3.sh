
ctp_map -t MD_FILES/system.tpr -c MD_FILES/system.gro -s system.xml -f state_alq3.sql

ctp_run -e "tdump einternal emultipole neighborlist eoutersphere izindo" -o options.xml -f state_alq3.sql -t 4
ctp_run -e "rates" -o options.xml -f state_alq3.sql
ctp_run -e "eanalyze ianalyze density" -o options.xml -f state_alq3.sql

#ctp_run -e "eimport iimport stateserver pairdump xmultipole" -o options.xml -f state_alq3.sql
#kmc_run -e "kmcparallel" -o options.xml -f state_alq3.sql


