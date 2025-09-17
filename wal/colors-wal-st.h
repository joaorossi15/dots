const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#1d1310", /* black   */
  [1] = "#986128", /* red     */
  [2] = "#A36E3D", /* green   */
  [3] = "#728B58", /* yellow  */
  [4] = "#9F9961", /* blue    */
  [5] = "#D6AF45", /* magenta */
  [6] = "#B4BA91", /* cyan    */
  [7] = "#e3e4c8", /* white   */

  /* 8 bright colors */
  [8]  = "#9e9f8c",  /* black   */
  [9]  = "#986128",  /* red     */
  [10] = "#A36E3D", /* green   */
  [11] = "#728B58", /* yellow  */
  [12] = "#9F9961", /* blue    */
  [13] = "#D6AF45", /* magenta */
  [14] = "#B4BA91", /* cyan    */
  [15] = "#e3e4c8", /* white   */

  /* special colors */
  [256] = "#1d1310", /* background */
  [257] = "#e3e4c8", /* foreground */
  [258] = "#e3e4c8",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
