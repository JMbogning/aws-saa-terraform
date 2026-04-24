# Lab 01 - S3 Basics

Ce lab introduit Amazon S3 avec une configuration simple, propre et proche des bonnes pratiques.

## Ce que l'on apprend

- créer un bucket S3 avec Terraform
- comprendre l'unicité globale des noms de bucket
- injecter des variables depuis un fichier `tfvars`
- activer le versioning
- bloquer l'accès public
- activer un chiffrement coté serveur par defaut

## Pourquoi ce lab est utile pour le SAA

S3 est partout dans AWS. Le SAA demande souvent de comprendre :

- la durabilité
- le versioning
- la sécurité
- les usages privés vs publics

## Ressources créees

- un bucket S3
- une configuration de versioning
- une configuration de chiffrement par defaut
- un blocage explicite de l'accès public

## Cout

Très faible tant que tu ne stockes pas de gros objets.

## Commandes

```bash
terraform init
terraform plan
terraform apply
terraform destroy
```

## Valeurs fictives pour preparer le lab

Ce lab peut etre prepare avec des valeurs fictives dans `terraform.tfvars.example`.

Le point important est le suivant :

- `aws_account_id` sert uniquement a construire un nom de bucket probablemement unique
- ce n'est pas ce qui authentifie Terraform a AWS

Tu peux partir de ce modele :

```hcl
aws_region         = "eu-west-3"
aws_account_id     = "123456789012"
bucket_name_prefix = "aws-saa-tf-s3-demo"
environment        = "learning"
force_destroy      = false

project_tags = {
  Owner   = "junior-mbogning"
  Purpose = "terraform-training"
}
```

Quand tu seras pret a tester pour de vrai, tu pourras copier ce contenu dans un fichier `terraform.tfvars` local et remplacer les valeurs fictives par les tiennes.

## Que peut-on commit ?

Voici la regle a suivre pour ce lab :

- `123456789012` dans `variables.tf` est une valeur fictive, donc elle peut etre versionnee
- `terraform.tfvars.example` avec des valeurs d'exemple peut etre versionne
- un vrai `terraform.tfvars` rempli avec tes informations personnelles doit rester local
- les vraies credentials AWS ne doivent jamais etre committees

En pratique :

- on commit les placeholders pedagogiques
- on garde en local les vraies informations utilisees pour tester sur AWS

L'idee est d'avoir un repository clonable, comprehensible et sans secret.

## Configuration locale AWS avec valeurs fictives

Si ton PC n'est pas encore configure, tu peux te preparer avec cette commande :

```bash
aws configure
```

Exemple de valeurs fictives a remplacer plus tard :

```text
AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
Default region name [None]: eu-west-3
Default output format [None]: json
```

Important :

- l'`AWS Access Key ID` et la `AWS Secret Access Key` doivent etre reelles pour faire un vrai `apply`
- `aws_account_id` dans Terraform est distinct des identifiants AWS CLI
- l'account ID AWS ressemble a `123456789012`, alors qu'une access key ressemble a `AKIA...`

## Point d'attention

Les noms de buckets S3 doivent etre globalement uniques. Ce lab construit donc le nom a partir d'un prefixe, d'un `aws_account_id` et de la region.