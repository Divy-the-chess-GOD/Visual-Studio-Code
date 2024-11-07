<html>
<head>
<title>Random Number Generator</title>
<style>
body {
  background-color: #f0f0f0;
  font-family: sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  margin: 0;
}

.container {
  background-color: #fff;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  text-align: center;
}

#randomNumber {
  font-size: 3em;
  margin-bottom: 20px;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

input[type="number"] {
  width: 100px;
  padding: 5px;
  margin: 10px 0;
  border: 1px solid #ccc;
  border-radius: 3px;
}
</style>
</head>
<body>
<div class="container">
  <label for="minNumber">Minimum Number:</label>
  <input type="number" id="minNumber" value="1">
  <label for="maxNumber">Maximum Number:</label>
  <input type="number" id="maxNumber" value="100">
  <div id="randomNumber"></div>
  <button id="generateButton">Generate Random Number</button>
</div>

<script>
  const randomNumberDisplay = document.getElementById('randomNumber');
  const generateButton = document.getElementById('generateButton');
  const minNumberInput = document.getElementById('minNumber');
  const maxNumberInput = document.getElementById('maxNumber');

  generateButton.addEventListener('click', () => {
    const minNumber = parseInt(minNumberInput.value);
    const maxNumber = parseInt(maxNumberInput.value);

    const randomNum = Math.floor(Math.random() * (maxNumber - minNumber + 1)) + minNumber;
    randomNumberDisplay.textContent = randomNum;
  });
</script>
</body>
</html>