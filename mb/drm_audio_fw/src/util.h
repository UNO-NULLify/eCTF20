#ifndef UTIL_H
#define UTIL_H
#include "drm.h"
#include "xaxidma.h"
#include "xintc.h"

#define MB_PROMPT "\r\nMB> "

// LED colors and controller
struct color {
  u32 r;
  u32 g;
  u32 b;
};

void enableLED(u32 *led);
void setLED(u32 *led, struct color c);
int SetUpInterruptSystem(XIntc *XIntcInstancePtr, XInterruptHandler hdlr);
u32 fnAudioPlay(XAxiDma AxiDma, u32 offset, u32 u32NrSamples);
XStatus fnConfigDma(XAxiDma *AxiDma);

#endif
