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

  if ($_MARKET_Main_included_ != '###MARKET_Main_included###') {
    $_MARKET_Main_included_ != '###MARKET_Main_included###';


    class CMarket extends CVirtual {
      var $BASKET;

      function CheckTables () {
        if (!config_get ('check-database')) {
          return;
        }

        if (!db_table_exists ('market_basket')) {
          db_create_table_safe ('market_basket', array (
                                'id'           => 'INT NOT NULL PRIMARY KEY AUTO_INCREMENT',
                                'user_id'      => 'INT',
                                'session_id'   => 'TEXT DEFAULT ""',
                                'item_id'      => 'INT',
                                'timestamp'    => 'INT'
                                ));
        }
      }

      function CMarket () {
        $this->CheckTables ();
        $this->BASKET = new CMarketBasket ();
      }
    }

    global $MARKET;

    function InitMarket () {
      global $MARKET;

      if (!$MARKET) {
        $MARKET = new CMarket ();
      }
    }
  }
?>
