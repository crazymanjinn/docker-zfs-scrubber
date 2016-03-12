# zfs-scrubber
container to automatically scrub ZFS

Specify schedule in cron format and zpool to be scrubbed. Does not do any kind of sanitization or checking, so make sure you are passing a valid pool.

Needs access to /dev/zfs.
Example run:
docker run -d --device /dev/zfs:/dev/zfs:rw crazymanjinn/zfs-scrubber "0 3 * * 0" zpool1
