const $gameSection = document.querySelector('#game-section')

fetch("http://localhost:3000/games")
  .then(response => response.json())
  .then(games => handleGames(games))

function handleGames(games){
  games.forEach(game => showGame(game))
}

function showGame(game){
  const $gameCard = document.createElement('div')
  const $gameName = document.createElement('h2')
  const $gameRating = document.createElement('h3')
  const $gameImage = document.createElement('img')

  $gameCard.className = "game-card"
  $gameCard.id = `game-card-${game.id}`
  $gameName.textContent = game.name
  $gameRating.textContent = game.rating 
  $gameImage.src = game.image 

  $gameCard.append($gameName, $gameRating, $gameImage)
  $gameSection.append($gameCard)

  showCharacters(game)
}

function showCharacters(game){
  const $gameCard = document.querySelector(`#game-card-${game.id}`)
  const $characterList = document.createElement('ul')
  game.characters.forEach(character => {
    const $character = document.createElement('li')
    $character.innerHTML =  `<a href='showCharacter.html?id=${character.id}'>${character.name}</a>`
    $characterList.append($character)
  }) 

  $gameCard.append($characterList)
}