<?php
  /**
   * Gate - Wiki engine and web-interface for WebTester Server
   *
   * This program can be distributed under the terms of the GNU GPL.
   * See the file COPYING.
   */

  global $IFACE;

  if ($IFACE != "SPAWNING NEW IFACE" || $_GET['IFACE'] != '') {
    print ('HACKERS?');
    die;
  }

  if ($_MARKET_included_ != '###MARKET_included###') {
    $_MARJET_included_ != '###MARKET_included###';

    include $DOCUMENT_ROOT.'/inc/include.php';
    include $DOCUMENT_ROOT.'/inc/logick/market/config.php';
    include $DOCUMENT_ROOT.'/inc/logick/market/basket.php';
    include $DOCUMENT_ROOT.'/inc/logick/market/market.php';
    include $DOCUMENT_ROOT.'/inc/logick/market/ipc.php';
  }
?>
