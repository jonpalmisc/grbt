                            GitHub Repo Backup Tools

ABOUT

  This is a minimal set of scripts for maintaining a local "source depot"
  containing code from numerous GitHub users or organizations.

USAGE

  To back up a user or organization's repositories:

    $ ./backup-org {<user>|<org>}

  To create an archive of the local source depot:

    $ ./archive-depot

DEPENDENCIES

  Relies on GitHub's 'gh' CLI program [0]; install and authenticate before use.

  [1] https://cli.github.com

LICENSE

  Copyright (c) 2022 Jon Palmisciano

  Licensed under the BSD 3-Clause license; see 'LICENSE.txt' for details.
