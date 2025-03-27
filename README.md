# Projet scan2Save : Scannez, Cucmulez et Économisez en Temps Réel avec SwiftUI

## Description

Scan2Save est une application révolutionnaire de suivi de dépenses en temps réel, conçue pour transformer la gestion de vos finances quotidiennes en une expérience intuitive et enrichissante. Grâce à une technologie OCR de pointe, l’application scanne et lit vos tickets, reçus et autres justificatifs avec une précision remarquable, transformant automatiquement vos photos, PDF et PNG en fichiers JSON structurés pour une analyse approfondie. De plus, Scan2Save offre une vision instantanée de vos dépenses dès le scan et récompense activement ses utilisateurs en fonction du nombre de scans effectués, créant ainsi une situation gagnant-gagnant.

## Fonctionnalités principales

### Gestion des dépenses

- **Liste des logs de dépenses :**  
  Visualisez et consultez l’historique complet de vos dépenses dans un tableau de bord intuitif et interactif.
  
- **Filtrage et tri avancés :**  
  Appliquez des filtres par catégories multiples et triez vos données par date, montant ou nom, en ordre croissant ou décroissant, pour une analyse personnalisée.

- **Modification intuitive :**  
  Ajoutez, éditez ou supprimez vos logs de dépenses facilement, assurant ainsi une gestion flexible et à jour de vos informations financières.

### Technologie OCR et Conversion de Données

- **Scanner OCR intelligent :**  
  Utilisant VisionKit, le framework d’Apple dédié à l’OCR, l’application détecte et extrait automatiquement le texte contenu dans vos tickets et reçus. Cela permet une lecture rapide et précise des informations, prêtes à être analysées.

- **Transformation en JSON :**  
  Un module de conversion sophistiqué transforme les formats d’images (PNG) et documents (PDF) en fichiers JSON. Cette normalisation facilite le traitement, le stockage et l’analyse des données extraites.

### Intelligence Artificielle

- **Analyse en temps réel :**  
  L’application analyse instantanément vos dépenses lors du scan avec OpenAI API, offrant ainsi une vision claire et immédiate de vos habitudes de consommation.

### Authentification et Cloud

- **Hébergement sur Firebase :**  
  L’application est entièrement hébergée sur le cloud de Firebase, garantissant des performances optimales et une synchronisation en temps réel de vos données sur tous vos appareils.

- **Authentification des utilisateurs :**  
  Un système d’authentification intégré permet de gérer vos comptes de manière sécurisée, assurant que seules les personnes autorisées accèdent aux données personnelles.

- **Cloud Firestore :**  
  Les données sont stockées dans Cloud Firestore, la base de données NoSQL de Firebase, offrant une synchronisation instantanée et sécurisée, ce qui permet de consulter vos informations financières en temps réel depuis le cloud.

### Récompenses et Avantages

- **Programme de récompenses :**  
  Gagnez des récompenses en fonction du nombre de scans effectués. Ce système incitatif transforme la gestion de vos dépenses en une activité à la fois ludique et avantageuse.

### Compatibilité Multi-Plateforme

- **Support étendu :**  
  Profitez de scan2Save sur **iOS**, **iPadOS**, **macOS** et **visionOS**. L’application est optimisée pour une expérience fluide et cohérente sur l’ensemble des appareils Apple.

## Technologies Utilisées

- **Frontend – SwiftUI :**  
  L'interface utilisateur de scan2Save a été méticuleusement conçue avec SwiftUI, le framework déclaratif d’Apple. SwiftUI permet de créer des interfaces dynamiques, réactives et adaptatives, optimisées pour tirer pleinement parti des capacités matérielles et logicielles d’iOS, iPadOS, macOS et visionOS. Ce framework facilite la maintenance du code grâce à sa structure modulaire et simplifie la liaison entre les données et la présentation visuelle.

- **Backend et Services Cloud – Firebase & Cloud Firestore :**  
  L’architecture backend repose sur Firebase, une plateforme de développement complète de Google, qui assure un hébergement performant et une synchronisation en temps réel des données sur le cloud. Cloud Firestore, la base de données NoSQL de Firebase, offre une scalabilité horizontale et une gestion des données sécurisée. Grâce à ses capacités de synchronisation instantanée, Cloud Firestore permet aux utilisateurs de visualiser leurs données de manière dynamique, garantissant une expérience en temps réel et une intégration transparente avec les fonctionnalités d’authentification.

- **Technologie OCR – VisionKit :**  
  Pour la lecture et l’analyse des tickets et reçus, scan2Save intègre VisionKit, le framework d’Apple spécialisé dans l’OCR (reconnaissance optique de caractères). VisionKit détecte, extrait et transforme automatiquement le texte contenu dans les images, assurant ainsi une conversion rapide et précise des informations visuelles en données exploitables.

- **Intelligence Artificielle – OpenAI API :**  
  L’application s’enrichit de fonctionnalités intelligentes grâce à l’intégration de l’OpenAI API. Ce service permet d’analyser le contenu des données extraites, de générer des recommandations personnalisées et de fournir une assistance interactive via un chatbot. L’OpenAI API apporte une dimension contextuelle et prédictive, renforçant ainsi la pertinence des conseils et des analyses proposés aux utilisateurs.

- **Conversion de Fichiers – Transformation PNG/PDF en JSON :**  
  Un module de conversion sophistiqué a été développé pour transformer les formats d’images (comme le PNG) et les documents PDF en fichiers JSON structurés. Cette conversion permet de normaliser et d’organiser les données extraites, facilitant leur traitement, leur stockage et leur analyse ultérieure au sein de l’application. Ce processus garantit une intégration fluide des données issues de diverses sources, optimisant ainsi l’efficacité de l’analyse en temps réel.

Thank you for reading this far! If you have any questions or feedback regarding the project feel free to reach out.
