//
//  CharacterList+Fake.swift
//  RickAndMortyAppTests
//
//  Created by Cane Allesta on 5/9/23.
//

import Foundation

class CharacterListFake {
    /// Fake response for "https://rickandmortyapi.com/api/character?page=2" endpoint
    static func makeCharacterListJsonFake() -> Data {
        return Data("""
{
    "info": {
        "count": 826,
        "pages": 42,
        "next": "https://rickandmortyapi.com/api/character?page=3",
        "prev": "https://rickandmortyapi.com/api/character?page=1"
    },
    "results": [
        {
            "id": 21,
            "name": "Aqua Morty",
            "status": "unknown",
            "species": "Humanoid",
            "type": "Fish-Person",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/21.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/10",
                "https://rickandmortyapi.com/api/episode/22"
            ],
            "url": "https://rickandmortyapi.com/api/character/21",
            "created": "2017-11-04T22:39:48.055Z"
        },
        {
            "id": 22,
            "name": "Aqua Rick",
            "status": "unknown",
            "species": "Humanoid",
            "type": "Fish-Person",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/22.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/10",
                "https://rickandmortyapi.com/api/episode/22",
                "https://rickandmortyapi.com/api/episode/28"
            ],
            "url": "https://rickandmortyapi.com/api/character/22",
            "created": "2017-11-04T22:41:07.171Z"
        },
        {
            "id": 23,
            "name": "Arcade Alien",
            "status": "unknown",
            "species": "Alien",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Immortality Field Resort",
                "url": "https://rickandmortyapi.com/api/location/7"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/23.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/13",
                "https://rickandmortyapi.com/api/episode/19",
                "https://rickandmortyapi.com/api/episode/21",
                "https://rickandmortyapi.com/api/episode/25",
                "https://rickandmortyapi.com/api/episode/26"
            ],
            "url": "https://rickandmortyapi.com/api/character/23",
            "created": "2017-11-05T08:43:05.095Z"
        },
        {
            "id": 24,
            "name": "Armagheadon",
            "status": "Alive",
            "species": "Alien",
            "type": "Cromulon",
            "gender": "Male",
            "origin": {
                "name": "Signus 5 Expanse",
                "url": "https://rickandmortyapi.com/api/location/22"
            },
            "location": {
                "name": "Signus 5 Expanse",
                "url": "https://rickandmortyapi.com/api/location/22"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/24.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/16"
            ],
            "url": "https://rickandmortyapi.com/api/character/24",
            "created": "2017-11-05T08:48:30.776Z"
        },
        {
            "id": 25,
            "name": "Armothy",
            "status": "Dead",
            "species": "unknown",
            "type": "Self-aware arm",
            "gender": "Male",
            "origin": {
                "name": "Post-Apocalyptic Earth",
                "url": "https://rickandmortyapi.com/api/location/8"
            },
            "location": {
                "name": "Post-Apocalyptic Earth",
                "url": "https://rickandmortyapi.com/api/location/8"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/25.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/23"
            ],
            "url": "https://rickandmortyapi.com/api/character/25",
            "created": "2017-11-05T08:54:29.343Z"
        },
        {
            "id": 26,
            "name": "Arthricia",
            "status": "Alive",
            "species": "Alien",
            "type": "Cat-Person",
            "gender": "Female",
            "origin": {
                "name": "Purge Planet",
                "url": "https://rickandmortyapi.com/api/location/9"
            },
            "location": {
                "name": "Purge Planet",
                "url": "https://rickandmortyapi.com/api/location/9"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/26.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/20"
            ],
            "url": "https://rickandmortyapi.com/api/character/26",
            "created": "2017-11-05T08:56:46.165Z"
        },
        {
            "id": 27,
            "name": "Artist Morty",
            "status": "Alive",
            "species": "Human",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/27.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/10",
                "https://rickandmortyapi.com/api/episode/28"
            ],
            "url": "https://rickandmortyapi.com/api/character/27",
            "created": "2017-11-05T08:59:07.457Z"
        },
        {
            "id": 28,
            "name": "Attila Starwar",
            "status": "Alive",
            "species": "Human",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Interdimensional Cable",
                "url": "https://rickandmortyapi.com/api/location/6"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/28.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/8",
                "https://rickandmortyapi.com/api/episode/13",
                "https://rickandmortyapi.com/api/episode/17"
            ],
            "url": "https://rickandmortyapi.com/api/character/28",
            "created": "2017-11-05T09:02:16.595Z"
        },
        {
            "id": 29,
            "name": "Baby Legs",
            "status": "Alive",
            "species": "Human",
            "type": "Human with baby legs",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Interdimensional Cable",
                "url": "https://rickandmortyapi.com/api/location/6"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/29.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/8"
            ],
            "url": "https://rickandmortyapi.com/api/character/29",
            "created": "2017-11-05T09:06:19.644Z"
        },
        {
            "id": 30,
            "name": "Baby Poopybutthole",
            "status": "Alive",
            "species": "Poopybutthole",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "unknown",
                "url": ""
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/30.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/31"
            ],
            "url": "https://rickandmortyapi.com/api/character/30",
            "created": "2017-11-05T09:13:16.483Z"
        },
        {
            "id": 31,
            "name": "Baby Wizard",
            "status": "Dead",
            "species": "Alien",
            "type": "Parasite",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Earth (Replacement Dimension)",
                "url": "https://rickandmortyapi.com/api/location/20"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/31.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/15"
            ],
            "url": "https://rickandmortyapi.com/api/character/31",
            "created": "2017-11-05T09:15:11.286Z"
        },
        {
            "id": 32,
            "name": "Bearded Lady",
            "status": "Dead",
            "species": "Alien",
            "type": "Parasite",
            "gender": "Female",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Earth (Replacement Dimension)",
                "url": "https://rickandmortyapi.com/api/location/20"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/32.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/15"
            ],
            "url": "https://rickandmortyapi.com/api/character/32",
            "created": "2017-11-05T09:18:04.184Z"
        },
        {
            "id": 33,
            "name": "Beebo",
            "status": "Dead",
            "species": "Alien",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "Venzenulon 7",
                "url": "https://rickandmortyapi.com/api/location/10"
            },
            "location": {
                "name": "Venzenulon 7",
                "url": "https://rickandmortyapi.com/api/location/10"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/33.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/29"
            ],
            "url": "https://rickandmortyapi.com/api/character/33",
            "created": "2017-11-05T09:21:55.595Z"
        },
        {
            "id": 34,
            "name": "Benjamin",
            "status": "Alive",
            "species": "Poopybutthole",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Interdimensional Cable",
                "url": "https://rickandmortyapi.com/api/location/6"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/34.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/8",
                "https://rickandmortyapi.com/api/episode/13",
                "https://rickandmortyapi.com/api/episode/17"
            ],
            "url": "https://rickandmortyapi.com/api/character/34",
            "created": "2017-11-05T09:24:04.748Z"
        },
        {
            "id": 35,
            "name": "Bepisian",
            "status": "Alive",
            "species": "Alien",
            "type": "Bepisian",
            "gender": "unknown",
            "origin": {
                "name": "Bepis 9",
                "url": "https://rickandmortyapi.com/api/location/11"
            },
            "location": {
                "name": "Bepis 9",
                "url": "https://rickandmortyapi.com/api/location/11"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/35.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/1",
                "https://rickandmortyapi.com/api/episode/11",
                "https://rickandmortyapi.com/api/episode/19",
                "https://rickandmortyapi.com/api/episode/25"
            ],
            "url": "https://rickandmortyapi.com/api/character/35",
            "created": "2017-11-05T09:27:38.491Z"
        },
        {
            "id": 36,
            "name": "Beta-Seven",
            "status": "Alive",
            "species": "Alien",
            "type": "Hivemind",
            "gender": "unknown",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "unknown",
                "url": ""
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/36.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/14"
            ],
            "url": "https://rickandmortyapi.com/api/character/36",
            "created": "2017-11-05T09:31:08.952Z"
        },
        {
            "id": 37,
            "name": "Beth Sanchez",
            "status": "Alive",
            "species": "Human",
            "type": "",
            "gender": "Female",
            "origin": {
                "name": "Earth (C-500A)",
                "url": "https://rickandmortyapi.com/api/location/23"
            },
            "location": {
                "name": "Earth (C-500A)",
                "url": "https://rickandmortyapi.com/api/location/23"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/37.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/8"
            ],
            "url": "https://rickandmortyapi.com/api/character/37",
            "created": "2017-11-05T09:38:22.960Z"
        },
        {
            "id": 38,
            "name": "Beth Smith",
            "status": "Alive",
            "species": "Human",
            "type": "",
            "gender": "Female",
            "origin": {
                "name": "Earth (C-137)",
                "url": "https://rickandmortyapi.com/api/location/1"
            },
            "location": {
                "name": "Earth (C-137)",
                "url": "https://rickandmortyapi.com/api/location/1"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/38.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/1",
                "https://rickandmortyapi.com/api/episode/2",
                "https://rickandmortyapi.com/api/episode/3",
                "https://rickandmortyapi.com/api/episode/4",
                "https://rickandmortyapi.com/api/episode/5",
                "https://rickandmortyapi.com/api/episode/6",
                "https://rickandmortyapi.com/api/episode/22",
                "https://rickandmortyapi.com/api/episode/51"
            ],
            "url": "https://rickandmortyapi.com/api/character/38",
            "created": "2017-11-05T09:48:44.230Z"
        },
        {
            "id": 39,
            "name": "Beth Smith",
            "status": "Alive",
            "species": "Human",
            "type": "",
            "gender": "Female",
            "origin": {
                "name": "Earth (Evil Rick's Target Dimension)",
                "url": "https://rickandmortyapi.com/api/location/34"
            },
            "location": {
                "name": "Earth (Evil Rick's Target Dimension)",
                "url": "https://rickandmortyapi.com/api/location/34"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/39.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/10"
            ],
            "url": "https://rickandmortyapi.com/api/character/39",
            "created": "2017-11-05T09:52:31.777Z"
        },
        {
            "id": 40,
            "name": "Beth's Mytholog",
            "status": "Dead",
            "species": "Mythological Creature",
            "type": "Mytholog",
            "gender": "Female",
            "origin": {
                "name": "Nuptia 4",
                "url": "https://rickandmortyapi.com/api/location/13"
            },
            "location": {
                "name": "Nuptia 4",
                "url": "https://rickandmortyapi.com/api/location/13"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/40.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/18"
            ],
            "url": "https://rickandmortyapi.com/api/character/40",
            "created": "2017-11-05T10:02:26.701Z"
        }
    ]
}
""".utf8)
    }

    
    static func makeCharacterListJsonFakeParseError() -> Data {
        return Data("""
{
    "info": {
        "count": false,
        "pages": 42,
        "next": 34,
        "prev": true
    }
}
""".utf8)
    }
}

