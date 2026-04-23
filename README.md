# AWS SAA Terraform

Ce repository sert de parcours pratique pour preparer la certification AWS Solutions Architect Associate avec Terraform.

L'idee est simple :

- avancer lab par lab
- comprendre chaque bloc de code avant de passer au suivant
- garder un historique Git propre avec de petits commits frequents

## Objectifs

- couvrir les services AWS importants pour le SAA
- apprendre Terraform en meme temps que l'architecture AWS
- proposer un projet clonable et facile a suivre

## Structure

```text
.
├── docs/
├── labs/
├── modules/
└── .github/workflows/
```

## Methode de travail

Chaque lab doit rester :

- petit
- autonome
- documente
- facile a detruire pour eviter les couts

Nous travaillerons directement sur `main` avec des commits courts et reguliers.

## Demarrage

1. Installer Terraform.
2. Configurer un compte AWS avec des identifiants valides.
3. Ouvrir un lab dans `labs/`.
4. Lire son `README.md`.
5. Lancer `terraform init`, puis `terraform plan`.

## Important

- Ne jamais versionner de secrets AWS.
- Ne jamais commit de fichier `tfstate`.
- Toujours penser au `terraform destroy` quand un lab cree des ressources.

Le premier lab sera `labs/00-bootstrap`, pour verifier la configuration Terraform et AWS sans creer d'infrastructure payante.
