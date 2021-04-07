.. _outils:

.. meta::
   :description lang=fr: BUT R&T, Ressource CyberSécurité à BAC+3, Outils

Outils
======

.. admonition:: Outils de travail

	Parmi les outils de travail, on utilisera très largement un système d'exploitation Linux basé sur les distributions `Debian <https://www.debian.org/>`_, `Ubuntu <https://ubuntu.com/>`_, `Centos <https://www.centos.org/>`_, pour mettre en pratique les nombreux outils et techniques de CyberSécurité.
	
	La distribution Linux la plus avancée à ce jour dans ce domaine est `Kali`_ basée sur une distribution Debian.

	L'exécution d'OS (dont Kali par exemple|:wink:|) sur un poste de travail existant s'effectue facilement grâce à un hyperviseur (type 2), on parle alors de `Virtualisation`_.

	Le *couteau suisse* du domaine des réseaux informatiques est `Wireshark`_. C'est un outils inspensable pour la l'analyse de contenus de trames et paquets du niveau d'accès au médium (MAC) jusqu'aux couches applicatives, en passant par les protocoles IP, TCP, UDP. Cet outil aide à la compréhension de l'encapsulation de paquets, comme par exemple :guilabel:`HTTPS --> TCP --> IP --> MAC`.


.. _Kali:

Kali
----

Vous pouvez télécharger `Kali Linux sur le site officiel <https://www.kali.org/>`_ oui bien simplement ici. Le répertoire ``current/`` est un lien vers la dernière version disponible.

.. raw:: html

	<div style="text-align: center; margin-bottom: 2em;">
	<iframe width="100%" height="350" src="https://cdimage.kali.org/" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
	</div>

.. tip:: Sous Windows10 on installera au préalable:

	1. GPG pour Windows `Gpg4win <https://gpg4win.org/thanks-for-download.html>`_
	2. Wget pour windows `wget <https://sourceforge.net/projects/gnuwin32/files/wget/1.11.4-1/wget-1.11.4-1-setup.exe/download>`_
	3. puis on modifira la variable d'environnement ``PATH`` pour accéder à la commande ``wget``

	.. code-block:: bash

		set PATH=%PATH%;"C:\Program Files (x86)\GnuWin32\bin"
	4. On ouvrira un nouveau terminal ``cmd`` pour exécuter les commandes suivantes.

.. warning:: Garantir **l'authenticité** et **l'intégrité** du téléchargement d'un fichier sur Internet consite à:

	1. Télécharger et importer localement la clé publique ``archive-key.asc`` du serveur distant:

	.. code-block:: bash

		wget http://archive.kali.org/archive-key.asc
		gpg --import archive-key.asc

	2. Télécharger la signature ``SHA256SUMS.gpg`` qui a permi de signer chaque fichiers ``.iso`` et d'en générer son empreinte (ou hash) avec le protocole `SHA256 <https://www.cnil.fr/fr/securite-chiffrer-garantir-lintegrite-ou-signer>`_. Les empreintes des fichiers ``.iso`` sont accessibles avec la commande ``more SHA256SUMS``.

	.. code-block:: bash

		wget -q http://cdimage.kali.org/current/SHA256SUMS.gpg
		wget -q http://cdimage.kali.org/current/SHA256SUMS

	3. Télécharger l'image ``.iso`` souhaitée, ici ``kali-linux-202x.y-installer-netinst-amd64.iso`` pour une version ``légère ~400Mo``, d'installation à distance ``netinst`` pour processeur 64bits ``amd64``. La progression du téléchargement s'affiche sans l'option ``-q --quiet`` de ``wget``.

	.. code-block:: bash

		wget http://cdimage.kali.org/current/kali-linux-2021.1-installer-netinst-amd64.iso

	4. Vérifier l'empreinte du fichier téléchargé avec celle stockée dans le fichier ``SHA256SUMS`` à l'aide de la signature ``SHA256SUMS.gpg``.

	.. code-block:: bash

		gpg --verify SHA256SUMS.gpg SHA256SUMS


.. _Wireshark:

Wireshark
---------

Vous pouvez télécharger `Wireshark sur le site officiel <https://www.wireshark.org/download.html>`_. Il est multi-plateformes (Windows, Linux, MacOS).

.. _Virtualisation:

Virtualisation
--------------

Les principaux logiciels de virtualisation multi-plateformes (Windows, Linux, MacOS) gratuits sont:
	1. `VirtualBox <https://www.virtualbox.org/wiki/Downloads>`_
	2. `VMWare Workstation Player <https://www.vmware.com/products/workstation-player/workstation-player-evaluation.html>`_




