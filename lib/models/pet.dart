enum Species {
  dog,
  cat,
  bird,
  fish,
  reptile,
  smallMammal,
  exoticPet,
}

extension SpeciesExt on Species {
  String get emoji => switch (this) {
    Species.dog => '🐶',
    Species.cat => '🐱',
    Species.bird => '🦜',
    Species.fish => '🐟',
    Species.reptile => '🦎',
    Species.smallMammal => '🐹',
    Species.exoticPet => '🐢',
  };
}

enum Gender { male, female }

extension GenderExt on Gender {
  String get displayName => switch (this) { Gender.male => 'Male', Gender.female => 'Female' };
}

class Pet {
  const Pet({
    required this.id,
    required this.name,
    required this.age,
    required this.gender,
    required this.price,
    required this.species,
    required this.breed,
    required this.image,
  });

  final String id;
  final String name;
  final double age;
  final Gender gender;
  final double price;
  final Species species;
  final String breed;
  final String image;
}

const allPetsData = [
  Pet(id: '1', name: 'Buddy', age: 3.0, gender: Gender.male, price: 18500.0, species: Species.dog, breed: 'Bulldog', image: 'https://images.unsplash.com/photo-1531842477197-54acf89bff98?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLEJ1bGxkb2d8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '2', name: 'Lucky', age: 3.0, gender: Gender.male, price: 10700.0, species: Species.cat, breed: 'Scottish Fold', image: 'https://images.unsplash.com/photo-1626350278224-a9e3a43a8e11?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8Y2F0LFNjb3R0aXNoLEZvbGR8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '3', name: 'Daisy', age: 1.0, gender: Gender.female, price: 12200.0, species: Species.bird, breed: 'Finch', image: 'https://images.unsplash.com/photo-1598542768607-ebcc2ef6dbc6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmlyZCxGaW5jaHx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '4', name: 'Charlie', age: 2.0, gender: Gender.male, price: 5700.0, species: Species.fish, breed: 'Molly', image: 'https://images.unsplash.com/photo-1565012117125-5b83696657c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZmlzaCxNb2xseXx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '5', name: 'Rocky', age: 6.0, gender: Gender.male, price: 19100.0, species: Species.reptile, breed: 'Boa Constrictor', image: 'https://images.unsplash.com/photo-1472645977521-95bbf4f0a748?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVwdGlsZSxCb2EsQ29uc3RyaWN0b3J8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '6', name: 'Bella', age: 3.0, gender: Gender.female, price: 8600.0, species: Species.smallMammal, breed: 'Ferret', image: 'https://images.unsplash.com/photo-1632247728215-7619e989f91d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8c21hbGxNYW1tYWwsRmVycmV0fHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '7', name: 'Max', age: 4.0, gender: Gender.male, price: 18300.0, species: Species.exoticPet, breed: 'Axolotl', image: 'https://images.unsplash.com/photo-1682428999927-5be191db3882?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZXhvdGljUGV0LEF4b2xvdGx8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '8', name: 'Coco', age: 2.0, gender: Gender.female, price: 14700.0, species: Species.cat, breed: 'Sphynx', image: 'https://images.unsplash.com/photo-1513360371669-4adf3dd7dff8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8Y2F0LFNwaHlueHx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '9', name: 'Lucy', age: 4.0, gender: Gender.female, price: 19600.0, species: Species.dog, breed: 'German Shepherd', image: 'https://images.unsplash.com/photo-1554226980-0b6cf5de6771?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLEdlcm1hbixTaGVwaGVyZHx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '10', name: 'Bailey', age: 3.0, gender: Gender.female, price: 18600.0, species: Species.smallMammal, breed: 'Pygmy Hedgehog', image: 'https://images.unsplash.com/photo-1590001132083-356c0fbc9332?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8c21hbGxNYW1tYWwsUHlnbXksSGVkZ2Vob2d8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '11', name: 'Molly', age: 1.0, gender: Gender.female, price: 15600.0, species: Species.bird, breed: 'Finch', image: 'https://images.unsplash.com/photo-1628105396776-c9ab06bb7a67?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmlyZCxGaW5jaHx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '12', name: 'Sadie', age: 3.0, gender: Gender.female, price: 1600.0, species: Species.reptile, breed: 'Chameleon', image: 'https://images.unsplash.com/photo-1511179844851-7a8cc6738f09?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVwdGlsZSxDaGFtZWxlb258fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '13', name: 'Toby', age: 4.0, gender: Gender.male, price: 14500.0, species: Species.fish, breed: 'Goldfish', image: 'https://images.unsplash.com/photo-1628619607945-f1bf9f675597?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZmlzaCxHb2xkZmlzaHx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '14', name: 'Milo', age: 3.0, gender: Gender.male, price: 12100.0, species: Species.dog, breed: 'Labrador Retriever', image: 'https://images.unsplash.com/photo-1569438620454-1c7fe16870bf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLExhYnJhZG9yLFJldHJpZXZlcnx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '15', name: 'Rosie', age: 15.0, gender: Gender.female, price: 15100.0, species: Species.reptile, breed: 'Russian Tortoise', image: 'https://images.unsplash.com/photo-1516488451233-4aaa157b87e0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVwdGlsZSxSdXNzaWFuLFRvcnRvaXNlfHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '16', name: 'Ruby', age: 4.0, gender: Gender.female, price: 16100.0, species: Species.cat, breed: 'Bengal', image: 'https://images.unsplash.com/photo-1598463166178-e44d99f73554?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8Y2F0LEJlbmdhbHx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '17', name: 'Maggie', age: 3.0, gender: Gender.female, price: 10800.0, species: Species.smallMammal, breed: 'Degu', image: 'https://images.unsplash.com/photo-1551201602-9ab06be2a45f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8c21hbGxNYW1tYWwsRGVndXx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '18', name: 'Oscar', age: 3.0, gender: Gender.male, price: 11900.0, species: Species.dog, breed: 'Bulldog', image: 'https://images.unsplash.com/photo-1609118884128-6f967d47b655?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLEJ1bGxkb2d8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '19', name: 'Muffin', age: 1.0, gender: Gender.female, price: 12200.0, species: Species.fish, breed: 'Molly', image: 'https://images.unsplash.com/photo-1537318885411-1f70ed83e6de?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZmlzaCxNb2xseXx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '20', name: 'Princess', age: 2.0, gender: Gender.female, price: 10300.0, species: Species.bird, breed: 'Parakeet', image: 'https://images.unsplash.com/photo-1643010813312-fc825a96499e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmlyZCxQYXJha2VldHx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '21', name: 'Zeus', age: 2.0, gender: Gender.male, price: 17200.0, species: Species.smallMammal, breed: 'Prairie Dog', image: 'https://images.unsplash.com/photo-1470390356535-d19bbf47bacb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8c21hbGxNYW1tYWwsUHJhaXJpZSxEb2d8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '22', name: 'Simba', age: 3.0, gender: Gender.male, price: 19700.0, species: Species.exoticPet, breed: 'Ferret', image: 'https://images.unsplash.com/photo-1659100862000-ee9b5367d2ad?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZXhvdGljUGV0LEZlcnJldHx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '23', name: 'Kitty', age: 3.0, gender: Gender.female, price: 17700.0, species: Species.reptile, breed: 'Chameleon', image: 'https://images.unsplash.com/photo-1617540021016-72023b487e99?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVwdGlsZSxDaGFtZWxlb258fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '24', name: 'Gizmo', age: 3.0, gender: Gender.male, price: 10700.0, species: Species.dog, breed: 'Labrador Retriever', image: 'https://images.unsplash.com/photo-1669540980458-c01362d82f8c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLExhYnJhZG9yLFJldHJpZXZlcnx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '25', name: 'Sunny', age: 4.0, gender: Gender.male, price: 19700.0, species: Species.cat, breed: 'Siamese', image: 'https://images.unsplash.com/photo-1534135954997-e58fbd6dbbfc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8Y2F0LFNpYW1lc2V8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '26', name: 'Ginger', age: 2.0, gender: Gender.female, price: 9100.0, species: Species.bird, breed: 'Cockatiel', image: 'https://images.unsplash.com/photo-1563278689-3519903a3e97?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmlyZCxDb2NrYXRpZWx8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '27', name: 'Jack', age: 2.0, gender: Gender.male, price: 10100.0, species: Species.smallMammal, breed: 'Chipmunk', image: 'https://images.unsplash.com/photo-1581950156569-f565b3889212?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8c21hbGxNYW1tYWwsQ2hpcG11bmt8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '28', name: 'Pepper', age: 2.0, gender: Gender.female, price: 18600.0, species: Species.fish, breed: 'Swordtail', image: 'https://images.unsplash.com/photo-1546184481-c6480335a74b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZmlzaCxTd29yZHRhaWx8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '29', name: 'Bear', age: 5.0, gender: Gender.male, price: 12900.0, species: Species.exoticPet, breed: 'Tarantula', image: 'https://images.unsplash.com/photo-1564398042875-dddb3c722039?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZXhvdGljUGV0LFRhcmFudHVsYXx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '30', name: 'Smokey', age: 2.0, gender: Gender.male, price: 13600.0, species: Species.reptile, breed: 'Crested Gecko', image: 'https://images.unsplash.com/photo-1510765729892-39b1c9b3b673?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVwdGlsZSxDcmVzdGVkLEdlY2tvfHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '31', name: 'Riley', age: 3.0, gender: Gender.female, price: 6920.0, species: Species.dog, breed: 'Bulldog', image: 'https://images.unsplash.com/photo-1667686327358-9851814aeb36?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLEJ1bGxkb2d8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '32', name: 'Shadow', age: 15.0, gender: Gender.male, price: 9800.0, species: Species.reptile, breed: 'Russian Tortoise', image: 'https://images.unsplash.com/photo-1513641522616-756bb7e7d13d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVwdGlsZSxSdXNzaWFuLFRvcnRvaXNlfHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '33', name: 'Sammy', age: 2.0, gender: Gender.male, price: 12200.0, species: Species.smallMammal, breed: 'Hamster', image: 'https://images.unsplash.com/photo-1657399621130-67f3e1bd8da7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8c21hbGxNYW1tYWwsSGFtc3Rlcnx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '34', name: 'Harley', age: 2.0, gender: Gender.female, price: 8900.0, species: Species.bird, breed: 'Lovebird', image: 'https://images.unsplash.com/photo-1517963456365-467383f3b64a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmlyZCxMb3ZlYmlyZHx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '35', name: 'Luna', age: 5.0, gender: Gender.female, price: 11900.0, species: Species.exoticPet, breed: 'Tarantula', image: 'https://images.unsplash.com/photo-1504868669263-8e801bcec8e7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZXhvdGljUGV0LFRhcmFudHVsYXx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '36', name: 'Chloe', age: 3.0, gender: Gender.female, price: 16700.0, species: Species.cat, breed: 'British Shorthair', image: 'https://images.unsplash.com/photo-1516978101789-720eacb59e79?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8Y2F0LEJyaXRpc2gsU2hvcnRoYWlyfHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '37', name: 'Lola', age: 2.0, gender: Gender.female, price: 17200.0, species: Species.fish, breed: 'Guppy', image: 'https://images.unsplash.com/photo-1529057018378-07c51d77da73?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZmlzaCxHdXBweXx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '38', name: 'Bentley', age: 3.0, gender: Gender.male, price: 16800.0, species: Species.dog, breed: 'Beagle', image: 'https://images.unsplash.com/photo-1617748418149-1c5f78b8ac6e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLEJlYWdsZXx8fHx8fDE2ODU3OTc3MTc&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '39', name: 'Sophie', age: 3.0, gender: Gender.female, price: 12800.0, species: Species.cat, breed: 'Persian', image: 'https://images.unsplash.com/photo-1571566882372-1598d88abd90?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cGVyc2lhbixjYXR8fHx8fHwxNjg1ODExMTk1&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '40', name: 'Duke', age: 3.0, gender: Gender.male, price: 10400.0, species: Species.reptile, breed: 'Bearded Dragon', image: 'https://images.unsplash.com/photo-1630771076712-a2886474a641?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVwdGlsZSxCZWFyZGVkLERyYWdvbnx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '41', name: 'Misty', age: 2.0, gender: Gender.female, price: 13700.0, species: Species.smallMammal, breed: 'Rabbit', image: 'https://images.unsplash.com/photo-1545904442-59909a00497c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8c21hbGxNYW1tYWwsUmFiYml0fHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '42', name: 'Ziggy', age: 2.0, gender: Gender.male, price: 14800.0, species: Species.bird, breed: 'Finch', image: 'https://images.unsplash.com/photo-1598542768607-ebcc2ef6dbc6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmlyZCxGaW5jaHx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '43', name: 'Ruby', age: 2.0, gender: Gender.female, price: 9010.0, species: Species.exoticPet, breed: 'Chinchilla', image: 'https://images.unsplash.com/photo-1589934436939-7c467b1ae946?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZXhvdGljUGV0LENoaW5jaGlsbGF8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '44', name: 'Socks', age: 4.0, gender: Gender.male, price: 19100.0, species: Species.fish, breed: 'Discus', image: 'https://images.unsplash.com/photo-1682686581413-0a0ec9bb35bb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZmlzaCxEaXNjdXN8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '45', name: 'Calvin', age: 3.0, gender: Gender.male, price: 6920.0, species: Species.dog, breed: 'Beagle', image: 'https://images.unsplash.com/photo-1598442808932-fb399ebb6d70?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLEJlYWdsZXx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '46', name: 'Angel', age: 3.0, gender: Gender.female, price: 19700.0, species: Species.cat, breed: 'Scottish Fold', image: 'https://images.unsplash.com/photo-1496284427489-f59461d8a8e6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8Y2F0LFNjb3R0aXNoLEZvbGR8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '47', name: 'Emma', age: 3.0, gender: Gender.female, price: 17800.0, species: Species.smallMammal, breed: 'Degu', image: 'https://images.unsplash.com/photo-1551201602-9ab06be2a45f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8c21hbGxNYW1tYWwsRGVndXx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '48', name: 'Chewie', age: 5.0, gender: Gender.male, price: 17400.0, species: Species.reptile, breed: 'Ball Python', image: 'https://images.unsplash.com/photo-1510834011773-c6de111a88c4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVwdGlsZSxCYWxsLFB5dGhvbnx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '49', name: 'Henry', age: 14.0, gender: Gender.male, price: 15500.0, species: Species.bird, breed: 'African Grey Parrot', image: 'https://images.unsplash.com/photo-1611409600026-b772e20c3e05?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmlyZCxBZnJpY2FuLEdyZXksUGFycm90fHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '50', name: 'Oliver', age: 4.0, gender: Gender.male, price: 14800.0, species: Species.exoticPet, breed: 'Skunk', image: 'https://images.unsplash.com/photo-1683742910098-b7a06632a2b2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZXhvdGljUGV0LFNrdW5rfHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '51', name: 'Jax', age: 4.0, gender: Gender.male, price: 6600.0, species: Species.fish, breed: 'Discus', image: 'https://images.unsplash.com/photo-1559717201-2879521b49f4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZmlzaCxEaXNjdXN8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '52', name: 'Kimmy', age: 3.0, gender: Gender.female, price: 18500.0, species: Species.dog, breed: 'Bulldog', image: 'https://images.unsplash.com/photo-1667686523566-a973d6388e00?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLEJ1bGxkb2d8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '53', name: 'Violet', age: 4.0, gender: Gender.female, price: 10700.0, species: Species.dog, breed: 'German Shepherd', image: 'https://images.unsplash.com/photo-1678727711145-b7ca105c7216?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLEdlcm1hbixTaGVwaGVyZHx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '54', name: 'Hazel', age: 3.0, gender: Gender.female, price: 12200.0, species: Species.cat, breed: 'Persian', image: 'https://images.unsplash.com/photo-1633916500974-aa047ad1fc44?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8Y2F0LFBlcnNpYW58fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '55', name: 'Lila', age: 3.0, gender: Gender.female, price: 5700.0, species: Species.bird, breed: 'Parakeet', image: 'https://images.unsplash.com/photo-1645866689103-ae764cbe9f0f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmlyZCxQYXJha2VldHx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '56', name: 'Thor', age: 2.0, gender: Gender.male, price: 19100.0, species: Species.fish, breed: 'Guppy', image: 'https://images.unsplash.com/photo-1517010347965-8d5f0c0062c9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZmlzaCxHdXBweXx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '57', name: 'Blue', age: 5.0, gender: Gender.male, price: 8600.0, species: Species.reptile, breed: 'Ball Python', image: 'https://images.unsplash.com/photo-1535377041610-38d83d6098e4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVwdGlsZSxCYWxsLFB5dGhvbnx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '58', name: 'Penny', age: 2.0, gender: Gender.female, price: 18300.0, species: Species.smallMammal, breed: 'Guinea Pig', image: 'https://images.unsplash.com/photo-1635182791869-ccf997d5da23?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8c21hbGxNYW1tYWwsR3VpbmVhLFBpZ3x8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '59', name: 'Rusty', age: 2.0, gender: Gender.male, price: 14700.0, species: Species.exoticPet, breed: 'Fennec Fox', image: 'https://images.unsplash.com/photo-1480472684115-4966367dde1d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZXhvdGljUGV0LEZlbm5lYyxGb3h8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '60', name: 'Taz', age: 3.0, gender: Gender.male, price: 19600.0, species: Species.cat, breed: 'British Shorthair', image: 'https://images.unsplash.com/photo-1571566882372-1598d88abd90?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8Y2F0LEJyaXRpc2gsU2hvcnRoYWlyfHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '61', name: 'Marley', age: 3.0, gender: Gender.male, price: 18600.0, species: Species.dog, breed: 'Siberian Husky', image: 'https://images.unsplash.com/photo-1605330974194-143035ed6fae?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLFNpYmVyaWFuLEh1c2t5fHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '62', name: 'Stormy', age: 3.0, gender: Gender.female, price: 15600.0, species: Species.smallMammal, breed: 'Gerbil', image: 'https://images.unsplash.com/photo-1657076761228-bdb21cf0bc7c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8c21hbGxNYW1tYWwsR2VyYmlsfHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '63', name: 'Raven', age: 14.0, gender: Gender.male, price: 1600.0, species: Species.bird, breed: 'African Grey Parrot', image: 'https://images.unsplash.com/photo-1609926316772-ea8872149a86?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmlyZCxBZnJpY2FuLEdyZXksUGFycm90fHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '64', name: 'Jasper', age: 7.0, gender: Gender.male, price: 14500.0, species: Species.reptile, breed: 'Red-eared Slider', image: 'https://images.unsplash.com/photo-1614170031251-91dfe174babf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVwdGlsZSxSZWQtZWFyZWQsU2xpZGVyfHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '65', name: 'Izzy', age: 2.0, gender: Gender.female, price: 12100.0, species: Species.fish, breed: 'Swordtail', image: 'https://images.unsplash.com/photo-1510965156882-b72babc7b619?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZmlzaCxTd29yZHRhaWx8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '66', name: 'Lenny', age: 3.0, gender: Gender.male, price: 15100.0, species: Species.dog, breed: 'Beagle', image: 'https://images.unsplash.com/photo-1530281700549-e82e7bf110d6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLEJlYWdsZXx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '67', name: 'Leo', age: 12.0, gender: Gender.male, price: 16100.0, species: Species.reptile, breed: 'Ball Python', image: 'https://images.unsplash.com/photo-1471005197911-88e9d4a7834d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVwdGlsZSxCYWxsLFB5dGhvbnx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '68', name: 'Frankie', age: 3.0, gender: Gender.male, price: 10800.0, species: Species.cat, breed: 'Ragdoll', image: 'https://images.unsplash.com/photo-1569591159212-b02ea8a9f239?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8Y2F0LFJhZ2RvbGx8fHx8fHwxNjg1Nzk3NzE3&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '69', name: 'Winnie', age: 3.0, gender: Gender.female, price: 11900.0, species: Species.smallMammal, breed: 'Pygmy Hedgehog', image: 'https://images.unsplash.com/photo-1616214638821-3e7c8e9551a9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8c21hbGxNYW1tYWwsUHlnbXksSGVkZ2Vob2d8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '70', name: 'Scout', age: 4.0, gender: Gender.male, price: 12200.0, species: Species.dog, breed: 'Golden Retriever', image: 'https://images.unsplash.com/photo-1616046592317-40ba44dded88?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLEdvbGRlbixSZXRyaWV2ZXJ8fHx8fHwxNjg1Nzk3NzE3&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '71', name: 'Hunter', age: 2.0, gender: Gender.male, price: 10300.0, species: Species.fish, breed: 'Betta Fish', image: 'https://images.unsplash.com/photo-1523585895729-a4bb980d5c14?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZmlzaCxCZXR0YSxGaXNofHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '72', name: 'Piper', age: 7.0, gender: Gender.female, price: 17200.0, species: Species.bird, breed: 'Cockatoo', image: 'https://images.unsplash.com/photo-1658277858215-5e17931e9322?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmlyZCxDb2NrYXRvb3x8fHx8fDE2ODU3OTc3MTc&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '73', name: 'Rufus', age: 3.0, gender: Gender.male, price: 19700.0, species: Species.smallMammal, breed: 'Ferret', image: 'https://images.unsplash.com/photo-1600417144323-4b616efd9bdf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8c21hbGxNYW1tYWwsRmVycmV0fHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '74', name: 'Sasha', age: 4.0, gender: Gender.female, price: 17700.0, species: Species.exoticPet, breed: 'Axolotl', image: 'https://images.unsplash.com/photo-1683742910098-b7a06632a2b2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZXhvdGljUGV0LEF4b2xvdGx8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '75', name: 'Sable', age: 2.0, gender: Gender.male, price: 10700.0, species: Species.reptile, breed: 'Crested Gecko', image: 'https://images.unsplash.com/photo-1510765729892-39b1c9b3b673?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVwdGlsZSxDcmVzdGVkLEdlY2tvfHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '76', name: 'Yoda', age: 4.0, gender: Gender.male, price: 19700.0, species: Species.dog, breed: 'Dachshund', image: 'https://images.unsplash.com/photo-1663606370969-f17c17915ca3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLERhY2hzaHVuZHx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '77', name: 'Dexter', age: 2.0, gender: Gender.male, price: 9100.0, species: Species.cat, breed: 'Abyssinian', image: 'https://images.unsplash.com/photo-1611279976163-acf6a363e73a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8Y2F0LEFieXNzaW5pYW58fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '78', name: 'Koda', age: 4.0, gender: Gender.male, price: 10100.0, species: Species.bird, breed: 'Canary', image: 'https://images.unsplash.com/photo-1591198936750-16d8e15edb9e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmlyZCxDYW5hcnl8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '79', name: 'Phoebe', age: 3.0, gender: Gender.female, price: 18600.0, species: Species.smallMammal, breed: 'Pygmy Hedgehog', image: 'https://images.unsplash.com/photo-1618340335194-28aa73e4d317?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8c21hbGxNYW1tYWwsUHlnbXksSGVkZ2Vob2d8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '80', name: 'Tucker', age: 2.0, gender: Gender.male, price: 12900.0, species: Species.fish, breed: 'Molly', image: 'https://images.unsplash.com/photo-1535443120147-89aef0b5327a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZmlzaCxNb2xseXx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '81', name: 'Honey', age: 2.0, gender: Gender.female, price: 13600.0, species: Species.exoticPet, breed: 'Fennec Fox', image: 'https://images.unsplash.com/photo-1484334384494-7d2003f0ed1d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZXhvdGljUGV0LEZlbm5lYyxGb3h8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '82', name: 'Lenny', age: 5.0, gender: Gender.male, price: 6920.0, species: Species.reptile, breed: 'Ball Python', image: 'https://images.unsplash.com/photo-1591923167168-62eae03e2f96?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVwdGlsZSxCYWxsLFB5dGhvbnx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '83', name: 'Finn', age: 3.0, gender: Gender.male, price: 9800.0, species: Species.dog, breed: 'Beagle', image: 'https://images.unsplash.com/photo-1647097298829-e41dd4d8f92f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLEJlYWdsZXx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '84', name: 'Wilson', age: 6.0, gender: Gender.male, price: 12200.0, species: Species.reptile, breed: 'Boa Constrictor', image: 'https://images.unsplash.com/photo-1659563558918-401ba04027c1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVwdGlsZSxCb2EsQ29uc3RyaWN0b3J8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '85', name: 'Jade', age: 3.0, gender: Gender.male, price: 8900.0, species: Species.smallMammal, breed: 'Pygmy Hedgehog', image: 'https://images.unsplash.com/photo-1635150664735-85c990522c73?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8c21hbGxNYW1tYWwsUHlnbXksSGVkZ2Vob2d8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '86', name: 'Lily', age: 4.0, gender: Gender.female, price: 11900.0, species: Species.bird, breed: 'Conure', image: 'https://images.unsplash.com/photo-1497206365907-f5e630693df0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmlyZCxDb251cmV8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '87', name: 'Brandy', age: 3.0, gender: Gender.female, price: 16700.0, species: Species.exoticPet, breed: 'Ferret', image: 'https://images.unsplash.com/photo-1684937992634-14acb748b116?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZXhvdGljUGV0LEZlcnJldHx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '88', name: 'Sparky', age: 3.0, gender: Gender.male, price: 17200.0, species: Species.cat, breed: 'Persian', image: 'https://images.unsplash.com/photo-1533743983669-94fa5c4338ec?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8Y2F0LFBlcnNpYW58fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '89', name: 'Misty', age: 2.0, gender: Gender.female, price: 16800.0, species: Species.fish, breed: 'Swordtail', image: 'https://images.unsplash.com/photo-1537318885411-1f70ed83e6de?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZmlzaCxTd29yZHRhaWx8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '90', name: 'Poppy', age: 3.0, gender: Gender.female, price: 12800.0, species: Species.dog, breed: 'German Shepherd', image: 'https://images.unsplash.com/photo-1554226983-8a81adeda0c1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLEdlcm1hbixTaGVwaGVyZHx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '91', name: 'Buddy', age: 3.0, gender: Gender.male, price: 10400.0, species: Species.cat, breed: 'Persian', image: 'https://images.unsplash.com/photo-1626576739596-dddd9fb89d05?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8Y2F0LFBlcnNpYW58fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '92', name: 'Luna', age: 2.0, gender: Gender.female, price: 13700.0, species: Species.reptile, breed: 'Crested Gecko', image: 'https://images.unsplash.com/photo-1510765729892-39b1c9b3b673?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVwdGlsZSxDcmVzdGVkLEdlY2tvfHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '93', name: 'Max', age: 3.0, gender: Gender.male, price: 14800.0, species: Species.smallMammal, breed: 'Rabbit', image: 'https://images.unsplash.com/photo-1650128016351-b19294318b73?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8c21hbGxNYW1tYWwsUmFiYml0fHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '94', name: 'Coco', age: 3.0, gender: Gender.female, price: 9010.0, species: Species.bird, breed: 'Parakeet', image: 'https://images.unsplash.com/photo-1643010813312-fc825a96499e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8YmlyZCxQYXJha2VldHx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '95', name: 'Bailey', age: 2.0, gender: Gender.female, price: 19100.0, species: Species.exoticPet, breed: 'Fennec Fox', image: 'https://images.unsplash.com/photo-1486559893372-68b34fc790c4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZXhvdGljUGV0LEZlbm5lYyxGb3h8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '96', name: 'Molly', age: 1.0, gender: Gender.female, price: 6920.0, species: Species.fish, breed: 'Molly', image: 'https://images.unsplash.com/photo-1682686581776-b6ebee7c150e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZmlzaCxNb2xseXx8fHx8fDE2ODU3OTc3MTY&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '97', name: 'Rocky', age: 4.0, gender: Gender.male, price: 19700.0, species: Species.dog, breed: 'Golden Retriever', image: 'https://images.unsplash.com/photo-1577936638249-39fa2e1d786a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8ZG9nLEdvbGRlbixSZXRyaWV2ZXJ8fHx8fHwxNjg1Nzk3NzE3&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '98', name: 'Charlie', age: 3.0, gender: Gender.male, price: 17800.0, species: Species.cat, breed: 'Ragdoll', image: 'https://images.unsplash.com/photo-1589624196772-f585ff717116?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8Y2F0LFJhZ2RvbGx8fHx8fHwxNjg1Nzk3NzE3&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '99', name: 'Sadie', age: 3.0, gender: Gender.female, price: 17400.0, species: Species.smallMammal, breed: 'Ferret', image: 'https://images.unsplash.com/photo-1551148408-9b3cc5e1add6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8c21hbGxNYW1tYWwsRmVycmV0fHx8fHx8MTY4NTc5NzcxNg&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),

  Pet(id: '100', name: 'Daisy', age: 4.0, gender: Gender.female, price: 15500.0, species: Species.reptile, breed: 'Green Iguana', image: 'https://images.unsplash.com/photo-1511179844851-7a8cc6738f09?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cmVwdGlsZSxHcmVlbixJZ3VhbmF8fHx8fHwxNjg1Nzk3NzE2&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080'),
];
