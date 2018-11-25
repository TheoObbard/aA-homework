document.addEventListener("DOMContentLoaded", function(){
  let hmm = document.getElementById('mycanvas');
  hmm.height = 500;
  hmm.width = 500;
  ctx = hmm.getContext('2d')

  ctx.fillStyle = 'red'
  ctx.fillRect(10, 100, 10, 10);

  ctx.beginPath();
  ctx.arc(350, 300, 100, 0, Math.PI * 2);
  ctx.strokeStyle = 'blue';
  ctx.lineWidth = 5;
  ctx.stroke();
});
