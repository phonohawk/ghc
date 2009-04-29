# -----------------------------------------------------------------------------
#
# (c) 2009 The University of Glasgow
#
# This file is part of the GHC build system.
#
# To understand how the build system works and how to modify it, see
#      http://hackage.haskell.org/trac/ghc/wiki/Building/Architecture
#      http://hackage.haskell.org/trac/ghc/wiki/Building/Modifying
#
# -----------------------------------------------------------------------------

driver/split_PERL_SRC  = ghc-split.lprl
driver/split_dist_PROG = $(GHC_SPLIT_PGM)
driver/split_dist_LIBEXEC = YES

$(eval $(call build-perl,driver/split,dist))

INSTALL_LIBEXEC_SCRIPTS += driver/split/dist/$(GHC_SPLIT_PGM)