============
What's this?
============

Sphinx documents builder on docker container.

============
Requirements
============

docker 1.7+

==========
How to use
==========

*************************
Create new sphinx project
*************************

::

  sphinx-quickstart ./sphinx-docs

************************
Or get from repositories
************************

::

  git clone your_repository_path sphinx-docs

****************
Run docker image
****************

::

  docker run -it --rm \
    -v `pwd`/sphinx-docs:/sphinx-docs \
    -e SPHINX_DOC_ROOT=/sphinx-docs \
    -e SPHINX_BUILDER=singlehtml \
    sonodar/sphinx-build

this example, output to `./sphinx-docs/_build`

===================
Docker environments
===================

SPHINX_DOC_ROOT (optional:default=/sphinx)

  Sphinx project path in container.

  Use docker volumes.

SPHINX_BUILDER (optional:default=html)

  Sphinx make command argument.

REQUIREMENTS_FILE (optional)

  `pip install -r $REQUIREMENTS_FILE` on pre-build.

  Must be included SPHINX_DOC_ROOT.
