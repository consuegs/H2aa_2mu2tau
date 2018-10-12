#Create monthly disk space report of common validation area 
du -hs * | sort -h > log_diskusage_$(date +"%Y%m%d").txt
fs listquota -human >> log_diskusage_$(date +"%Y%m%d").txt

