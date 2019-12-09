## Description :
Participation au challenge Kaggle  **House Prices: Advanced Regression Techniques**.
## Démarrage de l'environnement de travail :
- Sous *Anaconda*, dans *Environments*, créer un environnement basé sur Python 3.6.
- Toujours dans *Environments* installer les librairies listées dans le fichier **requirements.txt** via les packages Anaconda, à savoir :
    - jupyter NoteBook 6.0.2
    - matplotlib 3.1.1
    - numpy 1.17.4
    - pandas 0.25.3
    - pandas_profiling 1.4.1
    - python 3.6.9
    - rise 5.6.0
    - scipy 1.3.1
    - seaborn 0.9.0
    - scikit-learn 0.21.3
    - tensorflow 2.0.0
    - py-xgboost 0.90
- Dans *Home* lancer **jupyter Notebook**, ce qui ouvrira un onglet dans le navigateur web.
- Parcourrir l'arborescence pour se rendre dans le dossier où les fichiers de ce dépôt Git ont été clonés pour pouvoir les ouvrir.

## Explication de ce que font les fichiers de ce dépôt :

1. **HousePrices_Keras_first_try.ipynb** :
- Visualisation du train set
- Sélection des 10 features quantitatives les plus fortement corrélées avec SalePrice
- Création d'un modèle Keras et établissement d'une prédiction sur le set de Validation

2. **HousePrices_Keras_v2.ipynb** :
- Elimination manuelle des outliers des 10 features les plus fortement corrélées avec SalePrice
- Création d'un modèle Keras et établissement d'une prédiction sur le set de Validation 

3. **HousePrices_Keras_et_Xgboost.ipynb** :
- Création d'un modèle via Keras, et d'un modèle avec Xgboost, sur 1 feature quantitative, et 1 feature qualittive.

4. **HousePrices_Keras_quanti_to_kaggle.ipynb** :
- Prédiction sur le test set de Kaggle, à partir d'un modèle Keras entrainé sur les 10 features quantitatives les plus corrélées avec SalePrice.
- Score Kaggle : 0.16407

5. **HousePrices_Keras_quanti_et_quali_to_kaggle.ipynb** :
- Prédiction sur le test set de Kaggle, à partir d'un modèle Keras entrainé sur les 10 features quantitatives les plus corrélées avec SalePrice et les features qualitatives transformées en quantitatives.
- Score Kaggle : 0.16651