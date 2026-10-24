# Experiments

The first tests from April to June 2021, kept as they were, as a record of
how Blueberry's servos, wheels and voice were worked out. The robot's
program in [`src/`](../src) runs none of them.

| Folder | What it tried |
|---|---|
| [`servo-tests/`](servo-tests) | Servos on the Pi's GPIO pins, one or two at a time (`servo_test.py`, `servo.py`, `gpio_servo_sweep.py`, `left_hand.py`, `right_hand.py`, `both.py`), and the five finger servos on GPIO 10, 9, 25, 11 and 8 (`finger_sweep.py`, `finger_steps.py`). The servos on the PCA9685 board, through Adafruit ServoKit (`servokit.py`, and `mix.py` with one servo of each kind): angles typed in by hand (`set.py`, `set1.py`, `set2.py`, `set_angle.py`, `set_servo_angle.py`, `demo1.py`) and the first gestures (`hands_up.py`, `hand_shake.py`, `hug.py`, `salute.py`, `yes.py`, `no.py`, `walk_without_leg.py`). `gesture-steps.txt` notes the angles of the salute, the hug, the handshake and hands up, and `shutdown.py` reboots the Pi. |
| [`movement-tests/`](movement-tests) | Tests run with the robot's own moves, moved here from `src/movement/` in 2026 and changed only to find that folder: typing a channel and an angle to move one servo on the PCA9685 board (`set_angle_live.py`), running the moves one after another (`run_all_moves.py`), and an early handshake with a hello (`hello_handshake.py`); the robot uses `src/movement/hand_shake.py` |
| [`obstacle-tests/`](obstacle-tests) | Two tries at avoiding obstacles, moved here from `src/movement/` in the same way. On meeting one, each turns the head to both sides and measures the distance with the ultrasonic sensor, then turns toward an open side (`turn_to_open_side.py`), or backs up and turns if both are blocked (`turn_or_back_up.py`). Neither drives forward; [`src/movement/automatic.py`](../src/movement/automatic.py) does, without turning the head. |
| [`motor-tests/`](motor-tests) | The two wheel motors through the H-bridge: forward, back, left and right turns, a circle, and speed ramps (`c1.py`, `run.py`) |
| [`speech/`](speech) | Offline speech with pyttsx3. It says "My name is robot leena", an earlier name. |
| [`hand-finger-test/`](hand-finger-test) | An Arduino sketch that moves the five finger servos on pins 3 to 7 |
| [`cookbook-exercises/`](cookbook-exercises) | Raspberry Pi basics, retyped from other people's examples (below) |

`set2.py` and `set_angle.py` don't compile, and `servo.py` and `set.py` use
names they never define. In `movement-tests/`, `hello_handshake.py` calls
`gttssay`, which it never imports, and turns the head on BCM 21, now the
light sensor's pin; `run_all_moves.py` names `introduction.py`, which
doesn't exist. In `obstacle-tests/`, `turn_or_back_up.py` calls `stop()`,
which isn't defined.

## cookbook-exercises/

These are not Blueberry's code. They are exercises retyped by hand, with
typing slips: five of them don't compile (`button.py`, `pir.py`,
`switch.py`, `switch_led.py` and `ultrasonic.py`), and `buzzer.py` stops
when it runs.

- **Simon Monk's Raspberry Pi Cookbook**, from the book's code
  ([2nd edition](https://github.com/simonmonk/raspberrypi_cookbook_ed2),
  [3rd edition](https://github.com/simonmonk/raspberrypi_cookbook_ed3)),
  Copyright (c) 2015 and 2018 Simon Monk, MIT License: `blink.py`
  (led_blink.py), `gpio_safe.py` (led_blink_safe.py), `button.py`
  (interrupts.py), `switch.py`, `switch_led.py` (switch_on_off.py),
  `pir.py`, `buzzer.py`, `ultrasonic.py` (ranger.py) and `cpu_temp.py`.
- **Adafruit Learning System's CircuitPython Essentials**
  ([Adafruit_Learning_System_Guides](https://github.com/adafruit/Adafruit_Learning_System_Guides)),
  Copyright 2018 Kattni Rembor and 2019 Anne Barela for Adafruit
  Industries, MIT License: `servo1.py` (CircuitPython_Servo) and
  `reverse_servo.py` (CircuitPython_Continuous_Servo). They are written for
  a CircuitPython board's pin A2, not for the Pi.

`led.py` switches an LED on GPIO 18 on and off, and `myscript.py` prints a
test banner.
