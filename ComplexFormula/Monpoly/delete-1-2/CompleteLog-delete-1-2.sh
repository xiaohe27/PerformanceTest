Out=timeFor9MLog-Mon-Siebel.txt
Start=$(date +"%s")
echo "Start time : $Start" > $Out

/home/xiaohe/SW/offline-log-analysis/existingApp/monpoly-1.1.2/monpoly -sig delete.sig -formula delete12.mfotl -negate -log /home/xiaohe/workspace/DATA/ldccComplete_MonpolyStyle > violations.txt

End=$(date +"%s")
echo "Finish time : $End" >> $Out
Diff=$(( $End - $Start ))
echo "\nIt took Monpoly (opt) $Diff seconds to output all violations of delete-1-2 Property in the 7.6 GB log file!" >> $Out
