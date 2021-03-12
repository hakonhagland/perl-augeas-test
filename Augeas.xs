#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include <stdio.h>
#include <augeas.h>

MODULE = My::Augeas  PACKAGE = My::Augeas
PROTOTYPES: DISABLE

void
test_init()
  CODE:
    char *root = "augeas-root/";
    char *loadpath = NULL;
    unsigned int flags = AUG_ENABLE_SPAN| AUG_SAVE_NEWFILE;
    printf("flags = %u\n", flags);
    struct augeas *aug = aug_init(root, loadpath, flags);
    printf("result = %p\n", (void *) aug);
