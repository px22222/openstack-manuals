.. _content-specs:

=====================
Content specification
=====================

Blueprints and specifications
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The Documentation team uses specifications in the `docs-specs repository
<https://git.openstack.org/cgit/openstack/docs-specs>`_ to maintain large
changes. Approved specifications are published at `Documentation Program
Specifications <https://specs.openstack.org/openstack/docs-specs>`_.
For tracking purposes, a blueprint is created for each specification. It is
also good practice to contact the specialty team for the book you want to
change to discuss your changes before starting work.

Use blueprints and specifications:

* When adding large sections to an existing document to ensure involvement
  of the docs core team.
* When adding an entirely new deliverable to the docs project.
* For any work that requires both content and tooling changes, such as
  addition of the API reference site.
* For any large reorganization of a deliverable or set of deliverables.
* For automation work that needs to be designed prior to proposing a patch.
* For work that should definitely be discussed at a summit.

A specification needs two +2 votes from the docs-specs-core team.
See the current list of `docs-specs core team
<https://review.openstack.org/#/admin/groups/384,members>`_.

Use bugs against openstack-manuals or openstack-api-site:

* For known content issues, even if you have to do multiple patches to close
  the bug.
* To add content that is just missing.
* For known errors in a document.

For more information, see :ref:`doc_bugs`.

Release-specific documentation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Release-specific documentation is published continuously as changes are
made, with different versions for each series. The following guides
are release specific:

* Configuration reference
* Command-line reference
* Installation tutorials and guides
* Networking guide

To patch release-specific documentation, you should
patch the master branch with "backport: xxxx" (for example, backport:
kilo) in the commit message. During Pike, much of the material
maintained by the documentation team was moved into project team
repositories, so patching the same content for different release
series may mean looking for the relevant files in multiple places.

For these guides, the docs.openstack.org site defaults to the current release,
with the previous two releases being available under the ``More Releases
& Languages`` drop-down. At release time, the documentation release team
will update the default page to the new release, and remove the link to
the oldest release. These docs are still available online for people who
have direct URLs to the content, but they are no longer linked from the
main site. For books written in DocBook XML, these old versions are clearly
marked with the release name in red down the left-hand margin. We are
currently developing a similar method of marking older books written in RST.
The core team tracks usage of older versions, and as usage falls, can
remove them entirely.

Installation Tutorials and Guides
---------------------------------

Starting with Pike, the OpenStack Installation Tutorials and Guides
are maintained by the project teams, with assistance from the
documentation team. The guides describe a manual install process for
multiple distributions based on openSUSE and SUSE Linux Enterprise
Server; Red Hat Enterprise Linux and CentOS; and Ubuntu 16.04 (LTS).

Prior to Pike, the documentation team maintained OpenStack
Installation Tutorials and Guides:

.. list-table::
   :header-rows: 1

   * - Document
     - Source location
     - Target location

   * - Installation Tutorial for openSUSE and SUSE Linux Enterprise Server
     - https://git.openstack.org/cgit/openstack/openstack-manuals/tree/doc/install-guide
     - https://docs.openstack.org/ocata/install-guide-obs/

   * - Installation Tutorial for Red Hat Enterprise Linux and CentOS
     - https://git.openstack.org/cgit/openstack/openstack-manuals/tree/doc/install-guide
     - https://docs.openstack.org/ocata/install-guide-rdo/

   * - Installation Tutorial for Ubuntu 16.04 (LTS)
     - https://git.openstack.org/cgit/openstack/openstack-manuals/tree/doc/install-guide
     - https://docs.openstack.org/ocata/install-guide-ubuntu/

   * - Installation Tutorial For Debian With Debconf (is not provided for Ocata)
     - https://git.openstack.org/cgit/openstack/openstack-manuals/tree/doc/install-guide
     - https://docs.openstack.org/newton/install-guide-debconf/

   * - Installation Tutorial For Debian (is not provided for Ocata)
     - https://git.openstack.org/cgit/openstack/openstack-manuals/tree/doc/install-guide
     - https://docs.openstack.org/newton/install-guide-debian/

Guides for deployers and administrators
---------------------------------------

Starting with Pike, configuration reference and administrator guides
are maintained by each project team.

Prior to Pike, the documentation team maintained combined guides:

* `OpenStack Configuration Reference
  <https://docs.openstack.org/ocata/config-reference/>`_:
  Contains a reference listing of all configuration options for OpenStack
  services by release version.
* `OpenStack Networking Guide
  <https://docs.openstack.org/ocata/networking-guide/>`_:
  This guide targets OpenStack administrators seeking to deploy and manage
  OpenStack Networking (neutron).

