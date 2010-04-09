<?php
  /**
   * Gate - Wiki engine and web-interface for WebTester Server
   *
   * Copyright (c) 2008-2009 Sergey I. Sharybin <g.ulairi@gmail.com>
   *
   * This program can be distributed under the terms of the GNU GPL.
   * See the file COPYING.
   */

  global $IFACE, $MARKET;

  if ($IFACE != "SPAWNING NEW IFACE" || $_GET['IFACE'] != '') {
    print ('HACKERS?');
    die;
  }

  if ($_MARKET_ipc_basket_add_included_ != '###WT_IPC_BasketAdd_Inclided###') {
    $_MARKET_ipc_basket_add_included_ = '###WT_IPC_BasketAdd_Inclided###';

    function MARKET_BasketAdd () {
      global $id, $MARKET;
      InitMarket ();

      if (isNumber ($id) && $MARKET->BASKET->AddItemById ($id)) {
        print ('+OK');
      } else {
        print ('-ERR');
      }
    }

    ipc_register_function ('basket_add', MARKET_BasketAdd);
  }
?>
