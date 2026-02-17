Bienvenue dans le projet de démonstration dbt pour le module Data Warehousing avec DBT (FR) et son examen !

### Concernant l'examen du module Data Warehousing avec DBT (FR)

Pour lancer tous les modèles de l'examen, utilisez la commande suivante :
- dbt run --select tag:examen_all

Pour lancer uniquement la création des tables pour le schéma en étoile, utilisez la commande suivante :
- dbt run --select tag:examen_star

Pour lancer uniquement la création des vues à partir des requêtes d'analyse, utilisez la commande suivante :
- dbt run --select tag:examen_queries

Une capture d'écran des tables et vues créées dans Snowflake après l'exécution de ces commandes est disponible dans le dossier `images` de ce projet.
- Examen_dbt_capture_snowflake.png

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices


