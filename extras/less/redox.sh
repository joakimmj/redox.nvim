# redox — less / man (LESS_TERMCAP) theme (dark)
# 24-bit truecolor. Source from your shell rc:
#   source /path/to/extras/less/redox.sh
#
# GROFF_NO_SGR forces groff to emit overstrike instead of ANSI/SGR, so that
# `less` recolors it via the LESS_TERMCAP_* vars below. Without it, groff
# writes its own colors directly and LESS_TERMCAP is ignored.

export GROFF_NO_SGR=1                                        # groff overstrike -> LESS_TERMCAP honored
export LESS_TERMCAP_mb=$'\e[38;2;227;163;111m'               # blink     -> orange   #E3A36F
export LESS_TERMCAP_md=$'\e[1;38;2;205;139;100m'             # bold      -> rust     #CD8B64
export LESS_TERMCAP_me=$'\e[0m'                              # reset
export LESS_TERMCAP_se=$'\e[0m'                              # end standout
export LESS_TERMCAP_so=$'\e[38;2;214;195;138;48;2;63;74;74m' # standout  -> amber on selection #D6C38A/#3F4A4A
export LESS_TERMCAP_ue=$'\e[0m'                              # end underline
export LESS_TERMCAP_us=$'\e[4;38;2;126;193;174m'             # underline -> teal     #7EC1AE
export LESS_TERMCAP_mr=$'\e[7m'                              # reverse
export LESS_TERMCAP_mh=$'\e[2m'                              # dim
