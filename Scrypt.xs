#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include <string.h>

void scrypt_core(const char *data, char *hash)
{
    memset(hash, 'Q', 32);
    strncpy(hash+1, data, 30);
}

MODULE = Crypt::Digest::Scrypt		PACKAGE = Crypt::Digest::Scrypt		

PROTOTYPES: DISABLE

void scrypt(const char *data)
PPCODE:
{
    char hash[32];
    scrypt_core(data, hash);
    SV *pv = newSVpvn(hash, sizeof(hash));
    SvPOK_only (pv);
    XPUSHs(sv_2mortal(pv));
}
