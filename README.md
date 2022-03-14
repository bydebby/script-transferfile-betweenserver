# TRANSFER FILES BETWEEN 2 LOCATIONS SERVERS
* Run bash file transferfile-betweenservers.sh
  
  >[test@production ~]$ nohup bash transferfile-betweenservers.sh file.dat 2 1 &

# HOW TO CHECK FILE NOHUP.OUT RUNNING
* Check File nohup.out Running
  >[test@production ~]$ jobs
  ```
  [1]+ 11129 Running                 nohup bash -x transferfile-betweenservers.sh &
  ```
  or
  >[test@production ~]$ tail -f nohup.out
  
  or
  
  >[test@production ~]$ ps -xw
  ```
  PID TTY      STAT   TIME COMMAND
  17997 ?        S      0:01 sshd: test@pts/0
  17998 pts/0    Ss     0:04 -bash
  11129 ?        S      0:05 bash -x transferfile-betweenservers.sh
  47850 pts/0    R+     0:00 ps -xw
  ```
* Finding out the file nohup.out running in directory (who use this file)
  >[test@production ~]$ lsof | grep nohup.out
  
* Kill jobs
  >[test@production ~]$ kill %1
  
  or 
  
  >[test@production ~]$ kill -9 NumberPID
