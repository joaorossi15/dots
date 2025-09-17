static const char norm_fg[] = "#e3e4c8";
static const char norm_bg[] = "#1d1310";
static const char norm_border[] = "#9e9f8c";

static const char sel_fg[] = "#e3e4c8";
static const char sel_bg[] = "#A36E3D";
static const char sel_border[] = "#e3e4c8";

static const char urg_fg[] = "#e3e4c8";
static const char urg_bg[] = "#986128";
static const char urg_border[] = "#986128";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
