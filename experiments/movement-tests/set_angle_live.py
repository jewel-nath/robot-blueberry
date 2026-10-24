import os
import sys
sys.path.append(os.path.realpath(os.path.join(__file__, '..', '..', '..', 'src', 'movement')))
from expression import *


takePosition()
while True:
    print('pin & degree : ',end='')
    pin,deg = map(int, input().split())
    changeDegree([pin],[deg])
