// <script  src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/plugins/CSSPlugin.min.js"/>
//     <script  src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/easing/EasePack.min.js"/>
//     <script  src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenLite.min.js"/>
console.clear();

const $button = document.querySelector('.button_reset');

$button.addEventListener('click', function(event) {
    const rect = $button.getBoundingClientRect(),
        x = event.clientX - rect.left,
        y = event.clientY - rect.top;

    const $feedback = $button.querySelector('.feedback');

    TweenMax.set($feedback, {x: x, y: y, scaleX: 0, scaleY: 0, opacity: 1});
    TweenMax.to($feedback, 1.5, {scaleX: 1, scaleY: 1, opacity: 0, ease: Expo.easeOut});
});