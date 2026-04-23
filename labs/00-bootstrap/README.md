# Lab 00 - Bootstrap Terraform AWS

Ce lab sert a verifier que Terraform fonctionne bien avec AWS avant de creer de vraies ressources.

## Ce que l'on apprend

- la structure minimale d'un projet Terraform
- la declaration du provider AWS
- l'usage des variables
- l'usage des `data sources`
- la lecture d'outputs

## Cout

Ce lab ne cree pas de ressource AWS facturable.

## Fichiers

- `versions.tf` : contraintes Terraform et provider
- `variables.tf` : variables d'entree du lab
- `locals.tf` : valeurs calculees reutilisables
- `providers.tf` : configuration du provider AWS
- `data.tf` : lecture d'informations sur le compte AWS
- `outputs.tf` : informations affichees en sortie

## Commandes

```bash
terraform init
terraform plan
terraform apply
```

## Nettoyage

```bash
terraform destroy
```

Ici, `destroy` ne supprimera pas de vraies ressources car nous ne creons rien. Il permet surtout de garder la bonne habitude.
