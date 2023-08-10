from flask import Flask, render_template, request
from flaskext.mysql import MySQL
import random
import json


app = Flask(__name__)
# initializes the which game is to be chosen, the character images, and character names for each image
game_page = 0
characters = []
characterNames = []
# initializes the connection to the SQL database
mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'password'
app.config['MYSQL_DATABASE_DB'] = 'legoroster'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)
# connects to the DB
conn = mysql.connect()
# A series of SQL queries to fill the character image list and character name list with random characters
def getCharacters(GameNumber):
    charList = []
    NamesList = []
    cursor = conn.cursor()
    query = "SELECT GameChar FROM game WHERE GameID = %s;"
    cursor.execute(query, GameNumber)
    gameChar = cursor.fetchone()
    query = "SELECT * FROM " + gameChar[0] + ";"
    charCount = cursor.execute(query)

    for x in range(1,charCount+1):
        query = "SELECT TypeName FROM " + gameChar[0] + " WHERE TypeID = %s;"
        cursor.execute(query, x)
        gameType = cursor.fetchone()
        charID = random.randint(1,3)
        # gets the list of images
        query = "SELECT PhotoLoc FROM " + gameType[0] + " WHERE CharID = %s;"
        cursor.execute(query, charID)
        charIcon = cursor.fetchone()
        charList.append(charIcon[0])
        # gets the list of names
        query = "SELECT CharName FROM " + gameType[0] + " WHERE CharID = %s;"
        cursor.execute(query, charID)
        charIcon = cursor.fetchone()
        characterNames.append(charIcon[0])
    return charList
# default page whem the program is ran
@app.route("/")
def Home():
    game = game_page
    characterList = characters
    return render_template("homepage.html", game=game, charList = json.dumps(characterList))
# the route for after a game is selected a game identifer is set for which game is selected
# and the charcters from that game are added to the appropriate list
@app.route("/roster", methods=['GET', 'POST'])
def Roster():
    characterNames.clear()
    game = game_page
    characterList = characters
    charNames = characterNames
    if "StarWars" in request.form:
        game=1
        characterList = getCharacters(game)
    elif "Villians" in request.form:
        game=2
        characterList = getCharacters(game)
    elif "Marvel" in request.form:
        game=3
        characterList = getCharacters(game)
    conn.close()
    # game and character data is passed to the front end
    return render_template("roster.html", game=game, charList = json.dumps(characterList), names = json.dumps(charNames))

if __name__ == "__main__":
     app.run(debug=True)