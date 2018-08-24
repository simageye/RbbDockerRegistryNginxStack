# Makefile

# PHONY := target is not associated with a physical file 
# #(z.B.: the target "clean" is independent from the file "clean", if it exists)
.PHONY: clean

# Define Variables
ROOTDIR=./registry/
REGDATA=registry_data/docker/
MARIADB=registry_data_mariadb/

# --- Makefile Logic ---

cleanDR:
	rm -rf ${ROOTDIR}${REGDATA}*

cleanMaria:
	rm -rf ${ROOTDIR}${MARIADB}*

clean: cleanDR cleanMaria
