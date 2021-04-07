.. _outils:

.. meta::
   :description lang=fr: BUT R&T, Ressource CyberSécurité à BAC+3, Outils

Outils
======

.. admonition:: Outils de travail

	Parmi les outils de travail, on utilisera très largement un système d'exploitation Linux basé sur les distributions `Debian <https://www.debian.org/>`_, `Ubuntu <https://ubuntu.com/>`_, `Centos <https://www.centos.org/>`_, pour mettre en pratique les nombreux outils et techniques de CyberSécurité.
	
	La distribution Linux la plus avancée à ce jour dans ce domaine est ``Kali`` basée sur une distribution Debian.
		* `Kali`_

	Le *couteau suisse* du domaine des réseaux informatiques est ``Wireshark``. C'est un outils inspensable pour la l'analyse de contenus de trames et paquets du niveau d'accès au médium (MAC) jusqu'aux couches applicatives, en passant par les protocoles IP, TCP, UDP. Cet outil aide à la compréhension de l'encapsulation de paquets, comme par exemple :guilabel:`HTTPS --> TCP --> IP --> MAC`.
		* `Wireshark`_

.. _Kali:

Kali
----

Vous pouvez télécharger `Kali Linux sur le site officiel <https://www.kali.org/>`_ oui bien simplement ici. Le répertoire `current/` est un lien vers la dernière version disponible.

.. raw:: html

	<div style="text-align: center; margin-bottom: 2em;">
	<iframe width="100%" height="350" src="https://cdimage.kali.org/" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
	</div>

.. warning:: Garantir l'authenticité et l'intégrité du téléchargement d'un fichier sur Internet consite à

	1. Télécharger et installer localement la clé publique `archive-key.asc` du serveur distant:

	.. code-block:: bash

		wget -q -O - https://archive.kali.org/archive-key.asc | gpg --import

	2. Télécharger la signature `SHA256SUMS.gpg` qui a permi de signer chaque fichiers `.iso` et d'en générer son empreinte (ou hash) avec le protocole `SHA256 <https://www.cnil.fr/fr/securite-chiffrer-garantir-lintegrite-ou-signer>`. Les empreintes des fichiers `.iso` sont accessibles avec la commande `cat SHA256SUMS`.

	.. code-block:: bash

		wget -q https://cdimage.kali.org/current/SHA256SUMS{.gpg,}

	3. Télécharger l'image `.iso` souhaitée, ici `kali-linux-202x.y-installer-netinst-amd64.iso` pour une version `légère ~400Mo`, d'installation à distance `netinst` pour processeur 64bits `amd64`. La progression du téléchargement s'affiche sans l'option `-q --quiet` de `wget`.

	.. code-block:: bash

		wget https://cdimage.kali.org/current/kali-linux-2021.1-installer-netinst-amd64.iso


.. _Wireshark:

Wireshark
---------

Vous pouvez télécharger `Wireshark sur le site officiel <https://www.wireshark.org/download.html>`_. Il est multi-plateformes (Windows, Linux, MacOS).


