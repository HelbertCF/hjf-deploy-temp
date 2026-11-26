#!/bin/sh
# Instala o site da HJF em public_html (executado pelo Crontab da Locaweb)
cd /home/site1369670367 || exit 1
[ -e bkp_site_antigo.tgz ] || tar czf bkp_site_antigo.tgz public_html
wget -qO site.zip https://raw.githubusercontent.com/HelbertCF/hjf-deploy-temp/main/site.zip || exit 1
unzip -oq site.zip -d public_html || python3 -m zipfile -e site.zip public_html
rm -f site.zip
date > deploy-feito.txt
