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

  if ($_MARKET_Basket_included_ != '###MARKET_Basket_included###') {
    $_MARKET_Basket_included_ != '###MARKET_Basket_included###';

    class CMarketBasket extends CVirtual {
      var $items;
      var $priceIFACE;

      function CMarketBasket () {
        if (user_id () == -1) {
          session_start ();
        }

        $this->items = array ();
        $this->removeUnwanted ();
        $this->priceIFACE = content_lookup (config_get ('document-root').'/price')->GetData ();
        $this->itemsFromBase ();
      }

      function removeUnwanted () {
        $ses_id = session_id ();
        $timestamp = time () - config_get ('basket-timelife');
        db_delete ('market_basket', "`user_id` = -1 AND `session_id` <> \"$ses_id\" AND `timestamp` <= $timestamp");
      }

      function itemsFromBase () {
        $uid = user_id ();
        $ses_id = ($uid < 0) ? (session_id ()) : '';

        $q = db_select ('market_basket', array('item_id'), "`user_id`=$uid AND `session_id`=\"$ses_id\"");
        while ($r = mysql_fetch_array ($q)) {
          $item = $this->priceIFACE->GetCatalogueItem (2, $r['item_id']);

          if ($item && $item['id'] > 0) {
            $this->items[] = $item;
          }
        }
      }

      function itemToBase ($item) {
        $uid = user_id ();
        $ses_id = ($uid < 0) ? (session_id ()) : '';

        db_insert ('market_basket', array ('user_id'    => $uid,
                                           'session_id' => db_string ($ses_id),
                                           'timestamp'  => time (),
                                           'item_id'    => $item['id']));
      }

      function itemDropFromBase ($itemID) {
        $uid = user_id ();
        $ses_id = ($uid < 0) ? (session_id ()) : '';

        db_delete ('market_basket', "`user_id` = $uid AND `session_id` = \"$ses_id\" AND `item_id` = $itemID");
      }

      function getItems ()  {
        return $this->items;
      }

      function addItem ($item) {
        if ($this->getItemById ($item['id'])) {
          return false;
        }

        $this->items[] = $item;

        $this->itemToBase ($item);

        return true;
      }

      function addItemById ($itemID) {
        $item = $this->priceIFACE->GetCatalogueItem (2, $itemID);
        return $this->addItem ($item);
      }

      function Drop ($item) {
        return $this->DropById ($item['id']);
      }

      function DropById ($itemID) {
        $items = array ();

        for ($i = 0; $i < count ($this->items); $i++) {
          if ($this->items[$i]['id'] != $itemID) {
            $items[] = $this->items[$i];
          }
        }

        $this->items = $items;

        $this->itemDropFromBase ($itemID);
      }

      function GetItemById ($itemID) {
        for ($i = 0; $i < count ($this->items); $i++) {
          if ($this->items[$i]['id'] == $itemID) {
            return $this->items[$i];
          }
        }

        return false;
      }

      function Send () {
        $n = count ($this->items);

        if ($n == 0) {
          return;
        }

        $items = $this->items;
        for ($i = 0; $i < $n; ++$i) {
          /*
           * TODO: Maybe we should send items to admin or smth like this?
           */

          $this->Drop ($items[$i]);
        }
      }
    }

  }
?>
