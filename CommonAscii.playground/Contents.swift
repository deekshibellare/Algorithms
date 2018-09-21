import UIKit

var str = "Hello, playground"


/*ASCII is a character encoding standard used to assign unique numerical codes to characters on a
computer. For example, uppercase A = 65, and lowercase k = 107.
To compute the ASCII score of a string, sum the ASCII value for each character in the string. For example, the ASCII score for the string DISNEY is 460:
In this exercise, you will be given an object that contains lists of strings. For example, you could be given lists of team names for the four major sports (NFL, NBA, MLB, and NHL).
Your job is to examine each list, calculate the ASCII score for each entry on the list, and determine if there is a common score across all of the lists. Return common score or -1 if none exists
 
*/

extension String
{
    var asciiArray:[Int] {
        return self.unicodeScalars.filter { $0.isASCII}.map{Int($0.value)}
    }
}

func findCommonASCIIScore(jsonDictionary: [String: Any]) -> Int {
    
    guard let dictionary = jsonDictionary as? [String:[String]] else {
        return -1
    }
    
    var asciiArrayGroup = [[Int]]()
    for key in dictionary.keys {
        if let items = dictionary[key] {
            var asciiArray = [Int]()
            for element in items {
                let asciiSum = element.asciiArray.reduce(0, +)
                asciiArray.append(asciiSum)
            }
            asciiArrayGroup.append(asciiArray)
        }
    }
    
    guard let firstGroup = asciiArrayGroup.first else {
        return -1
    }
    
    var commonSet = Set(firstGroup)
    for element in asciiArrayGroup.dropFirst() {
        commonSet = commonSet.intersection(Set(element))
    }
    if let element = commonSet.first {
        return element
    }
    return -1
}

let dict = [
    "nfl": [
    "Arizona Cardinals",
    "Atlanta Falcons",
    "Baltimore Ravens",
    "Buffalo Bills",
    "Carolina Panthers",
    "Chicago Bears",
    "Cincinnati Bengals",
    "Cleveland Browns",
    "Dallas Cowboys",
    "Denver Broncos",
    "Detroit Lions",
    "Green Bay Packers",
    "Houston Texans",
    "Indianapolis Colts",
    "Jacksonville Jaguars",
    "Kansas City Chiefs",
    "Los Angeles Rams",
    "Los Angeles Chargers",
    "Miami Dolphins",
    "Minnesota Vikings",
    "New England Patriots",
    "New Orleans Saints",
    "New York Giants",
    "New York Jets",
    "Oakland Raiders",
    "Philadelphia Eagles",
    "Pittsburgh Steelers",
    "San Francisco 49ers",
    "Seattle Seahawks",
    "Tampa Bay Buccaneers",
    "Tennessee Titans",
    "Washington Redskins"
    ],
    "nba": [
    "Atlanta Hawks",
    "Boston Celtics",
    "Brooklyn Nets",
    "Charlotte Hornets",
    "Chicago Bulls",
    "Cleveland Cavaliers",
    "Dallas Mavericks",
    "Denver Nuggets",
    "Detroit Pistons",
    "Golden State Warriors",
    "Houston Rockets",
    "Indiana Pacers",
    "LA Clippers",
    "Los Angeles Lakers",
    "Memphis Grizzlies",
    "Miami Heat",
    "Milwaukee Bucks",
    "Minnesota Timberwolves",
    "New Orleans Pelicans",
    "New York Knicks",
    "Oklahoma City Thunder",
    "Orlando Magic",
    "Philadelphia 76ers",
    "Phoenix Suns",
    "Portland Trail Blazers",
    "Sacramento Kings",
    "San Antonio Spurs",
    "Toronto Raptors",
    "Utah Jazz",
    "Washington Wizards"
    ],
    "mlb": [
    "Arizona Diamondbacks",
    "Atlanta Braves",
    "Baltimore Orioles",
    "Boston Red Sox",
    "Chicago White Sox",
    "Chicago Cubs",
    "Cincinnati Reds",
    "Cleveland Indians",
    "Colorado Rockies",
    "Detroit Tigers",
    "Houston Astros",
    "Kansas City Royals",
    "Los Angeles Angels",
    "Los Angeles Dodgers",
    "Miami Marlins",
    "Milwaukee Brewers",
    "Minnesota Twins",
    "New York Yankees",
    "New York Mets",
    "Oakland Athletics",
    "Philadelphia Phillies",
    "Pittsburgh Pirates",
    "San Diego Padres",
    "San Francisco Giants",
    "Seattle Mariners",
    "St. Louis Cardinals",
    "Tampa Bay Rays",
    "Texas Rangers",
    "Toronto Blue Jays",
    "Washington Nationals"
    ],
    "nhl": [
    "Anaheim Ducks",
    "Arizona Coyotes",
    "Boston Bruins",
    "Buffalo Sabres",
    "Calgary Flames",
    "Carolina Hurricanes",
    "Chicago Blackhawks",
    "Colorado Avalanche",
    "Columbus Blue Jackets",
    "Dallas Stars",
    "Detroit Red Wings",
    "Edmonton Oilers",
    "Florida Panthers",
    "Los Angeles Kings",
    "Minnesota Wild",
    "Montreal Canadiens",
    "Nashville Predators",
    "New Jersey Devils",
    "New York Islanders",
    "New York Rangers",
    "Ottawa Senators",
    "Philadelphia Flyers",
    "Pittsburgh Penguins",
    "San Jose Sharks",
    "St. Louis Blues",
    "Tampa Bay Lightning",
    "Toronto Maple Leafs",
    "Vancouver Canucks",
    "Washington Capitals",
    "Winnipeg Jets"
    ]
]

findCommonASCIIScore(jsonDictionary: dict)
