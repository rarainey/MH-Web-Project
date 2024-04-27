<h1>Final Project Description</h1>
<p>I wrote most of this on word, so for the especially formatted parts, I included screenshots instead of text.</p>

<h2>Introduction and Overview:</h2>
<p>The theme of my project is the video game, Monster Hunter: World. In it, there are monsters to hunt which will be the basis of one model class, the weapons being the other.</p>
<p>The project is divided into two model classes, Monster and Weapon, with each having their own controller with their respective names and index pages. The Monster model class contains 8 attributes with 6 different attribute types: string, text, array, integer, Boolean, and Image. The Monster model class’s index page also contains the client-side feature for the project: searching. The Weapon model class contains 7 attributes with 3 different attribute types: string, integer, and Boolean. This class is unique in that one of its attributes, is_elemental, is a Boolean that, when true, enforces two other attributes to have some value.</p>
<p>Finally, there is a Pages controller that simply hosts the Home page, the root page that links to both the Monster and Weapon Index pages.</p>
<p>I did NOT implement any server-side feature for the Weapon Index page.</p> 

<p>Any information used for the project: images, attribute information, etc. comes from the Monster Hunter Wiki.</p> 


<h2>Technical Description:</h2>
<h3>Model Classes:</h3>
<p>Listed below each attribute is its validation type(s).</p>

