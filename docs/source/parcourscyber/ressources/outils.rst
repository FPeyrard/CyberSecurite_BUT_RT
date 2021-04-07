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

Vous pouvez télécharger `Kali Linux sur le site officiel <https://www.kali.org/>`_ oui bien simplement ici.

.. warning:: Garantir l'authenticité et l'intégrité du téléchargement d'un fichier sur Internet consite à

	1. Télégerager la clé publique du serveur distant:
	.. code-block:: bash
		wget -q -O - https://archive.kali.org/archive-key.asc | gpg --import
		


.. raw:: html

	<div style="text-align: center; margin-bottom: 2em;">
	<iframe width="100%" height="350" src="https://cdimage.kali.org/" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
	</div>

.. _Wireshark:

Wireshark
---------

Vous pouvez télécharger `Wireshark sur le site officiel <https://www.wireshark.org/download.html>`_. Il est multi-plateformes (Windows, Linux, MacOS).


