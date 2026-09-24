use strict;
use lib ".";
use xt::Run;
use Test::More;

# Module-Signature 0.94+ ships without a SIGNATURE file, so pin a signed release
run "--reinstall", "--verify", "TIMLEGGE/Module-Signature-0.93.tar.gz";
like last_build_log, qr/Verifying the SIGNATURE/;
like last_build_log, qr/Verified OK/;

done_testing;
