file=$1
line=$2
tails=$3
for xx in `cat $file | sed 's/\r//g' | head -n ${line} | tail -${tails}`; do
lokal=`echo ${xx}`
backup=`echo ${xx}|sed -e 's|/data/backup_datalake/|/home/test/BACKUP/|g'`
        rsync -av ${lokal} test@172.xx.x.xxx:${backup}
#echo ${lokal} ${backup}
done;
