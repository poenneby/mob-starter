---
## About this repository

This repository can be used to improve the experience when mob programming remotely.

It contains scripts making it easy to switch drivers where the driver codes on his own PC sharing his screen.

### Start a new mob session

`./mob start`

Creates a new branch with the current date

For a mob started on 12th of December 2020:
`mob-20201210`


### Change driver

`./mob navigator`

Commit and push the current work with a temporary "work in progress" commit

`./mob driver`

Fetch the current mob branch and resets any work to pickup where previous driver left off

### Stop mob session

`./mob stop`

Similar to the `navigator` argument but will commit and push with a "finished" message
