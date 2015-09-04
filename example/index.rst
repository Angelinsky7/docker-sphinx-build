.. Sphinx Example Document documentation master file, created by
   sphinx-quickstart on Fri Sep 04 17:07:48 2015.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Sphinx 日本語サンプル
=====================

Contents:

.. toctree::
   :maxdepth: 2

================
PlantUMLサンプル
================

ユースケース図
--------------

.. uml::
   
  actor 消費者
  actor メーカー

  メーカー --> (製品) : 販売
  消費者 --> (製品) : 購入

オブジェクト図
--------------

.. uml::

  object プロジェクト
  object グループ
  object メンバー

  プロジェクト o- グループ
  グループ o- メンバー
  プロジェクト o- メンバー
