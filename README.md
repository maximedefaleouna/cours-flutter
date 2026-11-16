# Guide et Cours Pratique Flutter - Developpement Multiplateforme avec Dart

Projet d'apprentissage pratique dedie a la maitrise du framework Flutter et du langage Dart pour la conception d'applications natives et multiplateformes (Android, iOS, Web, Windows, macOS, Linux).

A travers la creation progressive d'une application de personnalisation de commande de cafe (Coffee Preferences), ce repertoire illustre les concepts architecturaux cles de l'ecosysteme Flutter, de la hierarchie des widgets jusqu'a la gestion reactif de l'etat local.

## Principes Fondamentaux de Flutter

Flutter repose sur une approche declarative et reactive ou l'ensemble de l'interface utilisateur est modelise sous forme d'un arbre hierarchique de composants appeles **Widgets** ("Everything is a widget").

Le framework dessine lui-meme ses composants pixel par pixel a l'aide du moteur graphique Impeller / Skia, garantissant une fidelite visuelle totale et des performances constantes a 60 ou 120 images par seconde sur tous les systemes d'exploitation cibles.

## Notions Abordees dans le Projet

### 1. Distinction StatelessWidget vs StatefulWidget

- **StatelessWidget** (illustre par `MyApp` et `Home`) :
  - Composant immuable dont la configuration ne varie pas dans le temps.
  - Ideal pour structurer les ecrans d'affichage, bannières statiques et conteneurs de mise en page.
- **StatefulWidget** (illustre par `CoffeePrefs`) :
  - Composant dynamique lie a un objet d'etat persistant (`State<CoffeePrefs>`).
  - Gere l'interactivite utilisateur : compteurs d'intensite de cafe et de morceaux de sucre.
  - La methode `setState(() { ... })` avertit le framework d'une modification de donnees, declenchant la reconstruction ciblee du sous-arbre de rendu sans recharger l'integralite de l'ecran.

### 2. Composition de Mise en Page (Layout System)

L'application demontre l'imbrication des widgets fondamentaux de positionnement :
- `Scaffold` : armature standard fournissant la structure visuelle de base (barre d'application superieure `AppBar` et zone de corps `body`).
- `Column` et `Row` : agencements unidimensionnels verticaux et horizontaux avec gestion de l'alignement (`crossAxisAlignment`, `mainAxisAlignment`).
- `Container` et `Padding` : controle fin des espacements internes, marges et couleurs d'arriere-plan.
- `Card` : mise en valeur visuelle avec bordures arrondies et ombrage en elevation selon les standards Material 3.
- `Spacer` et `SizedBox` : espacements flexibles ou fixes entre les composants graphiques.
- `SingleChildScrollView` : prevention des debordements d'ecran (overflow) sur les terminaux de petite taille.

### 3. Design System et Thematisation (Material Design 3)

- Integration de Material Design 3 via `useMaterial3: true`.
- Generation automatique d'une palette chromatique harmonieuse a partir d'une couleur d'ancrage (`ColorScheme.fromSeed(seedColor: Colors.brown)`).
- Boutons modernes : `FilledButton.tonal` pour une ergonomie tactile optimisee.
- Iconographie vectorielle : exploitation des glyphes integres du SDK (`Icons.coffee`, `Icons.cookie`).

## Structure des Sources

- `lib/main.dart` : Point d'entree de l'application, initialisation de la configuration `MaterialApp` et du theme.
- `lib/home.dart` : Ecran d'accueil assemblant la banniere de presentation et la carte de preferences.
- `lib/coffee_prefs.dart` : Widget a etat interactif (`StatefulWidget`) pilotant les dosages de sucre et d'intensite.
- `pubspec.yaml` : Manifeste des dependances du projet, versions du SDK Dart et configuration des ressources.

## Prerequis et Lancement Local

### Prerequis

- Flutter SDK (version 3.x stable)
- Dart SDK integre
- Un emulateur (Android / iOS) ou un navigateur web (Google Chrome)

### Commandes Utiles

1. Cloner le depot :

```bash
git clone https://github.com/maximedefaleouna/cours-flutter.git
cd cours-flutter
```

2. Recuperer les dependances du projet :

```bash
flutter pub get
```

3. Verifier la liste des peripheriques et emulateurs connectes :

```bash
flutter devices
```

4. Lancer l'application en mode developpement :

```bash
flutter run
```

5. Compiler pour le Web ou un systeme specifique :

```bash
flutter build web
flutter build apk --release
```

## Auteur

- Concepteur : Maxime DEFALEOUNA ([@maximedefaleouna](https://github.com/maximedefaleouna))

## Licence

Ce projet est distribue sous licence MIT. Libre a vous de l'utiliser a des fins pedagogiques pour vos premiers pas dans le developpement mobile avec Flutter.
