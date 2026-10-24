from expression import *
from move import changeDegree

#start
changeDegree([4],[70])
changeDegree([2],[60])
changeDegree([8],[120])
changeDegree([6,10],[80,30])
time.sleep(2)

#stop
changeDegree([6,10],[Initial[6],Initial[10]])
changeDegree([8],[Initial[8]])
changeDegree([2],[Initial[2]])
changeDegree([4],[Initial[4]])
