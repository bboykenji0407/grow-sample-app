window.addEventListener('load' , () => {
  const pointInput = document.getElementById("point1");
  pointInput.addEventListener('input', () => {
    const inputValue = pointInput.Value;
    console.log(inputValue);
    const allScoreDom = document.getElementById("JsScore");
    allScoreDom.innerHTML = Math.floor(pointInput.Value);
    
    
    
  })

});

