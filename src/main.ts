import "./style.css";
import Main from "./Main.elm";

const storageKey = "menja-fikad";

const app = Main.init({
  node: document.getElementById("app"),
  flags: JSON.parse(localStorage.getItem(storageKey) ?? "null"),
});

app.ports.save.subscribe((state) => {
  localStorage.setItem(storageKey, JSON.stringify(state));
});

type Note = [frequency: number, start: number, length: number];

const sounds: Record<string, { wave: OscillatorType; notes: Note[] }> = {
  correct: { wave: "sine", notes: [[660, 0, 0.12], [990, 0.1, 0.22]] },
  wrong: { wave: "triangle", notes: [[233, 0, 0.16], [175, 0.14, 0.3]] },
  passed: { wave: "sine", notes: [[523, 0, 0.14], [659, 0.12, 0.14], [784, 0.24, 0.14], [1047, 0.36, 0.45]] },
  town: { wave: "sine", notes: [[784, 0, 0.1], [784, 0.12, 0.1], [1047, 0.24, 0.35]] },
  failed: { wave: "triangle", notes: [[392, 0, 0.2], [330, 0.2, 0.2], [262, 0.4, 0.5]] },
};

let audio: AudioContext | undefined;

app.ports.playSound.subscribe((name) => {
  const sound = sounds[name];
  if (!sound) return;
  audio ??= new AudioContext();
  const now = audio.currentTime;
  for (const [frequency, start, length] of sound.notes) {
    const oscillator = audio.createOscillator();
    const gain = audio.createGain();
    oscillator.type = sound.wave;
    oscillator.frequency.value = frequency;
    gain.gain.setValueAtTime(0.0001, now + start);
    gain.gain.exponentialRampToValueAtTime(0.25, now + start + 0.02);
    gain.gain.exponentialRampToValueAtTime(0.0001, now + start + length);
    oscillator.connect(gain).connect(audio.destination);
    oscillator.start(now + start);
    oscillator.stop(now + start + length);
  }
});

if (import.meta.env.PROD && "serviceWorker" in navigator) {
  navigator.serviceWorker.register("/sw.js");
}
