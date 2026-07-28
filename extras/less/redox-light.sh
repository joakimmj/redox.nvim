# redox — less / man (LESS_TERMCAP) theme (light)
# 24-bit truecolor. Source from your shell rc:
#   source /path/to/extras/less/redox-light.sh
#
# GROFF_NO_SGR forces groff to emit overstrike instead of ANSI/SGR, so that
# `less` recolors it via the LESS_TERMCAP_* vars below. Without it, groff
# writes its own colors directly and LESS_TERMCAP is ignored.

export GROFF_NO_SGR=1                                        # groff overstrike -> LESS_TERMCAP honored
export LESS_TERMCAP_mb=$'\e[38;2;138;79;24m'                 # blink     -> orange   #8A4F18
export LESS_TERMCAP_md=$'\e[1;38;2;139;72;32m'               # bold      -> rust     #8B4820
export LESS_TERMCAP_me=$'\e[0m'                              # reset
export LESS_TERMCAP_se=$'\e[0m'                              # end standout
export LESS_TERMCAP_so=$'\e[38;2;28;43;41;48;2;178;196;191m' # standout  -> fg on selection #1C2B29/#B2C4BF
export LESS_TERMCAP_ue=$'\e[0m'                              # end underline
export LESS_TERMCAP_us=$'\e[4;38;2;36;112;104m'              # underline -> teal     #247068
export LESS_TERMCAP_mr=$'\e[7m'                              # reverse
export LESS_TERMCAP_mh=$'\e[2m'                              # dim
