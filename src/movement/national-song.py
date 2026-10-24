from expression import *
from threading import Thread

ROOT_PATH = os.path.realpath(os.path.join(__file__, '..', '..', '..'))

def song():
    changeDegree([3,5,9], [70,60,90])
    changeDegree([7], [30])
    os.system('aplay {}/assets/sounds/national-song.wav'.format(ROOT_PATH))
    takePosition()

def move():
    time.sleep(1)


if __name__ == '__main__':
    t1 = Thread(target=song)
    t2 = Thread(target=move)
    t1.start()
    t2.start()
