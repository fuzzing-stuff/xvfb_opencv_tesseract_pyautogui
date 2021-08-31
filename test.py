import os
import Xlib.display
import pyautogui

def click_7():
    pyautogui.click(x=70, y=198)

def click_4():
    pyautogui.click(x=70, y=225)

def press_8():
    pyautogui.press('numlock')
    pyautogui.press('num9')

def set_password():
    pyautogui.click(x=550, y=510)
    pyautogui.write('test')

pyautogui._pyautogui_x11._display = Xlib.display.Display(os.environ['DISPLAY'])
image = pyautogui.screenshot()
image.save(r'/tmp/screenshot_test_1.png')
click_7()
click_4()
press_8()

image = pyautogui.screenshot()
image.save(r'/tmp/screenshot_test_2.png')
