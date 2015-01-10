# Deployment Keys

These deployment keys give read-only access to the Bitbucket repository
``git@bitbucket.org:498glasses/498glasses.git``.

## Configure read-only access to SensEye Bitbucket repository

The SSH private key **id_rsa__senseye_bitbucket_repo** is used to access the
SensEye repository. This private key grants the possessor read-only access to
the repository. The example SSH **config** file shows how this key can be used
to create the host ``senseye_bitbucket_repo`` for accessing the repository with
the correct SSH key.  To apply the configuration, add the contents of **config**
to your SSH configuration, copy the SSH key pair somewhere on your local machine
(such as the **.ssh** directory in your home directory) and modify the
``IdentityFile`` line to use the correct path to
**id_rsa__senseye_bitbucket_repo** (whereever you copied it).

Once the SSH configuration is finished, use ``senseye_bitbucket_repo`` instead
of ``bitbucket.org`` as the host when interacting with the repository.  For
example, to clone the repository, use the command: 

``git clone git@senseye_bitbucket_repo:498glasses/498glasses``

## Bitbucket's page on deployment keys

See <https://confluence.atlassian.com/display/BITBUCKET/Use+deployment+keys> for
Bitbucket's description of deployment keys.

## Moved to GitHub

SensEye can now be found on GitHub at <https://github.com/downbeat/senseye.git>.
The code is periodically still pushed to Bitbucket, but GitHub is now the
prefered git host for this repository.  The repository is read-only by default.
To clone, use the command:

``git clone https://github.com/downbeat/senseye.git``