.. list-table::
   :header-rows: 1

   * - Document
     - Source location
     - Target location

   * - Configuration Reference
     - https://git.openstack.org/cgit/openstack/openstack-manuals/tree/doc/config-reference
     - https://docs.openstack.org/ocata/config-reference/

   * - OpenStack Networking Guide
     - https://git.openstack.org/cgit/openstack/openstack-manuals/tree/doc/networking-guide
     - https://docs.openstack.org/ocata/networking-guide/

Continuously released documentation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

These guides cover multiple versions and we follow the general
`release information <https://wiki.openstack.org/wiki/Releases>`_.
The guides cover the latest two versions, for
example Juno and Kilo. The following exceptions apply:

* Operations Guide: Icehouse target, revised specifically to target that
  release
* HA Guide: Updated last at Havana timeframe, still needs updates

Guides for deployers and administrators
---------------------------------------

* `OpenStack Architecture Design Guide
  <https://docs.openstack.org/arch-design/>`_:
  Contains information on how to plan, design and architect
  an OpenStack cloud.
* `OpenStack Administrator Guide <https://docs.openstack.org/admin-guide/>`_:
  Contains how-to information for managing an OpenStack cloud as needed for
  your use cases, such as storage, computing, or software-defined-networking.
* `OpenStack High Availability Guide <https://docs.openstack.org/ha-guide/>`_:
  Describes potential strategies for making your OpenStack services and
  related controllers and data stores highly available.
* `OpenStack Security Guide <https://docs.openstack.org/security-guide/>`_:
  Provide best practices and conceptual
  information about securing an OpenStack cloud.
* `OpenStack Virtual Machine Image Guide
  <https://docs.openstack.org/image-guide/>`_:
  Shows you how to obtain, create, and modify virtual machine images that
  are compatible with OpenStack.

.. list-table::
   :header-rows: 1

   * - Document
     - Source location
     - Target location

   * - OpenStack Architecture Design Guide
     - https://git.openstack.org/cgit/openstack/openstack-manuals/tree/doc/arch-design
     - https://docs.openstack.org/arch-design/

   * - OpenStack Administrator Guide
     - https://git.openstack.org/cgit/openstack/openstack-manuals/tree/doc/admin-guide
     - https://docs.openstack.org/admin-guide/

   * - OpenStack High Availability Guide
     - https://git.openstack.org/cgit/openstack/openstack-manuals/tree/doc/ha-guide
     - https://docs.openstack.org/ha-guide/

   * - OpenStack Security Guide
     - https://git.openstack.org/cgit/openstack/security-doc/tree/security-guide
     - https://docs.openstack.org/security-guide/

   * - OpenStack Virtual Machine Image Guide
     - https://git.openstack.org/cgit/openstack/openstack-manuals/tree/doc/image-guide
     - https://docs.openstack.org/image-guide/

Guides for end users
--------------------

* `OpenStack End User Guide <https://docs.openstack.org/user-guide/>`_:
  Shows OpenStack end users how to create and manage resources in an
  OpenStack cloud with the OpenStack dashboard and OpenStack client commands.
* `OpenStack API Guide
  <https://developer.openstack.org/api-guide/quick-start/>`_:
  A brief overview of how to send REST API requests to endpoints for
  OpenStack services.
* `OpenStack Command-Line Interface Reference
  <https://docs.openstack.org/cli-reference/>`_:
  Automatically generates help text for CLI commands and subcommands.

.. list-table::
   :header-rows: 1

   * - Document
     - Source location
     - Target location

   * - OpenStack End User Guide
     - https://git.openstack.org/cgit/openstack/openstack-manuals/tree/doc/user-guide
     - https://docs.openstack.org/user-guide/

   * - OpenStack API Guide
     - https://git.openstack.org/cgit/openstack/api-site/tree/api-quick-start
     - https://developer.openstack.org/api-guide/quick-start/

   * - OpenStack Command-Line Interface Reference
     - https://git.openstack.org/cgit/openstack/openstack-manuals/tree/doc/cli-reference
     - https://docs.openstack.org/cli-reference/

API documentation
-----------------

* `Complete API Reference <https://developer.openstack.org/api-guide/quick-start/index.html>`_:
  Complete reference listing of OpenStack REST APIs
  with example requests and responses.
* `API specifications <http://specs.openstack.org/>`_:
  Within project's specification repos, some have opted
  to document API specifications, such as Identity.
* `Object Storage API v1
  <https://docs.openstack.org/developer/swift/#object-storage-v1-rest-api-documentation>`_

