# DTMF-generator-decoder

Proiectul este realizat in Matlab si contine urmatoarele 3 scripturi:

combinatie_semnale genereaza o suma de doua functii sin si contine un switch dupa toate cazurile de taste care pot fi apasate, conform tabelului:
https://www.rfcafe.com/references/electrical/dtmf.htm

encoding este scriptul corespunzator pentru generarea sunetului, contine un meniu de forma:
1. introduceti o tasta
2. introduceti o serie de taste
In functie de tasta/tastele apasate, se apeleaza functia combinatie_semnale si se genereaza un fisier audio.

decoding este scriptul corespunzator decodarii semnalului. Se realizeaza spectrul unui semnal auzit, se ordoneaza in fucntie de valorile amplitudinii. Ne intereseaza valorile frecventelor celor mai mari 2 amplitudini. Acestea sunt aproximate la valorile din tabel. Se realizeaza o alta combinatie dupa aceste frecvente pentru a afisa care tasta corespunzatoare sunetului auzit.
