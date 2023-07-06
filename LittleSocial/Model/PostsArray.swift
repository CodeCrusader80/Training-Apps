//
//  PostsArray.swift
//  LittleSocial
//
//  Created by Mathieu Moutarde on 06/07/2023.
//

import Foundation

var items: [Post] = [
Post(image: "work", desc: "Comme je travaille sur un projet graphique d'envergure, j'ai sorti ma tablette graphique bien badass, bonjour le poinget après ça ✍️", time: randomDateFormatted(), comments: 45, likes: 290),
Post(image: "vacances", desc: "Cool, enfin un peu de repos 😎 après une longue mission en freelance qui m'a demandé beaucoup de temps et d'investissement. Merci à @ARKCorp pour cette mission et cette ambiance de travail, vous assurez ! Au plaisir de revenir vers vous pour de nouvelles missions 😀.", time: randomDateFormatted(), comments: 210, likes: 1200),
Post(image: "moon", desc: "Grâce à mon nouvel appareil photo 📸, j'ai enfin réussi à capturer une photo correcte de la lune. Dites-moi ce que vous en pensez !", time: randomDateFormatted(), comments: 300, likes: 2500),
Post(image: "collegue", desc: "Trop contente de retrouver mon collègue préféré 👫 #duodechoc", time: randomDateFormatted(), comments: 25, likes: 450),
Post(image: "neurones", desc: "Nous travaillons tous les deux sur un réseau de neurones artificiels. Autant vous dire que c'est intense entre les mathématiques, la correction des biais, etc. Heureusement, nous tenons bon avec le soutien de plusieurs ingénieurs à nos côtés 😮‍💨", time: randomDateFormatted(), comments: 280, likes: 3800),
Post(image: "work-2", desc: "En parallèle, je continue mon projet logiciel perso quand même j'espère que ça va marcher pour moi 🤘", time: randomDateFormatted(), comments: 310, likes: 5000),
Post(image: "work-3", desc: "Notre IA commence à produire des résultats probants à partir de données statistiques, ce qui est un très bon début 💪 ! Nous continuons et je suis sûr qu'en persévérant, nous parviendrons à quelque chose qui pourrait être révolutionnaire.", time: randomDateFormatted(), comments: 1200, likes: 10000),
Post(image: "coiffure", desc: "Nouvelle teinture, je passe sur du blond 👩‍🦰 pour le coup, eh oui, il faut bien prendre un peu soin de soi quand même, malgré tout ce travail acharné", time: randomDateFormatted(), comments: 380, likes: 2200)
]
