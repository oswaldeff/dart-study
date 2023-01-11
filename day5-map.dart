void main() {
    // Map
    Map<String, String> dict = {
        "chapter1": "King",
        "chapter2": "Queen",
    };
    print(dict);

    Map<String, bool> isDrama = {
        "X-man": false,
        "Harry Potter": false,
        "Game Of Thrones": false,
    };
    print(isDrama);

    isDrama['Game Of Thrones'] = true;
    print(isDrama);

    // add
    isDrama['Spider Man'] = false;
    print(isDrama);

    // addAll
    Map<String, bool> isDrama2 = {
        "Thor1": false,
    };
    isDrama.addAll(isDrama2);
    print(isDrama);

    // remove
    isDrama.remove('Thor1');
    print(isDrama);

    // keys
    dynamic keys = isDrama.keys;
    dynamic values = isDrama.values;
    print(keys);
    print(values);
}