We are migrating away from WADL in 2016. Refer to :ref:`api-docs` for details.
Once the migration is complete, the API reference pages will be stored in the
project repositories and we will have redirects in place for these API pages.

Project-specific guides
-----------------------

Each project maintains its own guides for installation,
administration, configuration reference, and contributors.  They are
published from each project repository.  See
https://docs.openstack.org/openstack-projects.html and
https://docs.openstack.org/language-bindings.html.

Each project's repo has a ``doc/source`` directory where RST source
files are stored. They are built automatically with Sphinx when the
patch is merged. For example, see
https://git.openstack.org/cgit/openstack/horizon/tree/doc/source for
the horizon documentation source and
https://docs.openstack.org/horizon/ for the built documentation.

* `Infrastructure User Manual <https://docs.openstack.org/infra/manual>`_:
  Reference documentation for tools and processes used for all
  contributors to OpenStack projects. It includes instructions on how
  to create all the necessary accounts, setup development environment,
  use gerrit review workflow. The manual also covers more
  advanced topics, like how to create new git repositories. The manual is
  maintained by the OpenStack Infrastructure team.

.. list-table::
   :header-rows: 1

   * - Document
     - Source location
     - Target location

   * - Documentation Contributor Guide
     - https://git.openstack.org/cgit/openstack/openstack-manuals/tree/doc/contributor-guide
     - https://docs.openstack.org/contributor-guide/

   * - Python Developer Documentation
     - https://git.openstack.org/cgit/openstack/<project>/tree/master/doc/source/,
       such as https://git.openstack.org/cgit/openstack/nova/tree/doc/source
     - https://docs.openstack.org/openstack-projects.html

   * - Language Bindings and Python Clients
     - https://git.openstack.org/cgit/openstack/python-<project>client/tree/master/doc/source/,
       such as https://git.openstack.org/cgit/openstack/python-novaclient/tree/doc/source
     - https://docs.openstack.org/language-bindings.html

   * - OpenStack Project Infrastructure
     - https://git.openstack.org/cgit/openstack-infra/system-config/tree/doc/source
     - https://docs.openstack.org/infra/system-config/

   * - Tempest Testing Project
     - https://git.openstack.org/cgit/openstack/tempest/tree/doc/source
     - https://docs.openstack.org/tempest/latest/

Guides for contributors
-----------------------


Licenses
~~~~~~~~

This section shows the license indicators as of March 20, 2015.

* OpenStack Architecture Design Guide: Apache 2.0 and CC-by-sa 3.0
* OpenStack Administrator Guide: Apache 2.0 and CC-by-sa 3.0

* OpenStack Install Guides (all): Apache 2.0
* OpenStack High Availability Guide: Apache 2.0
* OpenStack Configuration Reference: Apache 2.0
* OpenStack Networking Guide: Apache 2.0

* OpenStack Security Guide: CC-by 3.0
* Virtual Machine Image Guide: CC-by 3.0
* OpenStack Operations Guide: CC-by 3.0
* OpenStack End User Guide: CC-by 3.0
* Command-Line Interface Reference: CC-by 3.0

* Contributor dev docs (docs.openstack.org/developer/<projectname>): none
  indicated in output; Apache 2.0 in repo
* OpenStack API Quick Start: none indicated in output; Apache 2.0 in repo
* API Complete Reference: none indicated in output; Apache 2.0 in repo

* Infrastructure User Manual: none indicated in output; CC-by 3.0 in repo

What to do to make more consistent output:

* OpenStack Architecture Design Guide: Apache 2.0 and CC-by 3.0
* OpenStack Administrator Guide: Apache 2.0 and CC-by 3.0
* OpenStack Install Guides (all): Apache 2.0 and CC-by 3.0
* OpenStack High Availability Guide: Apache 2.0 and CC-by 3.0
* OpenStack Security Guide: CC-by 3.0
* Virtual Machine Image Guide: CC-by 3.0
* OpenStack Operations Guide: CC-by 3.0
* OpenStack End User Guide: CC-by 3.0

These guides are created by "scraping" code:

* OpenStack Configuration Reference: Apache 2.0 and CC-by 3.0
* Command-Line Interface Reference: Apache 2.0 and CC-by 3.0

These guides have no indicator in output:

* Contributor dev docs (docs.openstack.org/developer/<projectname>): none
  indicated in output; Apache 2.0 in repo
* OpenStack API Quick Start: none indicated in output; Apache 2.0 in repo
* API Complete Reference: none indicated in output; Apache 2.0 in repo

This guide has a review in place to get a license indicator in output:

* Infrastructure User Manual: none indicated in output; CC-by 3.0 in repo
