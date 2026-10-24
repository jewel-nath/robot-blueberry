# Experiments

The first tests from April and May 2021, kept as they were, as a record of
how Blueberry's servos, wheels and voice were worked out. The robot's
program in [`src/`](../src) runs none of them.

| Folder | What it tried |
|---|---|
| [`servo-tests/`](servo-tests) | Servos on the Pi's GPIO pins, one or two at a time (`servo_test.py`, `servo.py`, `gpio_servo_sweep.py`, `left_hand.py`, `right_hand.py`, `both.py`), and the five finger servos on GPIO 10, 9, 25, 11 and 8 (`finger_sweep.py`, `finger_steps.py`). The servos on the PCA9685 board, through Adafruit ServoKit (`servokit.py`, and `mix.py` with one servo of each kind): angles typed in by hand (`set.py`, `set1.py`, `set2.py`, `set_angle.py`, `set_servo_angle.py`, `demo1.py`) and the first gestures (`hands_up.py`, `hand_shake.py`, `hug.py`, `salute.py`, `yes.py`, `no.py`, `walk_without_leg.py`). `gesture-steps.txt` notes the angles of the salute, the hug, the handshake and hands up, and `shutdown.py` reboots the Pi. |
| [`motor-tests/`](motor-tests) | The two wheel motors through the H-bridge: forward, back, left and right turns, a circle, and speed ramps (`c1.py`, `run.py`) |
| [`speech/`](speech) | Offline speech with pyttsx3. It says "My name is robot leena", an earlier name. |
| [`hand-finger-test/`](hand-finger-test) | An Arduino sketch that moves the five finger servos on pins 3 to 7 |
| [`cookbook-exercises/`](cookbook-exercises) | Raspberry Pi basics, retyped from other people's examples (below) |

`set2.py` and `set_angle.py` don't compile, and `servo.py` and `set.py` use
names they never define.

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
