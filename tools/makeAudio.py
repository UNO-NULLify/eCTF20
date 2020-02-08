# A sample script that generates a constant tone for test purposes

from pydub.generators import Sine
from pydub import AudioSegment
from pydub.playback import play
import os


SAMPLE_RATE = 44100
BIT_DEPTH = 16
DURATION = 726 * 1000  # duration is in milliseconds

"""
a function that makes a sample of a provisioned song

param: file_path: The file path to the provisioned song
param mil_sec: length of sample in milliseconds default 30,000 (30 sec) 
"""
def make_sample(file_path, milsec=30000):
    sample = AudioSegment.from_file(file_path, format="wav")
    f_name = file_path.split(".")[0]
    sample[0:milsec].export(f_name + "_sample.wav", format="wav")

if __name__ == "__main__":

    print("\nGenerating Test Audio")
    sound1 = Sine(440, sample_rate=SAMPLE_RATE, bit_depth=BIT_DEPTH)   # constant tone at 440hz
    sample1 = sound1.to_audio_segment(duration=DURATION)
    sound2 = Sine(440, sample_rate=SAMPLE_RATE, bit_depth=BIT_DEPTH)   # constant tone at 440hz
    sample2 = sound2.to_audio_segment(duration=DURATION)
    mix = AudioSegment.from_mono_audiosegments(sample1, sample2)
   
    mix.export(os.getcwd() + "/provision_test/test.wav", format="wav")
    print("Generating Sample")
    make_sample(os.getcwd() + "/provision_test/test.wav")
    #mix[0:30000].export(os.getcwd() + "/device/30_test.wav", format="wav")

    #play(sample)