![Screenshot 2024-04-26 224757](https://github.com/rarainey/final-project-3081/assets/143568348/81be36cd-fb17-4a80-977e-4f10a784f802)
![Screenshot 2024-04-26 224812](https://github.com/rarainey/final-project-3081/assets/143568348/d63dd692-5e5a-4b00-ae4e-e3466c824e19)
![Screenshot 2024-04-26 224832](https://github.com/rarainey/final-project-3081/assets/143568348/8a7f3388-da7a-4ba7-8df8-4d86d49ad15e)
![Screenshot 2024-04-26 224841](https://github.com/rarainey/final-project-3081/assets/143568348/292228d2-a016-4de5-bb05-c901408d6138)
![Screenshot 2024-04-26 224902](https://github.com/rarainey/final-project-3081/assets/143568348/4c2030d8-037a-4456-9b5a-71259ef384c1)

<h3>Client-side Feature:</h3>
<p>I implemented searching for the Monster index page. If the user types a keyword into the search bar, it will search the monster’s name for a match. This will check if the keyword is equal to the name string (since it is exact keyword matching).</p>
<p>NOTE: Since the instructions called for “exact” keyword matching, typing a monster’s name will not match variants. For example, typing “Rathalos” will only result in results for Rathalos’ entry and not both Rathalos and Azure Rathalos.</p>
<p>Below is the code for the search: </p>

    const tableRows = Array.from(document.getElementsByTagName("tr"));
    tableRows.shift(); /* To remove the header from the list */

    const searchBox = document.getElementById('searchBox');
    searchBox.addEventListener('keypress', function(event) {
        if (event.key == "Enter") {
            searchMonster();
        }
    });

    function searchMonster() {
        const searchQuery = searchBox.value.trim().toLowerCase();

        if (searchQuery == "") {
            tableRows.forEach(element => {
                element.style.display = "table-row";
            });
        } else {
            tableRows.forEach(element => {
                if (element.id == searchQuery) {
                    element.style.display = "table-row"; 
                } else {
                    element.style.display = "none"; 
                }
            });
        }
    }

<p>Before describing the code onscreen, it should be mentioned that all table rows for monsters have an id equal to the monster’s name lowercased.</p>
<p>When the page is loaded, all the table’s rows are fetched into an array. Afterwards, the first element is removed from it because the first row is the title row (it displays the attribute names).</p>
<p>It then attaches a event listener to the search box. This listener listens for keypresses. When the enter key is pressed, it will run the search function, searchMonster(). This is so the text box for the keyword can run the search on enter.</p>
<p>Not shown here, but in the html, the button next to the search box has an onClick property that refers to the searchMonster() function as well. 
searchMonster() works by first trimming and lowercasing the value of the search box. Afterwards, it will check if the query is empty. If the query is empty, it sets all entries to visible. If the query is not empty, it will iterate over every element. In this iteration, it sets all rows where the element id is equal to the search query to visible while setting all rows where the element id is not equal to the search query to hidden.</p>

<h3>Description of Pages</h3>
<h4>Home Page:</h4>

![Screenshot 2024-04-26 220939](https://github.com/rarainey/final-project-3081/assets/143568348/53e80fe1-b620-4bc2-9176-0337dd8fbe5f)
<p>The home page is simple; it has two links, one for each index page.</p>

<h4>Monster Page:</h4>

 ![Screenshot 2024-04-26 221040](https://github.com/rarainey/final-project-3081/assets/143568348/8b5ed9a5-d862-4bdb-b018-2e32eee95d0e)
<p>The Monsters Page displays information about each monster. It presents the user with an image from the game, their name, their description, their type, weaknesses, element, rank, and if their tail is severable. It has 36 entries.</p>
<p>•	The icon, name, description, and type are straight from the database. No alterations were made in their display.</p>
<p>•	The weaknesses and element take the value from the database and convert them into the elements’ respective icons. For example, if a monster’s weaknesses were [“Fire”, “Water”], the column would have an image of fire and water. In the case of the “element” column, if they have no elemental attacks, the icon is simply an “X”. </p>
<p>•	The rank column takes the numerical value from the rank attribute and converts them into that many stars. For example, a rank 9 monster would have 9 stars. </p>
<p>•	The tail severable column, instead of displaying true and false, displays a check mark if their tail can be cut off and an x mark if it cannot. </p>
<p>The monster page also has the client-side feature. In this case, it is the search button. </p>
<p>•	Typing anything into the search bar will search for the monster by name. It is an exact match (case-insensitive and leading/trailing whitespace insensitive). If the name is not found, all entries will be blank. No results will be shown. If the name is found, only that entry will be shown. Only one will ever be shown on search since each monster has a unique name.</p> 
<p>•	Typing nothing into the search bar and submitting will simply display all the monsters again. </p>
<p>Finally, the back button takes the user back to the home page.</p>

<h4>Weapon Page:</h4> 

 ![Screenshot 2024-04-26 222056](https://github.com/rarainey/final-project-3081/assets/143568348/045404b6-0070-4612-a358-1eea5281db8d)
<p>The Weapons Page displays information about each weapon. It presents the user with an icon of the weapon, the weapon’s name, attack damage, type, rarity, and its element properties. It has 14 entries, one for each weapon type (unlike the Monsters class, this does not include every single weapon in the game). </p>
<p>•	The icon, in this case, is taken from the weapon type, and is not attached to weapons themselves. For example, if two greatsword-type entries existed they would both have the same icon. </p>
<p>•	The name, attack, type, and rarity are displayed as they are in the database. They have no changes in their data in display. </p>
<p>•	The Elemental? Column displays the Boolean from the database for is_elemental. If it is true, it displays a checkmark. If it is false, it displays an “X”. </p>
<p>•	Element and Element Attack columns’ data both depend on Elemental? (like the database). Like the Monsters table, the Element is converted into its symbol. It is an “X” if not applicable. The Element Attack column displays the integer that is stored unless it is nil, in which it displays an “X”.</p>
<p>The back button takes the user back to the home page.</p>
<p>Because the Monsters Index Page has the client-side feature and since I did not implement server-side features, the Weapons Page has no unique features.</p> 

<h3>HTML</h3>
<p>All three pages share the same styling. This styling can be found in the application.css file.</p>
<p>The two index pages are very similar in display, both using tables to display the entries. No Boostrap was used. </p>
<p>The HTML itself is organized into two parts on both pages: the header and the table. The header contains the object name (Monsters or Weapons) and the search bar (only for Monsters index). The tables use ruby on rails’ .each function to iterate over the Monsters or Weapons to create the rows dynamically. Each row has an ID of the item’s name lowercased (especially important for keyword search on Monsters page).</p> 

<h3>Icon Guide</h3>
<p>In the case that you want to cross-reference the database with the icons displayed in the Monsters or Weapons page, I labeled each icon:</p>
<p>Dragon</p>

![dragon](https://github.com/rarainey/final-project-3081/assets/143568348/3a6ea534-3a7e-46d1-a968-4b67006fe929)
<p>Ice</p>

![ice](https://github.com/rarainey/final-project-3081/assets/143568348/37fb112c-a76d-4a4d-a4df-801b5b13bb7c)
<p>Thunder</p>

![thunder](https://github.com/rarainey/final-project-3081/assets/143568348/2ff0cee5-e808-4491-8d3e-94da6fd1c77d)
<p>Water</p>

![water](https://github.com/rarainey/final-project-3081/assets/143568348/0b0fbc0f-a17c-4415-9968-8cd021e60279)
<p>Fire</p>

![fire](https://github.com/rarainey/final-project-3081/assets/143568348/44e020e6-7d28-4309-b5c8-2714ce33fe77)

<h2>Challenges:</h2>

![Screenshot 2024-04-26 230306](https://github.com/rarainey/final-project-3081/assets/143568348/e2848c5d-8044-4993-8412-b02967fd733a)
![Screenshot 2024-04-26 230320](https://github.com/rarainey/final-project-3081/assets/143568348/cb2c16aa-f272-47b8-b968-f0a2ed0fa17e)
![Screenshot 2024-04-26 230337](https://github.com/rarainey/final-project-3081/assets/143568348/233191cb-e43c-4ee9-b97d-d6d96a4f1fd8)



