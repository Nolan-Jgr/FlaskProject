var gameNum = 0;
function setGameNum(vars){
    gameNum = vars;
    console.log(gameNum);
    // If the html page doesnt have a title element nothing will happen
    if(document.getElementById("GameTitle") == null)
    {
        return;
    }
    // if the html page does have a title element that title will be changed based on
    // the game selected. The title will also be styled
    else{
        var title = document.getElementById("GameTitle");
        if(gameNum == 1){
            title.innerHTML = "LEGO STAR WARS";
            title.style.background = 'linear-gradient(-45deg, #808080, white,#808080)';
            title.style['-webkit-background-clip'] = 'text';
            title.style['-webkit-text-fill-color'] = 'transparent';
        }
        else if(gameNum == 2){
            title.innerHTML = "LEGO DC VILLIANS";
            title.style.background = 'linear-gradient(-45deg, purple, green, purple)';
            title.style['-webkit-background-clip'] = 'text';
            title.style['-webkit-text-fill-color'] = 'transparent';
        }
        else if(gameNum == 3){
            title.innerHTML = "LEGO MARVEL SUPERHEROES";
            title.style.background = 'linear-gradient(-45deg, red, white, red)';
            title.style['-webkit-background-clip'] = 'text';
            title.style['-webkit-text-fill-color'] = 'transparent';
        }
        else{
            return;
        }
    }
}
// sets the icon div elements to the appropriate image
// adds an event listener for when the user drags the mouse over the image the appropriate name of 
// that character is displayed
function setIcons(data,data2){
    data = data.slice(1,-1);
    data = data.replaceAll(" ", "");
    data = data.replaceAll('"', "");
    data = data.split(',');
    data2 = data2.slice(1,-1);
    // data2 = data2.replaceAll(" ", "");
    data2 = data2.replaceAll('"', "");
    data2 = data2.split(',');
    console.log(data);
    console.log(data2);
    var Name = document.getElementById("CharacterName");

    if(document.getElementById("GameTitle") == null){
        return;
    }
    else{
        var top = document.getElementById('topRow').getElementsByTagName('div');
        for(let i=0; i < top.length;i++){
            
            top[i].style.backgroundImage = "url(static/CharIcons/" + data[i] + ")";
            top[i].title = data2[i];
            top[i].addEventListener("mouseover", (event)=>{Name.innerHTML = top[i].title});
            top[i].addEventListener("mouseout", (event)=>{Name.innerHTML = ""});

        }
        for(let i=0; i < top.length;i++){
             data.shift();
             data2.shift();
        }
        
        var bot = document.getElementById('botRow').getElementsByTagName('div');
        for(let i=0; i < bot.length;i++){
            bot[i].style.backgroundImage = "url(static/CharIcons/" + data[i] + ")";
            bot[i].title = data2[i];
            bot[i].addEventListener("mouseover", (event)=>{Name.innerHTML = bot[i].title});
            bot[i].addEventListener("mouseout", (event)=>{Name.innerHTML = ""});
        }
        for(let i=0; i < bot.length;i++){
             data.shift();
             data2.shift();
        } 
    }
}
