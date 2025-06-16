```bash
#!/bin/bash

# === Script de sauvegarde automatique ===
# Ce script archive le dossier ~/Documents
# et le sauvegarde dans ~/sauvegardes avec la date du jour dans le nom

# 📁 Dossier à sauvegarder
SOURCE="$HOME/Documents"

# 📁 Dossier de destination
DEST="$HOME/sauvegardes"

# ✅ Créer le dossier de destination s’il n'existe pas
mkdir -p "$DEST"

# 🗓️ Générer la date du jour
DATE=$(date +%Y-%m-%d_%H-%M)

# 🗃️ Nom final de l’archive
FILENAME="sauvegarde_$DATE.tar.gz"

# 📦 Créer l’archive compressée
tar -czf "$DEST/$FILENAME" "$SOURCE"

# ✅ Message de succès
echo "✅ Sauvegarde terminée : $DEST/$FILENAME"