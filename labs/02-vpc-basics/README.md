# Lab 02 - VPC Basics

Ce lab introduit les bases du réseau AWS avec un VPC simple et lisible.

## Ce que l'on apprend

* créer un VPC avec Terraform
* créer des subnets publics et privés
* attacher une Internet Gateway
* comprendre le rôle des tables de routage
* distinguer un subnet public d’un subnet privé

## Pourquoi ce lab est utile pour le SAA

Le SAA teste très souvent :

* l’isolation réseau
* la différence entre public et privé
* les routes vers Internet
* les fondations nécessaires avant EC2, ALB ou RDS

## Ressources créées

* un VPC
* une Internet Gateway
* deux subnets publics
* deux subnets privés
* une table de routage publique
* une table de routage privée
* les associations de tables de routage

## Coût

Très faible. Ce lab ne crée ni NAT Gateway, ni EC2, ni base de données.

## Commandes

```bash
terraform init
terraform plan
terraform apply
terraform destroy
```

## Vérification après apply

Dans la console AWS, tu pourras vérifier :

* que le VPC existe avec le bon bloc CIDR
* que les deux subnets publics ont `Map public IP on launch` activé
* que la table de routage publique contient une route `0.0.0.0/0` vers l’Internet Gateway
* que la table de routage privée ne contient pas de sortie directe vers Internet

## Que peut-on commit ?

* les fichiers `.tf`
* le `README.md`
* le `terraform.tfvars.example`
* le `.terraform.lock.hcl`

Ne commit pas :

* un vrai `terraform.tfvars`
* les fichiers `terraform.tfstate`
* le dossier `.terraform/`