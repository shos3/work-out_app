'use strict';
window.addEventListener('DOMContentLoaded', ()=>{
const stopwatch = document.getElementById('stopwatch');
const start = document.getElementById('start');
const reset = document.getElementById('reset');

let state = 'start';
let timerId;
let elapsedMs = 0;

function timeToString(millis) {
    const ms = millis % 1000;
    const s = Math.floor(millis / 1000) % 60;
    const m = Math.floor(millis / 1000 / 60) % 60;

    const formattedMs = ms.toString().padStart(3, '0');
    const formattedS = s.toString().padStart(2, '0');
    const formattedM = m.toString().padStart(2, '0');

    return `${formattedM}:${formattedS}.${formattedMs}`;
}

start.addEventListener('click', () => {
    if (state === 'start') {
        state = 'stop';
        start.textContent = 'ストップ';
        start.classList.add('stop');

        let startMs = Date.now();
        startMs -= elapsedMs;

        timerId = setInterval(() => {
            const nowMs = Date.now();
            elapsedMs = nowMs - startMs;
    
            stopwatch.textContent = timeToString(elapsedMs);
        }, 10);
    } else { 
        state = 'start';
        clearInterval(timerId);
        start.textContent = 'リスタート';
        start.classList.remove('stop');

    }
});

reset.addEventListener('click', () => {
    state = 'start';
    clearInterval(timerId);
    start.textContent = 'スタート';
    start.classList.remove('stop');
    elapsedMs = 0;
    stopwatch.textContent = '00:00.000';
});
});