% Definisi anggota keluarga
laki_laki(hari).
laki_laki(agus).
laki_laki(budi).
laki_laki(rudi).
perempuan(ani).
perempuan(ria).
perempuan(ita).

% Hubungan orang tua-anak
orang_tua(hari, agus).
orang_tua(hari, budi).
orang_tua(agus, ani).
orang_tua(budi, ria).
orang_tua(budi, ita).
orang_tua(ani, rudi).

% Aturan untuk menentukan hubungan keluarga
anak(Anak, OrangTua) :- orang_tua(OrangTua, Anak).
saudara(Saudara1, Saudara2) :- orang_tua(OrangTua, Saudara1), orang_tua(OrangTua, Saudara2), Saudara1 \= Saudara2.
kakek(Kakek, Cucu) :- orang_tua(Kakek, OrangTua), orang_tua(OrangTua, Cucu), laki_laki(Kakek).
nenek(Nenek, Cucu) :- orang_tua(Nenek, OrangTua), orang_tua(OrangTua, Cucu), perempuan(Nenek).