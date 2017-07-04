=========
 Preface
=========

Abstract
~~~~~~~~

The OpenStack system consists of several key services that are separately
installed. These services work together depending on your cloud
needs and include the Compute, Identity, Networking, Image, Block Storage,
Object Storage, Telemetry, Orchestration, and Database services. You
can install any of these projects separately and configure them stand-alone
or as connected entities.

Explanations of configuration options and sample configuration files
are included.

.. note::
   The Training Labs scripts provide an automated way of deploying the
   cluster described in this Installation Guide into VirtualBox or KVM
   VMs. You will need a desktop computer or a laptop with at least 8
   GB memory and 20 GB free storage running Linux, MaOS, or Windows.
   Please see the
   `OpenStack Training Labs <https://docs.openstack.org/training_labs/>`_.

This guide documents the OpenStack Ocata release.

.. warning::

   This guide is a work-in-progress and is subject to updates frequently.
   Pre-release packages have been used for testing, and some instructions
   may not work with final versions. Please help us make this guide better
   by reporting any errors you encounter.

Operating Systems
~~~~~~~~~~~~~~~~~

Debian
++++++

This guide walks through an installation by using packages
available through Debian 8 (code name: Jessie).

.. note::

   This guide uses installation with debconf set to non-interactive
   mode. That is, there will be no debconf prompt. To configure a computer
   to use this mode, run the following command:

   .. code-block:: console

      # dpkg-reconfigure debconf

   .. end

   If you prefer to use debconf, refer to the debconf
   install-guide for Debian.

openSUSE and SUSE Linux Enterprise Server
+++++++++++++++++++++++++++++++++++++++++

This guide will show you how to install OpenStack by using packages
on openSUSE Leap 42.2 and SUSE Linux Enterprise Server 12 - for
both SP1 and SP2 - through the Open Build Service Cloud repository.

Red Hat Enterprise Linux and CentOS
+++++++++++++++++++++++++++++++++++

This guide will show you how to install OpenStack by using packages
available on Red Hat Enterprise Linux 7 and its derivatives through
the RDO repository.

Ubuntu
++++++

This guide will walk through an installation by using packages
available through Canonical's Ubuntu Cloud archive repository for
Ubuntu 16.04 (LTS).
