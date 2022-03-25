clear all
close all
clc
[semnal,Fs]=audioread('audiowrite.wav');
sound(semnal)
figure(1),plot(semnal);
L=length(semnal); %lungime semnal analizat (=Fs/timp)
Y = fft(semnal); %transformata Fourier rapida
P2 = abs(Y/L); %normalizare la lungimea semnalului
P1 = P2(1:L/2+1); 
f = Fs/L*(0:(L/2)); %vizualizare spectrul in functie de frecvente pozitive
figure(2),plot(f,P1)
title('Spectru semnal analizat')
xlabel('f (Hz)')
ylabel('|P1(f)|')

V=sort(P1, 'descend') %se ordoneaza in ordine descrescatoare valorile lui P1
P1_max1=V(1) %se alege prima cea mai mare valoare a lui P1
P1_max2=V(2) %se alege a doua cea mai mare valoare a lui P2

f1=interp1(P1, f, P1_max1) %valoare lui f pentru care P1=P1_max1
f2=interp1(P1, f, P1_max2) %valoare lui f pentru care P1=P1_max2

%pentru cazul in care frecventele inalte sunt puse in locul celor joase
if f1<f2
  aux=f1
  f1=f2
  f2=aux
end

%se aproximeaza frecventele inalte cu cele cunoscute din tabel
if f1>1207 && f1<1211
  f1=1209
elseif f1>1334 && f1<1338
  f1=1336
elseif f1>1475 && f1<1479
  f1=1477
elseif f1>1631 && f1<1635
  f1=1633 
end

%se aproximeaza frecventele joase cu cele cunoscute din tabel
if f2>695 && f2<699
  f2=697
elseif f2>768 && f2<772
  f2=770
elseif f2>850 && f2<854
  f2=852
elseif f2>939 && f2<943
  f2=941
end

%se iau toate combinatiile de frecvente pentru a acoperi toate tastele
switch(f1)
  case 1209
    switch(f2)
      case 697
        display("Tasta 1")
      case 770
        display("Tasta 4")
      case 852
        display("Tasta 7")
      case 941
        display("Tasta *")
    end
  case 1336
    switch(f2)
      case 697
        display("Tasta 2")
      case 770
        display("Tasta 5")
      case 852
        display("Tasta 8")
      case 941
        display("Tasta 0")
    end
  case 1477
    switch(f2)
      case 697
        display("Tasta 3")
      case 770
        display("Tasta 6")
      case 852
        display("Tasta 9")
      case 941
        display("Tasta #")
    end
  case 1633
    switch(f2)
      case 697
        display("Tasta A")
      case 770
        display("Tasta B")
      case 852
        display("Tasta C")
      case 941
        display("Tasta D")
    end
  end