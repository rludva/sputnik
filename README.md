# sputnik
Simple ping-pong app for testing openshift application..

Notes:
------
I really do not understand why for the build of `go` I have to use absolute path for the go binary: `/opt/rh/go-toolset-1.19/root/usr/bin/go`.
- Without the absolute path the go binary is not found!
- Upgrade ubi7/go-toolset image may have a newer version of the go-toolset package so the path is changed and the image is not builded correctly.

In the latest `ubi8/go-toolset` and `ubi9/go-toolset` it is finally correctly set to `/usr/bin/go`.
