clear all;
clc;
close all;

Fs=8000 %frecventa de esantionare
d=0.5 % durata semnalului. Poate fi de 0.1s, 0.5s si 1s
t =0:1/Fs:d %timpul [s]

disp("Meniu")
disp("1.Accesati o singura tasta")
disp("2.Accesati o serie de taste")
optiune=input("Introduceti o optiune: ") %1 pentru a accesa o singura tasta
                                         %2 pentru a accesa o serie de taste

if optiune==1
    key=input("Introduceti o tasta: ")
    %se introduce o tasta 
    y=combinatie_semnale(key)
    audiowrite("audiowrite.wav", y, Fs)
    [y, Fs1]=audioread("audiowrite.wav")
    sound(y)
    plot(t, y)
    axis([0 0.05 -1 1])
  end


if optiune==2
  limita=input("nr de taste=")
  for n=1:limita
    x(1, n)=input('introduceti elementul: ') %se introduc tastele dorite
                                             %simbolurile si litere se introduc cu ghilimele simple
                                             %ex: 'A', 'B', '#', etc.
  end
  disp(x)

  for n=1:limita
  y=combinatie_semnale(x(1,n))
  audiowrite("audiowrite1.wav", y, Fs)
  [y, Fs1]=audioread("audiowrite1.wav")
  sound(y)
  end
  end

