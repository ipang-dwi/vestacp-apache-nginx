#!/bin/sh

# =================================== www.firstplato.com ========================
# ===============================================================================
# admin adalah user vestacp, ganti dengan user teman-teman
# karena nama file backup vesta biasanya diawali dengan nama user
BACKUP=$(find /home/backup/ -maxdepth 1 -name "admin*" | sort -t_ -nk2 | tail -n1)

# Upload 1 file backup yang terbaru
gdrive upload $BACKUP
