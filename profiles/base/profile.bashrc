rpi4_openfyde_base_stack_bashrc() {
  local cfg 

  cfgd="/mnt/host/source/src/overlays/overlay-rpi4-openfyde-base/${CATEGORY}/${PN}"
  for cfg in ${PN} ${P} ${PF} ; do
    cfg="${cfgd}/${cfg}.bashrc"
    [[ -f ${cfg} ]] && . "${cfg}"
  done

  export RPI4_OPENFYDE_BASE_BASHRC_FILEPATH="${cfgd}/files"
}

rpi4_openfyde_base_stack_bashrc
