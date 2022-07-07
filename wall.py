import os
import random 

directory = '/home/user/Pictures/wallpaper/'
mylista = ['calle.jpg','atardecer.jpg', 'pink.jpg', 'scar.jpg', 'robertdeniro.jpg']
def mezclar():
    sacado = random.choice(mylista)
    srtfinal = 'feh --bg-fill {}{}'.format(directory,sacado) 
    print(srtfinal)
    os.system(srtfinal)

mezclar()