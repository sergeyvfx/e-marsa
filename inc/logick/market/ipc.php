<?php
  /**
   * Gate - Wiki engine and web-interface for WebTester Server
   *
   * Copyright (c) 2008-2009 Sergey I. Sharybin <g.ulairi@gmail.com>
   *
   * This program can be distributed under the terms of the GNU GPL.
   * See the file COPYING.
   */

  global $IFACE;

  if ($IFACE != "SPAWNING NEW IFACE" || $_GET['IFACE'] != '') {
    print ('HACKERS?');
    die;
  }

  if ($_MARKET_ipc_included_ != '###MARKET_IPC_Inclided###') {
    $_MARKET_ipc_included_ = '###MARKET_IPC_Inclided###';

    $dirs = array (
        '/inc/logick/market/ipc'
      );

    linkage ($dirs);
  }
?>
