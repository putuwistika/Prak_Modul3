#!/bin/bash

# Membersihkan layar
clear

# Menyimpan tanggal dan waktu awal
start_time=$(date +"%Y-%m-%d %T")
echo "======================================================================================================================="

echo "                  ┏━━┓           ┏┓     ┏┓     ┏┓                    ┏━━┓              ┏┓"
echo "                  ┃┏┓┃           ┃┃    ┏┛┗┓    ┃┃                    ┃┏┓┃             ┏┛┃"
echo "                  ┃┗┛┃  ┏━┓ ┏━━┓ ┃┃┏┓  ┗┓┏┛ ┏┓ ┃┃┏┓ ┏┓┏┓ ┏┓┏┓   ┏┓┏┓ ┃┗┛┃ ┏━━┓ ┏━┓    ┗┓┃"
echo "                  ┃┏━┛  ┃┏┛ ┃┏┓┃ ┃┗┛┛   ┃┃  ┣┫ ┃┗┛┛ ┃┃┃┃ ┃┗┛┃   ┃┗┛┃ ┃┏━┛ ┃┏━┛ ┃┏┓┓    ┃┃"
echo "                  ┃┃    ┃┃  ┃┏┓┃ ┃┏┓┓   ┃┗┓ ┃┃ ┃┏┓┓ ┃┗┛┃ ┃┃┃┃   ┃┃┃┃ ┃┃   ┃┗━┓ ┃┃┃┃   ┏┛┗┓"
echo "                  ┗┛    ┗┛  ┗┛┗┛ ┗┛┗┛   ┗━┛ ┗┛ ┗┛┗┛ ┗━━┛ ┗┻┻┛   ┗┻┻┛ ┗┛   ┗━━┛ ┗┛┗┛   ┗━━┛"



echo "======================================================================================================================="
echo " "
echo "                              ASISTEN PRAKTIKUM MPCN I 2023 BERSAMA KALIAN"
echo " "
echo "                              *******************************************"
echo "                                      JALAN JALAN NAIK KERETA"
echo "                                      NAIKNYA DI GERBONG TIGA,"
echo "                                      SEMANGAT DOWNLOAD DATA"
echo "                                      KITA BERTEMU DI MODUL TIGA"
echo " "
echo "                                      BTW SIZE DATANYA 1.4 GB"
echo "                         PASTIKAN SINYAL KAMU KUENCENG & STORAGE KAMU TERSEDIA!!!"
echo " "
echo "                               *******************************************"
echo " "
echo "======================================================================================================================="
echo "                                          DOWNLOADING........"
echo "======================================================================================================================="
echo " "



# Mengunduh file dengan output log dan mengarahkan pesan kesalahan ke log
wget --load-cookies /tmp/cookies.txt "https://drive.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.google.com/uc?export=download&id=10tzxvMO7i38iwc40GjAXKfhzh74sbGLM' -O- | sed -rn 's/.confirm=([0-9A-Za-z]+)._/\1\n/p')&id=10tzxvMO7i38iwc40GjAXKfhzh74sbGLM" -O MPCN_Modul3.zip -q --show-progress


echo "======================================================================================================================="
echo "                                  UNPACKING DATA........"
echo "======================================================================================================================="

# Memeriksa apakah 'unzip' sudah terinstal
if ! command -v unzip &> /dev/null
then
    echo "IHH Kamu kok belum punya Perintah 'unzip' sich. Ya udah Asisten bantu menginstal... Inget Passwordnya yah"
    sudo apt install unzip
fi


unzip MPCN_Modul3.zip >> unzip.log 


# Menyimpan tanggal dan waktu akhir
end_time=$(date +"%Y-%m-%d %T")

# Menambahkan informasi waktu awal dan akhir ke log
echo "Start Time: $start_time" >> download.log
echo "End Time: $end_time" >> download.log

# Hapus file yang tidak diperlukan
rm MPCN_modul3.zip download_modul3.sh
mv MPCN_modul3 MODUL3
rm download.log
rm unzip.log

mv MODUL3 ../
cd ..
rm -rf Prak_Modul3

# Membersihkan layar
clear

echo " "
echo "======================================================================================================================="
echo "                                           YEYYY SUDAH SELESAI"
echo "======================================================================================================================="
echo "                                      JALAN JALAN KE PANTAI BARU"
echo "                                      MELIHAT OMBAK BEDERUM"
echo " "
echo "                                      TERIMA KASIH SUDAH MENUNGGU"
echo "                                      SELAMAT MENGERJAKAN PRAKTIKUM"
echo " "
echo "                          @SALAM HANGAT ASISTEN PRAKTIKUM MPCN I 2023 ALA ALA DUM DUM"
echo "                                        TRAKTIR TEH POCI DONGS HEHE"
echo "======================================================================================================================="
cd ../
