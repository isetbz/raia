# Écrire avec Typst

Un guide de référence rapide pour rédiger des documents avec **Typst** — un système de composition typographique moderne et performant.

> [!NOTE]
> **Typst** utilise un langage de balisage concis inspiré de **Markdown** pour offrir un large éventail d'options de mise en forme. Il compile en PDF et se présente comme une alternative moderne à **LaTeX**.

---

## Table des matières

- [Mise en forme du texte](#mise-en-forme-du-texte)
- [Listes](#listes)
- [Blocs de code](#blocs-de-code)
- [Insertion d'objets](#insertion-dobjets)
  - [Images](#images)
  - [Tableaux](#tableaux)
- [Mathématiques](#mathématiques)
- [Références et citations](#références-et-citations)
- [Ressources](#ressources)

---

## Mise en forme du texte

| Effet | Syntaxe | Exemple |
|---|---|---|
| **Gras** | `*texte*` | `*gras*` → **gras** |
| _Italique_ | `_texte_` | `_italique_` → _italique_ |
| `Code en ligne` | `` `texte` `` | `` `code` `` |
| Titre niveau 1 | `= Titre` | titre principal |
| Titre niveau 2 | `== Section` | titre de second niveau |
| Titre niveau 3 | `=== Sous-section` | titre de troisième niveau |

> [!TIP]
> Les titres de **Typst** génèrent automatiquement une entrée dans la table des matières lorsque vous utilisez la fonction `#outline()`.

---

## Listes

**Liste non ordonnée** — utilisez `-` suivi d'un espace :

```typ
- Premier élément
- Deuxième élément
  - Premier élément imbriqué
  - Deuxième élément imbriqué
```

**Liste ordonnée** — utilisez `+` suivi d'un espace :

```typ
+ Première étape
+ Deuxième étape
  + Sous-étape n°1
  + Sous-étape n°2
```

> [!NOTE]
> L'imbrication fonctionne pour les deux types de listes en indentant avec des espaces.

---

## Blocs de code

**Code en ligne** — entourez avec des apostrophes inversées simples :

```typ
Utilisez le mot-clé `#let` pour déclarer une variable.
```

**Bloc de code** — utilisez des triples apostrophes inversées suivies du nom du langage pour activer la coloration syntaxique :

````typ
```lang
Bonjour !
```
````

Les identifiants de langage pris en charge incluent `julia`, `python`, `rust`, `js`, `typ`, `bash`, `c`, `cpp`, et [bien d'autres](https://typst.app/docs/reference/text/raw/#parameters-lang).

---

## Insertion d'objets

### Images

```typ
#figure(
  image("NOM_IMAGE.EXT", width: 80%),
  caption: [Une légende descriptive pour l'image.],
) <fig:ETIQUETTE>

Comme illustré en @fig:ETIQUETTE, l'image est rendue avec soin.
```

> [!TIP]
> Ajustez le paramètre `width` (par ex. `50%`, `10cm`) pour contrôler la taille d'affichage de l'image sur la page.

### Tableaux

```typ
#figure(
  table(
    columns: 4,
    table.header([*En-tête 1*], [*En-tête 2*], [*En-tête 3*], [*En-tête 4*]),
    [Ligne 1], [a], [b], [c],
    [Ligne 2], [1], [2], [3],
  ),
  caption: [Tableau de résultats.],
) <tab:ETIQUETTE>

Le @tab:ETIQUETTE présente les résultats expérimentaux.
```

> [!IMPORTANT]
> `table.header()` a été introduit dans `Typst 0.11`. Pour les versions antérieures, listez simplement les cellules sans cette fonction — la première ligne restera visuellement distincte si vous appliquez le gras manuellement.

---

## Mathématiques

**Typst** dispose d'un support mathématique natif inspiré de **LaTeX**.

**Mathématiques en ligne** — entourez avec `$` :

```typ
La formule $E = m c^2$ est universellement connue.
```

**Mathématiques en bloc** — ajoutez des espaces à l'intérieur des délimiteurs `$` :

```typ
$ sum_(k=1)^n k = (n(n+1)) / 2 $
```

> [!TIP]
> En mode mathématique, les lettres simples sont automatiquement rendues en italique comme des variables. Utilisez `upright(x)` pour forcer un rendu en romain.

---

## Références et citations

**Renvois internes** — étiquetez n'importe quelle figure, titre ou équation avec `<etiquette>` et référencez-la avec `@etiquette` :

```typ
= Introduction <sec:intro>

Comme abordé en @sec:intro, ...
```

**Bibliographie** — indiquez à **Typst** un fichier `.bib` et citez directement dans le texte :

```typ
#bibliography("references.bib")

Ce résultat a été publié pour la première fois dans @knuth1984.
```

> [!NOTE]
> **Typst** prend en charge les styles de citation CSL (Citation Style Language). Vous pouvez spécifier un style avec `#bibliography("refs.bib", style: "apa")`.

---

## Ressources

- 📖 [Documentation officielle](https://typst.app/docs/)
- 🚀 [Application web Typst](https://typst.app/)
- 💬 [Communauté Discord](https://discord.gg/2uDybryKPe)
- 🐙 [Dépôt GitHub](https://github.com/typst/typst)
