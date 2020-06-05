In image processing, histogram matching or histogram specification is the transformation of an image so that its histogram matches a specified histogram. The well-known histogram equalization method is a special case in which the specified histogram is uniformly distributed.

It is possible to use histogram matching to balance detector responses as a relative detector calibration technique. It can be used to normalize two images, when the images were acquired at the same local illumination (such as shadows) over the same location, but by different sensors, atmospheric conditions or global illumination

Here we want to convert the image so that it has a particular histogram that can be arbitrarily specified. Such a mapping function can be found in three steps:

Equalize the histogram of the input image
Equalize the specified histogram
Relate the two equalized histograms
