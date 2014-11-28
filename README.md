Bitstorm: A lightweight Bittorrent tracker
========

Lightweight bittorrent tracker contained in a single PHP file

BitStorm [was originally written](https://web.archive.org/web/20111101105301/https://ck3r.org/tracker/ui.php) by [Peter Caprioli](https://caprioli.se/) as a lightweight bittorrent tracker contained in a single PHP file. As it used only a single flat file as a database, it had difficulty scaling past ~10 announces per second.

Peter created a fork of his project to add MySQL support, allowing it to scale. In 2011, [Josh Duff](http://joshduff.com/) made [some changes](https://code.google.com/p/bitstorm/) to allow more efficient use of the database, and further scaling.

BitStorm: a very light bittorrent tracker that anyone can install!