class SearchCharacterFake {
    /// Fake response for "https://rickandmortyapi.com/api/character?page=2" endpoint
    static func makeSearchCharacterJsonFake() -> Data {
        return Data("""
{
    "info": {
        "count": 107,
        "pages": 6,
        "next": "https://rickandmortyapi.com/api/character/?page=2&name=rick",
        "prev": null
    },
    "results": [
        {
            "id": 1,
            "name": "Rick Sanchez",
            "status": "Alive",
            "species": "Human",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "Earth (C-137)",
                "url": "https://rickandmortyapi.com/api/location/1"
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/1",
                "https://rickandmortyapi.com/api/episode/2",
                "https://rickandmortyapi.com/api/episode/3",
                "https://rickandmortyapi.com/api/episode/4",
                "https://rickandmortyapi.com/api/episode/5",
                "https://rickandmortyapi.com/api/episode/6",
                "https://rickandmortyapi.com/api/episode/7",
                "https://rickandmortyapi.com/api/episode/8",
                "https://rickandmortyapi.com/api/episode/9",
                "https://rickandmortyapi.com/api/episode/10",
                "https://rickandmortyapi.com/api/episode/11",
                "https://rickandmortyapi.com/api/episode/12",
                "https://rickandmortyapi.com/api/episode/13",
                "https://rickandmortyapi.com/api/episode/14",
                "https://rickandmortyapi.com/api/episode/15",
                "https://rickandmortyapi.com/api/episode/16",
                "https://rickandmortyapi.com/api/episode/17",
                "https://rickandmortyapi.com/api/episode/18",
                "https://rickandmortyapi.com/api/episode/19",
                "https://rickandmortyapi.com/api/episode/20",
                "https://rickandmortyapi.com/api/episode/21",
                "https://rickandmortyapi.com/api/episode/22",
                "https://rickandmortyapi.com/api/episode/23",
                "https://rickandmortyapi.com/api/episode/24",
                "https://rickandmortyapi.com/api/episode/25",
                "https://rickandmortyapi.com/api/episode/26",
                "https://rickandmortyapi.com/api/episode/27",
                "https://rickandmortyapi.com/api/episode/28",
                "https://rickandmortyapi.com/api/episode/29",
                "https://rickandmortyapi.com/api/episode/30",
                "https://rickandmortyapi.com/api/episode/31",
                "https://rickandmortyapi.com/api/episode/32",
                "https://rickandmortyapi.com/api/episode/33",
                "https://rickandmortyapi.com/api/episode/34",
                "https://rickandmortyapi.com/api/episode/35",
                "https://rickandmortyapi.com/api/episode/36",
                "https://rickandmortyapi.com/api/episode/37",
                "https://rickandmortyapi.com/api/episode/38",
                "https://rickandmortyapi.com/api/episode/39",
                "https://rickandmortyapi.com/api/episode/40",
                "https://rickandmortyapi.com/api/episode/41",
                "https://rickandmortyapi.com/api/episode/42",
                "https://rickandmortyapi.com/api/episode/43",
                "https://rickandmortyapi.com/api/episode/44",
                "https://rickandmortyapi.com/api/episode/45",
                "https://rickandmortyapi.com/api/episode/46",
                "https://rickandmortyapi.com/api/episode/47",
                "https://rickandmortyapi.com/api/episode/48",
                "https://rickandmortyapi.com/api/episode/49",
                "https://rickandmortyapi.com/api/episode/50",
                "https://rickandmortyapi.com/api/episode/51"
            ],
            "url": "https://rickandmortyapi.com/api/character/1",
            "created": "2017-11-04T18:48:46.250Z"
        },
        {
            "id": 8,
            "name": "Adjudicator Rick",
            "status": "Dead",
            "species": "Human",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/8.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/28"
            ],
            "url": "https://rickandmortyapi.com/api/character/8",
            "created": "2017-11-04T20:03:34.737Z"
        },
        {
            "id": 15,
            "name": "Alien Rick",
            "status": "unknown",
            "species": "Alien",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/15.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/10"
            ],
            "url": "https://rickandmortyapi.com/api/character/15",
            "created": "2017-11-04T20:56:13.215Z"
        },
        {
            "id": 19,
            "name": "Antenna Rick",
            "status": "unknown",
            "species": "Human",
            "type": "Human with antennae",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "unknown",
                "url": ""
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/19.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/10"
            ],
            "url": "https://rickandmortyapi.com/api/character/19",
            "created": "2017-11-04T22:28:13.756Z"
        },
        {
            "id": 22,
            "name": "Aqua Rick",
            "status": "unknown",
            "species": "Humanoid",
            "type": "Fish-Person",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/22.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/10",
                "https://rickandmortyapi.com/api/episode/22",
                "https://rickandmortyapi.com/api/episode/28"
            ],
            "url": "https://rickandmortyapi.com/api/character/22",
            "created": "2017-11-04T22:41:07.171Z"
        },
        {
            "id": 48,
            "name": "Black Rick",
            "status": "Alive",
            "species": "Human",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/48.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/22",
                "https://rickandmortyapi.com/api/episode/28"
            ],
            "url": "https://rickandmortyapi.com/api/character/48",
            "created": "2017-11-05T11:15:26.044Z"
        },
        {
            "id": 56,
            "name": "Bootleg Portal Chemist Rick",
            "status": "Dead",
            "species": "Human",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/56.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/28"
            ],
            "url": "https://rickandmortyapi.com/api/character/56",
            "created": "2017-11-05T11:34:16.447Z"
        },
        {
            "id": 69,
            "name": "Commander Rick",
            "status": "Dead",
            "species": "Human",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/69.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/22"
            ],
            "url": "https://rickandmortyapi.com/api/character/69",
            "created": "2017-11-30T11:28:06.461Z"
        },
        {
            "id": 72,
            "name": "Cool Rick",
            "status": "Alive",
            "species": "Human",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "Earth (K-83)",
                "url": "https://rickandmortyapi.com/api/location/26"
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/72.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/28"
            ],
            "url": "https://rickandmortyapi.com/api/character/72",
            "created": "2017-11-30T11:41:11.542Z"
        },
        {
            "id": 74,
            "name": "Cop Rick",
            "status": "Alive",
            "species": "Human",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/74.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/28"
            ],
            "url": "https://rickandmortyapi.com/api/character/74",
            "created": "2017-11-30T11:48:18.950Z"
        },
        {
            "id": 78,
            "name": "Cowboy Rick",
            "status": "Alive",
            "species": "Human",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/78.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/10",
                "https://rickandmortyapi.com/api/episode/28"
            ],
            "url": "https://rickandmortyapi.com/api/character/78",
            "created": "2017-11-30T14:15:18.347Z"
        },
        {
            "id": 82,
            "name": "Cronenberg Rick",
            "status": "unknown",
            "species": "Cronenberg",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "Cronenberg Earth",
                "url": "https://rickandmortyapi.com/api/location/12"
            },
            "location": {
                "name": "Earth (C-137)",
                "url": "https://rickandmortyapi.com/api/location/1"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/82.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/6",
                "https://rickandmortyapi.com/api/episode/10"
            ],
            "url": "https://rickandmortyapi.com/api/character/82",
            "created": "2017-11-30T14:28:54.596Z"
        },
        {
            "id": 86,
            "name": "Cyclops Rick",
            "status": "Dead",
            "species": "Humanoid",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/86.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/10",
                "https://rickandmortyapi.com/api/episode/22",
                "https://rickandmortyapi.com/api/episode/28"
            ],
            "url": "https://rickandmortyapi.com/api/character/86",
            "created": "2017-11-30T20:53:10.382Z"
        },
        {
            "id": 103,
            "name": "Doofus Rick",
            "status": "unknown",
            "species": "Human",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "Earth (J19ζ7)",
                "url": "https://rickandmortyapi.com/api/location/31"
            },
            "location": {
                "name": "Earth (Replacement Dimension)",
                "url": "https://rickandmortyapi.com/api/location/20"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/103.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/10",
                "https://rickandmortyapi.com/api/episode/22"
            ],
            "url": "https://rickandmortyapi.com/api/character/103",
            "created": "2017-12-01T12:29:27.984Z"
        },
        {
            "id": 119,
            "name": "Evil Rick",
            "status": "Dead",
            "species": "Humanoid",
            "type": "Robot",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/119.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/10"
            ],
            "url": "https://rickandmortyapi.com/api/character/119",
            "created": "2017-12-26T16:17:16.472Z"
        },
        {
            "id": 135,
            "name": "Garment District Rick",
            "status": "Dead",
            "species": "Human",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/135.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/28"
            ],
            "url": "https://rickandmortyapi.com/api/character/135",
            "created": "2017-12-26T20:51:43.614Z"
        },
        {
            "id": 164,
            "name": "Insurance Rick",
            "status": "unknown",
            "species": "Human",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/164.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/10"
            ],
            "url": "https://rickandmortyapi.com/api/character/164",
            "created": "2017-12-29T17:03:08.645Z"
        },
        {
            "id": 165,
            "name": "Investigator Rick",
            "status": "Dead",
            "species": "Human",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/165.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/28"
            ],
            "url": "https://rickandmortyapi.com/api/character/165",
            "created": "2017-12-29T17:05:15.514Z"
        },
        {
            "id": 187,
            "name": "Juggling Rick",
            "status": "unknown",
            "species": "Human",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Citadel of Ricks",
                "url": "https://rickandmortyapi.com/api/location/3"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/187.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/28"
            ],
            "url": "https://rickandmortyapi.com/api/character/187",
            "created": "2017-12-29T18:59:47.440Z"
        },
        {
            "id": 215,
            "name": "Maximums Rickimus",
            "status": "Dead",
            "species": "Human",
            "type": "",
            "gender": "Male",
            "origin": {
                "name": "unknown",
                "url": ""
            },
            "location": {
                "name": "Rick's Memories",
                "url": "https://rickandmortyapi.com/api/location/126"
            },
            "image": "https://rickandmortyapi.com/api/character/avatar/215.jpeg",
            "episode": [
                "https://rickandmortyapi.com/api/episode/10",
                "https://rickandmortyapi.com/api/episode/22",
                "https://rickandmortyapi.com/api/episode/51"
            ],
            "url": "https://rickandmortyapi.com/api/character/215",
            "created": "2017-12-30T14:27:55.489Z"
        }
    ]
}
""".utf8)
    }

    
    static func makeCharacterListJsonFakeParseError() -> Data {
        return Data("""
{
    "info": {
        "count": false,
        "pages": 42,
        "next": 34,
        "prev": true
    }
}
""".utf8)
    }
}
