set d=%date:~-4,4%%date:~-7,2%%date:~-10,2%
set d=%d: =_%
set t=%time:~0,2%%time:~3,2%%time:~6,2%
set t=%t: =0%

C:\xampp\mysql\bin\mysqldump -u root lcsfa_dev > db\lcsfa_dev_snapshot--%d%-%t%.sql