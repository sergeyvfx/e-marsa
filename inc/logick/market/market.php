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

      function GetVendorsJSON ($catid) {
        $vendors = $this->GetVendors ($catid);
        $result = '';

        for ($i = 0, $n = count ($vendors); $i < $n; ++$i) {
          if ($result != '') {
            $result .= ', ';
          }
          $result .= '"' . addslashes ($vendors[$i]) . '"';
        }

        return "[$result]";
      }

      function GetVendors ($catid) {
        $pIFACE = content_lookup (config_get ('document-root').'/price')->GetData ();
        $catdata = $pIFACE->GetCatalogueData (1, $catid);
        $result = array ();
        $cache = array ();

        for ($j = 0, $m = count ($catdata); $j < $m; ++$j) {
          $data = $pIFACE->GetCatalogueData (2, $catdata[$j]['uid']);
          for ($i = 0, $n = count ($data); $i < $n; ++$i) {
            $it = $data[$i];

            if ($cache[strtolower ($it['vendor'])]) {
              continue;
            }

            $cache[strtolower ($it['vendor'])] = true;


            $result[] = $it['vendor'];
          }
        }

        return $result;
      }

      function SearchData ($catid, $vendor, $string) {
        $pIFACE = content_lookup (config_get ('document-root').'/price')->GetData ();

        $words = explode (' ', preg_replace ('/\s+/', ' ', strtolower ($string)));

        $result = array ();
        if (!isNumber ($catid)) {
          return $result;
        }

        $subcats = $pIFACE->GetCatalogueData (1, $catid);
        $vendor = strtolower (trim ($vendor));

        for ($j = 0, $m = count ($subcats); $j < $m; ++$j) {
          $data = $pIFACE->GetCatalogueData (2, $subcats[$j]['uid']);
          for ($i = 0, $n = count ($data); $i < $n; ++$i) {
            $it = $data[$i];

            if ($vendor != '' && strtolower ($it['vendor']) != $vendor) {
              continue;
            }

            $found = true;
            $name = strtolower ($it['name']);
            for ($k = 0, $l = count ($words); $k < $l; ++$k) {
              if (trim ($words[$k]) == '') {
                continue;
              }

              if (strpos ($name, $words[$k]) == false) {
                $found = false;
                break;
              }
            }

            if ($found) {
              $result[] = $it;
            }
          }
        }

        return $result;
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
