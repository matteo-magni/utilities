# Disk wiping utility

`wipe.sh` is a simple bash script that just rewrites a file 7 times with `/dev/urandom` data before actually deleting it from the filesystem (marking it as deleted).


```
./wipe.sh /path/to/file
```

`bulkwipe.sh` is suitable for wiping a number of files as it runs `wipe.sh` script on a bunch of files with a certain degree of parallelism.
Typical usage is in combination with `find` as in

```
find /path/to/folder -type f | ./bulkwipe.sh
```

Please bear in mind that executing the above command will wipe *all* the files within that path, which will be no longer recoverable.


## Limitations

As the script tries to process each file at once it works on "small" files (how small is yet to be defined).
Next step will be to overwrite the file with smaller random chunks so that it will limit memory consumption on bigger files.
