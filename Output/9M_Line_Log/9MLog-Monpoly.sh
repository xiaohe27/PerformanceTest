Out=timeFor9MLog-Mon-Siebel.txt
Start=$(date +"%s")
echo "Start time : $Start" > $Out

/home/xiaohe/SW/offline-log-analysis/existingApp/monpoly-1.1.2/monpoly -sig insert.sig -formula insert.mfotl -negate -log /home/xiaohe/workspace/DATA/MeasureBaseTime/ldcc4Monpoly_buggy >> $Out_v

End=$(date +"%s")
echo "Finish time : $End" >> $Out
Diff=$(( $End - $Start ))
echo "\nIt took Monpoly (opt) $Diff seconds to output all violations of insert2DB2 Property in the 300MB log file!" >> $Out
