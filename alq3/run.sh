# Mapping
ctp_map -t MD_FILES/system.tpr -c MD_FILES/system.gro -s system.xml -f state.sql

# Neighbor list
ctp_run -e neighborlist -o options.xml -f state.sql -t 4

# Site energies
ctp_run -e emultipole -o options.xml -f state.sql -t 4
ctp_run -e einternal -o options.xml -f state.sql -t 4
ctp_run -e eoutersphere -o options.xml -f state.sql -t 4

# Transfer integrals
ctp_run -e izindo -o options.xml -f state.sql -t 4

# Rates
ctp_run -e rates -o options.xml -f state.sql -t 4

# Charge Transport
kmc_run -e kmcmultiple -o options.xml -f state.sql 
