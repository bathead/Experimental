use_bpm 130

##| Drum
live_loop :kick do
  sample :bd_tek, amp: 0.5, cutoff: 80
  sleep 0.50
end

##| Snare
live_loop :snares do
  sleep 1
  sample :sn_dolf, amp: 2, start: 0.15, finish: 0.35, rate: 0.7
  sleep 1
end

##| Hi-Hats
live_loop :noise_hats do
  sync :kick
  with_fx :slicer do
    with_fx :hpf, cutoff: 110 do
      with_synth :noise do
        play :c1, decay: 1
      end
    end
  end
end

## Plucks
live_loop :pluck_note do
  sync :kick
  sleep 0.25
  32.times do
    with_synth :pluck do
      with_fx :slicer do
        with_fx :autotuner do
          sleep 0.25
          play :c, release: 0.75, amp: 0.45
        end
      end
    end
  end
end



##| Bassesss
live_loop :revbassline do
  sync :snares
  sleep 6
  4.times do
    with_fx :pan, pan: [-0.5, 0.5].choose do
      with_synth :fm do
        play :c1, attack: 0.5, divisor: 0.5, depth: 6
      end
    end
  end
end

live_loop :thick_bass do
  sleep 8
  sync :snares
  32.times do
    with_fx :slicer, smooth_down: 0.25 do
      sample :bass_thick_c, finish: 0.5
      sleep 0.5
    end
  end
end

live_loop :trance_bass do
  sync :thick_bass
  sleep 7.5
  16.times do
    with_fx :reverb do
      sample :bass_trance_c, finish: 0.2, cutoff: 100
      sleep 0.25
    end
  end
end



