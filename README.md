# De-noising-of-audio-signal
De-Noising of Audio Signal using MATLAB


## Introduction
Based on the fact that noise and distortion are the main factors that limit the capacity of
data transmission in telecommunications and that they also affect the accuracy of the
results in the signal measurement systems, whereas, modeling and removing noise and
distortions are at the core of theoretical and practical considerations in communications
and signal processing. Another important issue here is that, noise reduction and
distortion removal are major problems in applications such as; cellular mobile
communication, speech recognition, image processing, medical signal processing, radar,
sonar, and any other application where the desired signals cannot be isolated from noise
and distortion.

The use of wavelets in the field of de-noising audio signals is relatively new, the use of
this technique has been increasing over the past 20 years. One way to think about
wavelets matches the way how our eyes perceive the world when they are faced to
different distances. In the real world, a forest can be seen from many different
perspectives; they are, in fact, different scales of resolution. From the window of an
airplane, for instance, the forest cover appears as a solid green roof. From the window of
a car, the green roof gets transformed into individual trees, and if we leave the car and
approach to the forest, we can gradually see details such as the trees branches and
leaves. If we had a magnifying glass, we could see a dew drop on the tip of a leaf. As we
get closer to even smaller scales, we can discover details that we had not seen before.
On the other hand, if we tried to do the same thing with a photograph, we would be
completely frustrated. If we enlarged the picture "closer" to a tree, we would only be
able to see a blurred tree image; we would not be able to spot neither the branch, nor
the leaf, and it would be impossible to spot the dew drop. Although our eyes can see on
many scales of resolution, the camera can only display one at a time.

In this project, we introduce the reader to a way to reduce noise in an audio signal by
using wavelet transforms. We developed this technique by using the wavelet tool in
MATLAB. Firstly, an audio signal is recorded and added some Gaussian noise in it. Then
we use it to convert the signal to a digital format so it can be processed. Finally with the
help of wavelet transform original audio signal is obtained to certain extent.


## Algorithm
### FOR VOICE RECORDING
  1. Sampling Frequency, Fs=8000 Hz
  2. a=audiorecorder(Fs,8,1)
  3. Record for 5 seconds
     recordblocking(a,5)
  4. Save the recorded voice
     x=getaudiodata(a)
     filename = 'voice.wav'
     audiowrite(filename, x, Fs)
  5. Plot the voice signal in time and frequency domain

### FOR ADDING NOISE
  1. Read the file that has been saved
     [x,Fs] = audioread('voice.wav')
  2. Add Gaussian noise to the voice signal
     y = awgn(x,10,'measured')
  3. Save the noisy voice
     filename = 'noisyvoice.wav'
     audiowrite(filename, y, Fs)
  4. Plot the noisy signal along with the original signal and analyzing both.

### FOR NOISE REMOVAL
  1. Read the noisy signal
  2. Introduce wavelet and its specifications using which wavelet transform will occur
     wname = 'coif5';
     lev = 10;
     tree = wpdec(y,lev,wname);
     det1 = wpcoef(tree,2014);
     sigma = median(abs(det1))/0.6745;
     alpha = 1.8;
     thr = wpbmpen(tree,sigma,alpha)
     keepapp = 1;
     xd = wpdencmp(tree,'s','nobest',thr,keepapp);
     D=crosscorr(x,y);
     z=-20:1:20;
  3. Plot the resultant signal obtained after the wavelet transform operation.


## Conclusions
We provide a practical approach in how to put into practice wavelets in noisy audio data
to improve clarity and signal retrieval. Since there are no books that show the code for a
graphical interface with audio processing using wavelets, this chapter presents MATLAB
code to reduce the Gaussian white noise in periodic signals (sine function) and in audio
signals (composed of several frequencies) using wavelet analysis.

The project is successfully completed. The de-noised signal is obtained and it is found that
it is very much similar to the original signal. Thus, wavelet transform is a very nice
technique to obtain valuable data from a noisy signal.


## References
1. Wang C T& Wang H. G (2007). Speech enhancement using hybrid gain factor in
criticalband- wavelet-packet transform, Digital Signal Processing, Vol. 17, No. 1, pp: 172-
188. ISSN: 1051-2004.
2. Abbate A, Decusatis C. M, Das P. K. (2002). Wavelets and subbands: fundamentals and
applications, ISBN 0-8176-4136-X, Birkhauser, Boston, USA.
3. Bahoura M & Rouat J, (2006). Wavelet speech enhancement based on time–scale
adaptation, Speech Communication, Vol. 48, No. 12, pp: 1620-1637. ISSN: 0167-6393.
4. Davis, G, M, (2002). ‘Noise Reduction in Speech Applications, CRC Press LLC, ISBN 0-8493-
0949-2, USA.
