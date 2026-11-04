# Calendrier partagé

## Mise en ligne avec GitHub Pages et Supabase

Le site est un fichier HTML autonome hébergé sur GitHub Pages. Supabase fournit le stockage partagé et diffuse les modifications aux navigateurs connectés.

1. Créez un projet sur [Supabase](https://supabase.com/) et ouvrez **SQL Editor**.
2. Copiez le contenu de `supabase-setup.sql`, exécutez-le une seule fois.
3. Dans **Project Settings → API**, copiez l'URL du projet et la clé publique `anon` (ou `publishable`). Ne mettez jamais une clé `service_role` dans le site.
4. Dans `index.html`, remplacez `VOTRE_URL_SUPABASE` et `VOTRE_CLE_PUBLIQUE_SUPABASE` par ces valeurs.
5. Créez un dépôt GitHub, ajoutez `index.html` à la racine, puis ouvrez **Settings → Pages** et publiez depuis la branche principale, dossier `/ (root)`. Le lien GitHub Pages pourra être envoyé à votre copine.

Les deux personnes doivent utiliser ce même lien. Les événements sont conservés dans une seule base partagée et les changements se mettent à jour en direct. Lors de la première connexion, les événements locaux existants sont importés si la base partagée est encore vide.

## Confidentialité

Cette configuration rend le calendrier accessible à toute personne qui possède son URL. Les règles Supabase autorisent les visiteurs anonymes à lire et modifier le calendrier partagé. Ne mettez pas d'informations sensibles dans les événements. Le contenu du calendrier est partagé; la clé publique Supabase est faite pour être intégrée au site. Pour restreindre l'accès à vous deux, il faudra ajouter une connexion utilisateur.
