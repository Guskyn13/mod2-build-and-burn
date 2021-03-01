const searchParams = new URLSearchParams(window.location.search)
const id = searchParams.get("id")

const $characterInfo = document.querySelector('#character-info')

fetch(`http://localhost:3000/characters/${id}`)
  .then(response => response.json())
  .then(character => displayCharacter(character))

function displayCharacter(character){
  const $characterName = document.createElement('h2')
  const $characterAge = document.createElement('h3')
  const $characterGame = document.createElement('h3')

  $characterName.textContent = character.name 
  $characterAge.textContent = `Age: ${character.age}`
  $characterGame.textContent = `Game: ${character.game.name}`
  console.log(character)

  $characterInfo.append($characterName, $characterAge, $characterGame)
}