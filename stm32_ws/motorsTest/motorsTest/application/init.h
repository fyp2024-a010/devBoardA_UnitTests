#ifndef __INIT_H__
#define __INIT_H__

#ifdef INIT_H_GLOBAL
#define INIT_H_EXTERN
#else
#define INIT_H_EXTERN extern
#endif

void hw_init();
void init_task();

#endif // __INIT_H__
