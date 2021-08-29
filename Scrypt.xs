#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

MODULE = Crypt::Digest::Scrypt		PACKAGE = Crypt::Digest::Scrypt		

PROTOTYPES: DISABLE

void scrypt(char *class, char *data)
PPCODE:
{
    HV *pv = newHV();
    SvPOK_only (pv);
    scrypt_core(pv, data);

    SV *Hash = sv_bless ( newRV_noinc ((SV *)pv), gv_stashpv (class, 1));
    XPUSHs(sv_2mortal(Hash));
}

