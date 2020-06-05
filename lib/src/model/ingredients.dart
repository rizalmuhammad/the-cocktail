// This is model for class Ingredients

class Ingredients {
    Ingredients({
        this.ingredients,
    });

    List<Ingredient> ingredients;

    factory Ingredients.fromJson(Map<String, dynamic> json) => Ingredients(
        ingredients: json["ingredients"] == null ? null : List<Ingredient>.from(json["ingredients"].map((x) => Ingredient.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "ingredients": ingredients == null ? null : List<dynamic>.from(ingredients.map((x) => x.toJson())),
    };
}

class Ingredient {
    Ingredient({
        this.idIngredient,
        this.strIngredient,
        this.strDescription,
        this.strType,
        this.strAlcohol,
        this.strAbv,
    });

    String idIngredient;
    String strIngredient;
    String strDescription;
    String strType;
    String strAlcohol;
    String strAbv;

    factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        idIngredient: json["idIngredient"] == null ? null : json["idIngredient"],
        strIngredient: json["strIngredient"] == null ? null : json["strIngredient"],
        strDescription: json["strDescription"] == null ? null : json["strDescription"],
        strType: json["strType"] == null ? null : json["strType"],
        strAlcohol: json["strAlcohol"] == null ? null : json["strAlcohol"],
        strAbv: json["strABV"] == null ? null : json["strABV"],
    );

    Map<String, dynamic> toJson() => {
        "idIngredient": idIngredient == null ? null : idIngredient,
        "strIngredient": strIngredient == null ? null : strIngredient,
        "strDescription": strDescription == null ? null : strDescription,
        "strType": strType == null ? null : strType,
        "strAlcohol": strAlcohol == null ? null : strAlcohol,
        "strABV": strAbv == null ? null : strAbv,
    };
}
